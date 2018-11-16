unit Statuses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, UniProvider,
  PostgreSQLUniProvider, Vcl.CheckLst, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  VCLTee.TeCanvas, Vcl.Buttons, Generics.Collections, Generics.Defaults;

type
  TStatusesForm = class(TForm)
    statusesUDS: TUniDataSource;
    UniQuery1: TUniQuery;
    codesUQ: TUniQuery;
    codeUDS: TUniDataSource;
    StatusesList: TListBox;
    StatusEditBox: TEdit;
    codesList: TComboFlat;
    btnDeleteStatus: TSpeedButton;
    btnUpdate: TSpeedButton;
    btnAddStatus: TSpeedButton;
    btnSaveStatus: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure StatusesListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure StatusesListClick(Sender: TObject);
    procedure btnDeleteStatusClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnAddStatusClick(Sender: TObject);
    procedure btnSaveStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    status2Dictionary: TDictionary<Integer, Integer>;
    codesDictionary: TDictionary<Integer, Integer>;
    statusListIndexAndIDDictionary: TDictionary<Integer, Integer>;
    function findListIndexByCodeID(a: Integer): Integer;
    function findStatusIDByListIndex(a: Integer): Integer;
    function findCodeIndexByCode(a: Integer): Integer;
    procedure initAll();

  end;

var
  StatusesForm: TStatusesForm;

implementation
uses UMain, Dictionary;

{$R *.dfm}

// Удаляем статус
procedure TStatusesForm.btnAddStatusClick(Sender: TObject);
var
value: String;
UniQuery4Delete: TUniQuery;

begin

value := InputBox('Добавление нового статуса', 'Введите название нового статуса, ' + #13#10 + 'выбрать код для него можно будет позже ' + #13#10 + 'через редактирование',  '');


try
    UniQuery4Delete := TUniQuery.Create(nil);
    UniQuery4Delete.Connection := Form1.UniConnection1;
    UniQuery4Delete.SQL.Text :=  SQL_INSERT_NEW_STATUS;
    UniQuery4Delete.ParamByName('userid').AsString := Form1.UserID;
    UniQuery4Delete.ParamByName('status').AsString := value;
    UniQuery4Delete.ExecSQL;

  except
    ShowMessage('Ошибка Базы данных!');
    UniQuery4Delete.Free;
  end;
 initAll();

end;

procedure TStatusesForm.btnDeleteStatusClick(Sender: TObject);
var UniQuery4Delete: TUniQuery;
begin


// Сначала надо проверить если заказы с таким статусом, иначе не удалится

try
    UniQuery4Delete := TUniQuery.Create(nil);
    UniQuery4Delete.Connection := Form1.UniConnection1;
    UniQuery4Delete.SQL.Text :=  SQL_SELECT_ORDERS_WITH_STATUS_TO_AVOID_SQL_ERROR;
    UniQuery4Delete.ParamByName('uid').value := Form1.UserID;
    UniQuery4Delete.ParamByName('statusid').value := findStatusIDByListIndex(StatusesList.ItemIndex);
    UniQuery4Delete.ExecSQL;

  except
    ShowMessage('Ошибка Базы данных!');
    UniQuery4Delete.Free;
  end;

  if (UniQuery4Delete.RecordCount>0) then
  begin
    MessageDlg('У данного статуса есть связанные заказы. Удалите сначала заказы, только после этого можно будет удалить статус!', mtWarning, [mbOk], 0);
    Exit;
  end
  else
  begin
    // Если все ок - удаляем
    try
      UniQuery4Delete := TUniQuery.Create(nil);
      UniQuery4Delete.Connection := Form1.UniConnection1;
      UniQuery4Delete.SQL.Text :=  SQL_DELETE_STATUS_BY_ID;
      UniQuery4Delete.ParamByName('id').value := findStatusIDByListIndex(StatusesList.ItemIndex);
      UniQuery4Delete.ExecSQL;
      initAll();

  except
    ShowMessage('Ошибка Базы данных!');
    UniQuery4Delete.Free;
  end;
  
  end;
end;

procedure TStatusesForm.btnSaveStatusClick(Sender: TObject);
var UniQuery4Edit: TUniQuery;
Selected : String;
begin



// Меняем текстовое описание статуса

try
    UniQuery4Edit := TUniQuery.Create(nil);
    UniQuery4Edit.Connection := Form1.UniConnection1;
    UniQuery4Edit.SQL.Text := SQL_UPDATE_ORDER_STATUS;
    UniQuery4Edit.ParamByName('id').value := findStatusIDByListIndex(StatusesList.ItemIndex);
    UniQuery4Edit.ParamByName('status').value := StatusEditBox.Text;
    UniQuery4Edit.ExecSQL;

  except
    ShowMessage('Ошибка Базы данных!');
    UniQuery4Edit.Free;
  end;

UniQuery4Edit.Close;

  // Меняем КОД

Selected := codesList.Items.Strings[codesList.ItemIndex];
  if ((Selected <> '') and (findCodeIndexByCode(codesList.ItemIndex)<>-1)) then
  begin
    try
      UniQuery4Edit := TUniQuery.Create(nil);
      UniQuery4Edit.Connection := Form1.UniConnection1;
      UniQuery4Edit.SQL.Text := SQL_FUNCTION_UPDATE_ORDER_CODE;
      UniQuery4Edit.ParamByName('code').value := findCodeIndexByCode(codesList.ItemIndex);
      UniQuery4Edit.ParamByName('id').value := findStatusIDByListIndex(StatusesList.ItemIndex);
      UniQuery4Edit.ExecSQL;
    
    except
      ShowMessage('Ошибка Базы данных!');
      UniQuery4Edit.Free;
    end;
  end;
  

 initAll();

end;

procedure TStatusesForm.btnUpdateClick(Sender: TObject);
begin
 initAll();
end;

function TStatusesForm.findCodeIndexByCode(a: Integer): Integer;
var
  key: Integer;
begin

  if codesDictionary.ContainsValue(a) then
  begin

    for key in codesDictionary.Keys do
    begin
      if (codesDictionary[key] = a) then
      begin
        findCodeIndexByCode := key;
        Break;
      end;

    end;
  end
  else
  begin
    findCodeIndexByCode := -1; // не нашли значение
  end;

end;

function TStatusesForm.findListIndexByCodeID(a: Integer): Integer;
begin
if (status2Dictionary.ContainsKey(a)) then
  begin

    findListIndexByCodeID := status2Dictionary[a];   // возвращаем код

  end
  else
  begin
    findListIndexByCodeID := -1; // не нашли ключ
  end;
end;

function TStatusesForm.findStatusIDByListIndex(a: Integer): Integer;
begin

if (statusListIndexAndIDDictionary.ContainsKey(a)) then
  begin

    findStatusIDByListIndex := statusListIndexAndIDDictionary[a];   // возвращаем код

  end
  else
  begin
    findStatusIDByListIndex := -1; // не нашли ключ
  end;


end;

procedure TStatusesForm.FormCreate(Sender: TObject);
begin
   initAll();
end;

procedure TStatusesForm.initAll;

var StatusesGridUniQuery, CodesUniQuery: TUniQuery;
DS : TUniDataSource;
codeDS: TDatasource;
i: Integer;

begin

   UniQuery1.ExecSQL;

// Запрашиваем все статусы
  try
    StatusesGridUniQuery := TUniQuery.Create(nil);
    DS := TUniDataSource.Create(nil);
    StatusesGridUniQuery.Connection := Form1.UniConnection1;
    StatusesGridUniQuery.SQL.Text :=  Dictionary.SQL_SELECT_ALL_STATUSES_4_USER;
    StatusesGridUniQuery.ParamByName('uid').AsString := Form1.UserID;
    StatusesGridUniQuery.ExecSQL;
    DS.DataSet := StatusesGridUniQuery;
  except
    StatusesGridUniQuery.Free;
  end;
 // Инициализируем хэшмапы

status2Dictionary := TDictionary<Integer, Integer>.Create;
codesDictionary := TDictionary<Integer, Integer>.Create;
statusListIndexAndIDDictionary := TDictionary<Integer, Integer>.Create;

     // Чистим список
if (StatusesList.Items.Count>0) then
begin
   StatusesList.Clear;
end;

if (codesList.Items.Count>0) then
begin
   codesList.Clear;
end;


StatusEditBox.Text:='Введите новый статус';
btnSaveStatus.Enabled:=false;
btnDeleteStatus.Enabled:=false;
   
     

i:=0;
  // Заполняем список
StatusesGridUniQuery.First;

  while (not StatusesGridUniQuery.Eof) do
  begin

    StatusesList.Items.AddObject(StatusesGridUniQuery.FieldByName('status').AsString, TObject(StatusesGridUniQuery.FieldByName('id').AsInteger));
    status2Dictionary.Add(i, StatusesGridUniQuery.FieldByName('Code').AsInteger);
    statusListIndexAndIDDictionary.Add(i, StatusesGridUniQuery.FieldByName('id').AsInteger);
    i:=i+1;
    StatusesGridUniQuery.Next;

  end;

// Окрашиваем фон списка
  StatusesList.Color := RGB(199, 234, 240);

 // Запрашиваем все "неизменяемые коды воронки"
  try
    CodesUniQuery := TUniQuery.Create(nil);
    codeDS := TUniDataSource.Create(nil);
    CodesUniQuery.Connection := Form1.UniConnection1;
    CodesUniQuery.SQL.Text :=  Dictionary.SQL_SELECT_ALL_CODES;
    CodesUniQuery.ExecSQL;
    codeDS.DataSet := StatusesGridUniQuery;
  except
    CodesUniQuery.Free;
  end;


    // Заполняем список кодов
StatusesGridUniQuery.First;
i:=0;

  while (not CodesUniQuery.Eof) do
  begin

    codesList.Items.AddObject(CodesUniQuery.FieldByName('Status').AsString, TObject(CodesUniQuery.FieldByName('id').AsInteger));
    codesDictionary.Add(i, CodesUniQuery.FieldByName('id').AsInteger);
    i:=i+1;
    CodesUniQuery.Next;

  end;


end;

procedure TStatusesForm.StatusesListClick(Sender: TObject);
begin

if (StatusesList.ItemIndex>-1) then
begin
    btnSaveStatus.Enabled := true;
    btnDeleteStatus.Enabled := true;
    StatusEditBox.Text :=  StatusesList.Items[StatusesList.ItemIndex];
    codesList.ItemIndex :=findCodeIndexByCode(findListIndexByCodeID(StatusesList.ItemIndex));
end
else
begin
    btnSaveStatus.Enabled := false;
    btnDeleteStatus.Enabled := false;

end;
end;

procedure TStatusesForm.StatusesListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
  begin

  with StatusesList.Canvas do begin
    if (Index + 1) mod 2 = 0 then begin
      //Если прорисовываемая строка чётная.
      Brush.Color := RGB(199, 234, 240);
      FillRect(Rect);
      Font.Color := RGB(0, 0, 0);
      TextOut(Rect.Left, Rect.Top, StatusesList.Items[Index]);
    end else begin
      //Если прорисовываемая строка нечётная.
      Brush.Color := RGB(128, 128, 128);
      FillRect(Rect);
      Font.Color := RGB(255, 255, 255);
      TextOut(Rect.Left, Rect.Top, StatusesList.Items[Index]);
    end;
  end;


end;

end.
