unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, DBAccess, Uni, MemDS, UniProvider, MySQLUniProvider,
  Vcl.Grids, Vcl.DBGrids, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Vcl.ComCtrls, UniDacVcl, IniFiles, Data.Bind.DBScope, VclTee.TeeGDIPlus,
  VclTee.TeEngine, VclTee.Series, VclTee.TeeProcs, VclTee.Chart,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, DateUtils, Vcl.OleCtrls, SHDocVw, activex,
  mshtml, ComObj,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, PostgreSQLUniProvider,
  Generics.Collections, Generics.Defaults,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, unit3;

type

  TForm1 = class(TForm)
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    BindingsList1: TBindingsList;
    MainTab: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    UniQuery3: TUniQuery;
    UniDataSource3: TUniDataSource;
    DBEdit6: TDBEdit;
    TabSheet3: TTabSheet;
    UniConnection1: TUniConnection;
    UniQuery4: TUniQuery;
    PasswordField: TEdit;
    LoginField: TEdit;
    UniDataSource4: TUniDataSource;
    Button5: TButton;
    StatusBar1: TStatusBar;
    BindSourceDB1: TBindSourceDB;
    Button1: TButton;
    Button2: TButton;
    LastButton: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    SaveBtn: TButton;
    UniQuery5: TUniQuery;
    eName: TEdit;
    ePhone: TEdit;
    eEmail: TEdit;
    eOrderedDate: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    editBtn: TButton;
    deleteBtn: TButton;
    Button6: TButton;
    TestDate: TDateTimePicker;
    OrderTab: TTabSheet;
    birthdayunknowChkBx: TCheckBox;
    OrderName: TEdit;
    Edit4: TEdit;
    Customer: TComboBox;
    Jobstype: TComboBox;
    RecieveDate: TDateTimePicker;
    OrderDate: TDateTimePicker;
    OrderCost: TEdit;
    orderstatus: TComboBox;
    UniQuery6: TUniQuery;
    UniDataSource5: TUniDataSource;
    UniQuery7: TUniQuery;
    UniQuery8: TUniQuery;
    UniDataSource6: TUniDataSource;
    UniQuery9: TUniQuery;
    UniDataSource7: TUniDataSource;
    DBEdit1: TDBEdit;
    UserTab: TTabSheet;
    ReportTab: TTabSheet;
    SenderTab: TTabSheet;
    Button8: TButton;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    rptlblYearStatistic: TLabel;
    UniQuery10: TUniQuery;
    UniDataSource8: TUniDataSource;
    StringGrid1: TStringGrid;
    ordExpiredLabel: TLabel;
    clearordExpiredBtn: TButton;
    Bevel1: TBevel;
    clntExpiredlbl: TLabel;
    Button7: TButton;
    ordandclntNotEqlbl: TLabel;
    Chart1: TChart;
    ordstatusexplbl: TLabel;
    clntstatusexplbl: TLabel;
    Button9: TButton;
    Button10: TButton;
    Series1: TBarSeries;
    Button11: TButton;
    Button12: TButton;
    StringGrid2: TStringGrid;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    StringGrid3: TStringGrid;
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    UniQuery11: TUniQuery;
    userinfoNamelbl: TLabel;
    userinfoLoginlbl: TLabel;
    userinfoPasswordlbl: TLabel;
    userinfoEmaillbl: TLabel;
    userinfoRegDatelbl: TLabel;
    ordIDlbl: TLabel;
    ordNamelbl: TLabel;
    ordClientlbl: TLabel;
    ordJobsTypelbl: TLabel;
    ordRecievelbl: TLabel;
    ordDatelbl: TLabel;
    ordCostlbl: TLabel;
    ordStatusName: TLabel;
    clntNamelbl: TLabel;
    clntEmaillbl: TLabel;
    clntPhonelbl: TLabel;
    clntDateTimeupdatelbl: TLabel;
    clntBirthdaylbl: TLabel;
    clntStatuslbl: TLabel;
    clntFromlbl: TLabel;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    Button13: TButton;
    UniConnection2: TUniConnection;
    UniConnection3: TUniConnection;
    orderType: TEdit;
    OrderSubType: TEdit;
    OrderPlan: TEdit;

    procedure Activate();
    procedure FormActivate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure LastButtonClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure deleteBtnClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure OrderTabShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ReportTabShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure clearordExpiredBtnClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SenderTabShow(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure UserTabShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DeleteItem(Node: TTreeNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


  private
    { Private declarations }
    procedure act();
    procedure ReportsYearclientsStat();
    procedure ReportsMonthclientsStat();
    procedure SummaryReport();
    procedure EnableOffAllButtons();
    procedure EnableOffRepButtons();
    procedure EnableOnOrdButtons();
    procedure FirstOrder();
    procedure FirstClient();


  public
    { Public declarations }
    loginbefore: Boolean;
    loginglobal: String;
    passwordglobal: String;
    UserID: string;
    CustomerArr: array of Integer;
    FIsStartPage: Boolean;
    clientsRecCount: Integer;
    ordersRecCount: Integer;
    FBg: TBitmap;
    function findJobByID(a: Integer): Integer;
    function findIDByJob(b: Integer): Integer;
    function findStatusByID(b: Integer): Integer;
    function findOrderTupeByID(i: Integer): String;
    function findOrderSubTypeByID(i: Integer): String;
    function findOrderPlanByID(i: Integer): String;
    procedure getOptions4Plan(plan: Integer);
    procedure noOptions();
    procedure clearOptionList();
    procedure loadOrderTypeTree();


  var
    root: TTreeNode;
// currentTab: Integer;
  end;
type
 TFruit = class
  public
    name   : string;
    orderType, orderSubType, Plan   : integer;
    Constructor Create; overload;
    Constructor Create(orderType, orderSubType, Plan : integer); overload;
  end;




var
  Form1: TForm1;
  IniFile: TIniFile;
  JobsDictionary: TDictionary<Integer, Integer>;
  statusDictionary: TDictionary<Integer, Integer>;

implementation

uses
  ShellApi;

{$R *.dfm}

function arraysearch(arr: array of Integer; value: Integer;
  arraylenght: Integer): Integer;
var
  found: Boolean; // TRUE — совпадение образца с элементом массива
  i: Integer; // индекс элемента массива

begin

  // поиск
  found := FALSE; // пусть нужного эл-та в массиве нет
  i := 0;

  // ShowMessage('я получила - ' + inttostr(value));
  repeat
    if arr[i] = value then
    begin
      result := i;
      // ShowMessage('я отдала значение = ' + inttostr(result));
      found := true;
    end
    else
    begin
      i := i + 1;
    end;

  until (i > arraylenght) or (found = true);

  if (i = arraylenght) and (found = FALSE) then
    result := -1;

end;

function yearending(value: Integer): string;
var
  s: string;
  l: string;
  li: Integer;
begin

  s := inttostr(value);

  l := s[Length(s)];
  // ShowMessage(l);
  li := StrToInt(l);

  case li of
    0:
      result := 'лет';
    1:
      result := 'год';
    2:
      result := 'года';
    3:
      result := 'года';
    4:
      result := 'года';
    5:
      result := 'лет';
    6:
      result := 'лет';
    7:
      result := 'лет';
    8:
      result := 'лет';
    9:
      result := 'лет';

  end;

end;

function numbertomonth(value: Integer): string;
begin

  case value of
    1:
      result := 'Январь';
    2:
      result := 'Февраль';
    3:
      result := 'Март';
    4:
      result := 'Апрель';
    5:
      result := 'Май';
    6:
      result := 'Июнь';
    7:
      result := 'Июль';
    8:
      result := 'Август';
    9:
      result := 'Сентябрь';
    10:
      result := 'Октябрь';
    11:
      result := 'Ноябрь';
    12:
      result := 'Декабрь';

  end;

end;

procedure TForm1.FirstClient();
var
  Idx: Integer;
  y: Integer;

  value: Integer;

begin

  if (clientsRecCount = 0) then
  begin

    DBEdit1.Enabled := true;
    Button9.Enabled := FALSE;
    Button11.Enabled := FALSE;
    Button10.Enabled := FALSE;
    Button12.Enabled := FALSE;
    Button4.Enabled := FALSE;
    Button2.Enabled := FALSE;
    Button3.Enabled := true;
    SaveBtn.Enabled := true;
    Edit1.Enabled := FALSE;
    Edit2.Enabled := FALSE;
    Button6.Enabled := true;
    editBtn.Enabled := FALSE;
    deleteBtn.Enabled := FALSE;
    Button1.Enabled := FALSE;
    LastButton.Enabled := FALSE;

    // TabSheet2.TabVisible := false;
    OrderTab.TabVisible := FALSE;
    SenderTab.TabVisible := FALSE;
    ReportTab.TabVisible := FALSE;
    UserTab.TabVisible := FALSE;

  end
  else
  begin

    UniDataSource1.DataSet.First;

    // if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
    // birthdayunknowChkBx.Checked := true
    // else
    // birthdayunknowChkBx.Checked := FALSE;

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' +
      inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    // eOrderedDate.Text := UniDataSource1.DataSet.FieldByName('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    // ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status').AsInteger) - 1;
    ComboBox2.ItemIndex :=
      (UniDataSource1.DataSet.FieldByName('whereclientfrom').AsInteger) - 1;

    Idx := ComboBox1.ItemIndex;
    value := Integer(ComboBox1.Items.Objects[Idx]);
    EnableOnOrdButtons();
  end;
end;

procedure TForm1.FirstOrder();
var
  ListIndex: Integer;
  CustomerID: Integer;

begin

  UniDataSource5.DataSet.First;

  OrderName.Text := UniDataSource5.DataSet.FieldByName
    ('order_short_name').AsString;
  OrderCost.Text := UniDataSource5.DataSet.FieldByName('order_cost').AsString;
  orderstatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_status')
    .AsInteger) - 1;

  ListIndex := 0;
  CustomerID := UniDataSource5.DataSet.FieldByName('client').AsInteger;
  ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

  if (ListIndex = -1) then
    Customer.Text := ''
  else
    Customer.ItemIndex := ListIndex;

  Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type')
    .AsInteger) - 1;
  Edit4.Text := UniDataSource5.DataSet.FieldByName('client').AsString;

  if (UniDataSource5.DataSet.FieldByName('order_create_date').AsString) = ''
  then
    RecieveDate.Date := Date
  else
    RecieveDate.Date := StrToDateTime
      (UniDataSource5.DataSet.FieldByName('order_create_date').AsString);

  if (UniDataSource5.DataSet.FieldByName('order_deadline').AsString) = '' then
    OrderDate.Date := Date
  else
    OrderDate.Date := StrToDateTime(UniDataSource5.DataSet.FieldByName
      ('order_deadline').AsString);

  StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
    inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

end;

procedure TForm1.EnableOffAllButtons();

begin

  DBEdit1.Enabled := FALSE;
  Button9.Enabled := FALSE;
  Button11.Enabled := FALSE;
  Button10.Enabled := FALSE;
  Button12.Enabled := FALSE;
  Button4.Enabled := FALSE;
  Button2.Enabled := FALSE;
  Button3.Enabled := FALSE;
  SaveBtn.Enabled := FALSE;
  Edit1.Enabled := FALSE;
  Edit2.Enabled := FALSE;
  Button6.Enabled := FALSE;
  editBtn.Enabled := FALSE;
  deleteBtn.Enabled := FALSE;
  Button1.Enabled := FALSE;
  LastButton.Enabled := FALSE;

end;

procedure TForm1.EnableOnOrdButtons();

begin

  DBEdit1.Enabled := true;
  Button9.Enabled := FALSE;
  Button11.Enabled := FALSE;
  Button10.Enabled := FALSE;
  Button12.Enabled := FALSE;
  Button4.Enabled := true;
  Button2.Enabled := true;
  Button3.Enabled := true;
  SaveBtn.Enabled := true;
  Edit1.Enabled := true;
  Edit2.Enabled := true;
  Button6.Enabled := true;
  editBtn.Enabled := true;
  deleteBtn.Enabled := true;
  Button1.Enabled := true;
  LastButton.Enabled := true;

  // OrderTab.TabVisible  := true;
  // SenderTab.TabVisible  := true;
  // ReportTab.TabVisible  := true;
  // UserTab.TabVisible  := true;

end;

function TForm1.findIDByJob(b: Integer): Integer;
var
  key: Integer;
begin

  if JobsDictionary.ContainsValue(b) then
  begin

    for key in JobsDictionary.Keys do
    begin
      if (JobsDictionary[key] = b) then
      begin
        findIDByJob := key;
        Break;
      end;

    end;
  end
  else
  begin
    findIDByJob := -1; // не нашли значение
  end;
end;

function TForm1.findJobByID(a: Integer): Integer;
begin

  if (JobsDictionary.ContainsKey(a)) then
  begin

    findJobByID := JobsDictionary[a];

  end
  else
  begin
    findJobByID := -1; // не нашли ключ
  end;
end;

function TForm1.findOrderPlanByID(i: Integer): String;
// Ищем план по id
begin

UniQuery10.Close;
Form1.UniQuery10.SQL.Text :='SELECT * FROM plans WHERE id = :id';
Form1.UniQuery10.ParamByName('id').AsInteger := i;
Form1.UniQuery10.ExecSQL;
findOrderPlanByID:= UniQuery10.FieldByName('plan_name').AsString;


end;

function TForm1.findOrderSubTypeByID(i: Integer): String;
// Ищем подтип по id
begin

UniQuery10.Close;
Form1.UniQuery10.SQL.Text :='SELECT * FROM subtype WHERE id = :id';
Form1.UniQuery10.ParamByName('id').AsInteger := i;
Form1.UniQuery10.ExecSQL;
findOrderSubTypeByID:= UniQuery10.FieldByName('subtype_name').AsString;

end;

function TForm1.findOrderTupeByID(i: Integer): String;
// Ищем тип по id
begin

UniQuery10.Close;
Form1.UniQuery10.SQL.Text :='SELECT * FROM ordertypes WHERE id = :id';
Form1.UniQuery10.ParamByName('id').AsInteger := i;
Form1.UniQuery10.ExecSQL;
findOrderTupeByID:= UniQuery10.FieldByName('type').AsString;
end;

function TForm1.findStatusByID(b: Integer): Integer;
begin

  if (statusDictionary.ContainsKey(b)) then
  begin

    findStatusByID := statusDictionary[b];

  end
  else
  begin
    findStatusByID := -1; // не нашли ключ
  end;
end;

procedure TForm1.EnableOffRepButtons();

begin

  DBEdit1.Enabled := FALSE;
  Button9.Enabled := true;
  Button11.Enabled := true;
  Button10.Enabled := true;
  Button12.Enabled := true;
  Button4.Enabled := FALSE;
  Button2.Enabled := FALSE;
  Button3.Enabled := FALSE;
  SaveBtn.Enabled := FALSE;
  Edit1.Enabled := FALSE;
  Edit2.Enabled := FALSE;
  Button6.Enabled := FALSE;
  editBtn.Enabled := FALSE;
  deleteBtn.Enabled := FALSE;
  Button1.Enabled := FALSE;
  LastButton.Enabled := FALSE;

end;

procedure TForm1.SummaryReport();
var
  s, Last: string;
  i, yearscount: Integer;
  x, y: Integer;
  curyear: Word;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;
var
  MyGrid: TStringGrid;

begin

  for i := 0 to StringGrid3.RowCount - 1 do
    StringGrid3.Rows[i].Clear;

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'SELECT orders.id, order_short_name, order_deadline FROM orders LEFT OUTER JOIN order_status '
    + 'ON orders.order_status = order_status.id WHERE orders.user_id = :userid AND '
    + '(date_part(' + #39 + 'year' + #39 + ', order_deadline) = date_part(' +
    #39 + 'year' + #39 + ', NOW()))';
  // 'AND (order_status.RF>0) AND (STATUS.RF<11) ORDER BY STATUS.RF DESC';


  // не знаю что это было -  'AND (order_status.RF>0) AND (STATUS.RF<11) ORDER BY STATUS.RF DESC';

  UniQuery10.ParamByName('userid').AsString := UserID;

  UniQuery10.ExecSQL;

  StringGrid3.Cells[0, 0] := '№ зак.';
  StringGrid3.Cells[1, 0] := 'Заказ';
  StringGrid3.Cells[2, 0] := 'Дата съемки';
  StringGrid3.Cells[3, 0] := 'Статус';

  x := 1;
  while (not UniQuery10.Eof) do
  begin

    StringGrid3.Cells[0, x] := UniQuery10.FieldByName('id').AsString;
    StringGrid3.Cells[1, x] := UniQuery10.FieldByName
      ('order_short_name').AsString;
    StringGrid3.Cells[2, x] := UniQuery10.FieldByName('order_deadline')
      .AsString;
    // StringGrid3.Cells[3, x] := UniQuery10.FieldByName('STATUS_TYPE').AsString; - тут надо  как-то вытащить статус и добавить сюда

    UniQuery10.Next;

    inc(x);
  end;

  // StringGrid3.Col:=0;
  // StringGrid3.FixedRows:=0;
  StringGrid3.Col := 2;
  // StringGrid3.Row:=2;

end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin

  FirstClient();

  // EnableOffAllButtons();

  // EnableOnOrdButtons();

end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
  EnableOnOrdButtons();
end;

procedure TForm1.TabSheet3Show(Sender: TObject);
begin
  EnableOffAllButtons();
end;

procedure TForm1.UserTabShow(Sender: TObject);
begin


  // SELECT * FROM `Users` WHERE ID = 2

  UniQuery11.Close;
  UniQuery11.SQL.Text := 'SELECT * FROM users WHERE ID = :userid';
  UniQuery11.ParamByName('userid').AsString := UserID;
  UniQuery11.ExecSQL;

  userinfoNamelbl.Caption := 'Имя пользователя:  ' + UniQuery11.FieldByName
    ('name').AsString;
  userinfoLoginlbl.Caption := 'Логин:  ' + UniQuery11.FieldByName
    ('login').AsString;
  userinfoPasswordlbl.Caption := 'Пароль:  ' + UniQuery11.FieldByName
    ('pwd').AsString;
  userinfoEmaillbl.Caption := 'Email:  ' + UniQuery11.FieldByName
    ('email').AsString;
  // userinfoBirthdaylbl.Caption:='День рождения:  ' + UniQuery11.FieldByName('Birthday').AsString;
  userinfoRegDatelbl.Caption := 'Дата регистрации:  ' + UniQuery11.FieldByName
    ('datecreated').AsString;
  // userinfoLastVisitDatelbl.Caption:='Дата последнего визита:  ' + UniQuery11.FieldByName('LastVisitDate').AsString;
  // userinfoLastVisitTimelbl.Caption:='Время последнего визита:  ' + UniQuery11.FieldByName('LastVisitTime').AsString;

  EnableOffAllButtons();

end;

procedure TForm1.WebBrowser1BeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var
  newURL: string;
  document: IHTMLDocument2;
  stylesheet: IHTMLStyleSheet;
  stylesheetIndex: Integer;
begin

  newURL := URL;
  // For local links, don't show a dialog but open the file directly
  if (not FIsStartPage) and FileExists(newURL) then
  begin
    Cancel := true;
    ShellExecute(Application.Handle, 'open', PChar(newURL), nil, nil,
      SW_NORMAL);
  end;

end;

procedure TForm1.ReportsMonthclientsStat();

var
  s, Last: string;
  i, yearscount: Integer;
  x, y: Integer;
  curyear: Word;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;

begin

  for i := 0 to StringGrid2.RowCount - 1 do
    StringGrid2.Rows[i].Clear;

  Button11.Enabled := FALSE;
  Button12.Enabled := FALSE;

  curyear := YearOf(Now());

  UniQuery10.Close;
  UniQuery10.SQL.Text := 'select date_part(' + #39 + 'month' + #39 +
    ', order_deadline) m, date_part(' + #39 + 'year' + #39 +
    ', order_deadline) y, ' +
    ' order_status os, COUNT(order_status) Count FROM orders LEFT OUTER JOIN order_status ON '
    + ' orders.order_status = order_status.id WHERE date_part(' + #39 + 'year' +
    #39 + ', order_deadline) =:cy AND ' +
    ' orders.user_id=:userid GROUP BY  m, y, os ORDER BY m';

  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ParamByName('cy').AsString := inttostr(curyear);

  UniQuery10.ExecSQL;

  Last := '';
  x := 1;
  y := 0;
  allLeads := 0;
  successLeads := 0;
  injobLeads := 0;
  refusedLeads := 0;

  // Button4.Visible := FALSE;

  for i := 0 to 5 do
    StringGrid2.RowCount := StringGrid2.RowCount + 1;

  StringGrid2.Cells[0, 1] := 'Лидов всего'; // allLeads
  StringGrid2.Cells[0, 2] := 'Успешно закрыто'; // 5, 6, 7  - successLeads
  StringGrid2.Cells[0, 3] := 'Не заказали'; // 1     - refusedLeads
  StringGrid2.Cells[0, 4] := 'В работе'; // 2, 3, 4 - injobLeads
  StringGrid2.ColWidths[0] := 100;

  UniDataSource8.DataSet.Refresh;
  UniDataSource8.DataSet.First;

  while (not UniDataSource8.DataSet.Eof) do
  begin

    if (UniDataSource8.DataSet.FieldByName('m').AsString <> Last) then
    begin

      if (StringGrid2.ColCount <= x) then
        StringGrid2.ColCount := StringGrid2.ColCount + 1;

      StringGrid2.Cells[x, 0] :=
        numbertomonth(UniDataSource8.DataSet.FieldByName('m').AsInteger);
      Last := UniDataSource8.DataSet.FieldByName('m').AsString;

      allLeads := 0;
      successLeads := 0;
      refusedLeads := 0;
      injobLeads := 0;

      case (UniDataSource8.DataSet.FieldByName('os').AsInteger) of
        1:
          begin
            // refusedLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        3:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            successLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        7:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        8:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        9:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        10:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        11:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        12:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        13:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;

      end;

      allLeads := successLeads + refusedLeads + injobLeads;

      StringGrid2.Cells[x, 1] := inttostr(allLeads);
      StringGrid2.Cells[x, 2] := inttostr(successLeads);
      StringGrid2.Cells[x, 3] := inttostr(refusedLeads);
      StringGrid2.Cells[x, 4] := inttostr(injobLeads);
      // StringGrid2.Cells[x, 5] := inttostr(x);

      x := x + 1;

    end
    else
    begin

      case (UniDataSource8.DataSet.FieldByName('os').AsInteger) of
        1:
          begin
            // refusedLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        3:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            successLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        7:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        8:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        9:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        10:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('count')
              .AsInteger;
          end;
        11:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        12:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
        13:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('count').AsInteger;
          end;
      end;
      Last := UniDataSource8.DataSet.FieldByName('m').AsString;

      allLeads := successLeads + refusedLeads + injobLeads;
      StringGrid2.Cells[x - 1, 1] := inttostr(allLeads);
      StringGrid2.Cells[x - 1, 2] := inttostr(successLeads);
      StringGrid2.Cells[x - 1, 3] := inttostr(refusedLeads);
      StringGrid2.Cells[x - 1, 4] := inttostr(injobLeads);

    end;

    UniDataSource8.DataSet.Next;

  end;

  UniQuery10.Close;

end;

procedure TForm1.ReportsYearclientsStat();

var
  s, Last: string;
  i, yearscount: Integer;
  x, y: Integer;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;

begin

  StringGrid1.RowCount := 0;
  StringGrid1.ColCount := 0;

  for i := 0 to StringGrid1.RowCount - 1 do
    StringGrid1.Rows[i].Clear;

  Button11.Enabled := FALSE;
  Button12.Enabled := FALSE;

  UniQuery10.SQL.Text := 'SELECT date_part(' + #39 + 'year' + #39 +
    ', order_deadline) Y FROM orders WHERE USER=:userid GROUP BY  y ORDER BY y';

  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;
  yearscount := UniQuery10.RecordCount;

  UniQuery10.Close;

  UniQuery10.SQL.Text := 'SELECT date_part(' + #39 + 'year' + #39 +
    ', order_deadline) d, order_status os, COUNT(order_status) s FROM orders LEFT OUTER JOIN order_status ON orders.order_status = order_status.id WHERE orders.user_id = :userid GROUP BY d, os ORDER BY d';
  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;

  Last := '';
  x := 1;
  y := 0;
  allLeads := 0;
  successLeads := 0;
  injobLeads := 0;
  refusedLeads := 0;

  s := yearending(yearscount);
  rptlblYearStatistic.Caption := 'В базе есть статистика за ' +
    inttostr(yearscount) + ' ' + s;

  for i := 0 to 5 do
    StringGrid1.RowCount := StringGrid1.RowCount + 1;

  StringGrid1.Cells[0, 1] := 'Лидов всего'; // allLeads
  StringGrid1.Cells[0, 2] := 'Успешно закрыто'; // 3  - successLeads
  StringGrid1.Cells[0, 3] := 'Не заказали'; // 7, 10    - refusedLeads
  StringGrid1.Cells[0, 4] := 'В работе'; // 1, 2, 9, 11, 12, 13 - injobLeads
  StringGrid1.ColWidths[0] := 100;

  UniDataSource8.DataSet.First;

  while (not UniDataSource8.DataSet.Eof) do
  begin

    if (UniDataSource8.DataSet.FieldByName('d').AsString <> Last) then
    begin

      if (StringGrid1.ColCount <= x) then
        StringGrid1.ColCount := StringGrid1.ColCount + 1;

      StringGrid1.Cells[x, 0] := UniDataSource8.DataSet.FieldByName
        ('d').AsString;
      Last := UniDataSource8.DataSet.FieldByName('d').AsString;

      allLeads := 0;
      successLeads := 0;
      refusedLeads := 0;
      injobLeads := 0;

      case (UniDataSource8.DataSet.FieldByName('os').AsInteger) of
        1:
          begin
            // refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        3:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        7:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        8:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        9:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        10:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        11:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        12:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        13:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;

      end;

      allLeads := successLeads + refusedLeads + injobLeads;

      StringGrid1.Cells[x, 1] := inttostr(allLeads);
      StringGrid1.Cells[x, 2] := inttostr(successLeads);
      StringGrid1.Cells[x, 3] := inttostr(refusedLeads);
      StringGrid1.Cells[x, 4] := inttostr(injobLeads);

      x := x + 1;

    end
    else
    begin

      if (UniDataSource8.DataSet.FieldByName('d').AsString = '2017') then
      begin

        // ShowMessage(inttostr(successLeads));

      end;

      case (UniDataSource8.DataSet.FieldByName('os').AsInteger) of
        1:
          begin
            // refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        3:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        7:
          begin
            // injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        8:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        9:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        10:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        11:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        12:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        13:
          begin
            // successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
      end;
      Last := UniDataSource8.DataSet.FieldByName('d').AsString;

      allLeads := successLeads + refusedLeads + injobLeads;
      StringGrid1.Cells[x - 1, 1] := inttostr(allLeads);
      StringGrid1.Cells[x - 1, 2] := inttostr(successLeads);
      StringGrid1.Cells[x - 1, 3] := inttostr(refusedLeads);
      StringGrid1.Cells[x - 1, 4] := inttostr(injobLeads);

    end;

    UniDataSource8.DataSet.Next;

  end;

  UniQuery10.Close;

  // Запрашиваем зависшие заказы, клиенты которые думают. На самом деле это надо будет или убрать совсем
  // или сделать чтобы такой статус добавлялся автоматически и система его искала потом (ну и тогда, чтобы удалить его
  // было нельзя

  UniQuery10.SQL.Text :=
    'SELECT * FROM orders  WHERE order_status = 8 AND orders.user_id = :userid AND (select public."f_getDIFFERENCEBETWEEN2DATESINDAYS"(orders.order_create_date))>30';
  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;

  // SELECT * FROM orders  WHERE order_status = 8 AND orders.user_id = 2 AND (select public."f_getDIFFERENCEBETWEEN2DATESINHOURS"(orders.order_create_date))>30;

  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin
    ordExpiredLabel.Font.Color := clRed;
    clearordExpiredBtn.Enabled := true;
    ordExpiredLabel.Caption := 'В базе данных ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' клиентов/а с незакрытым статусом заказов Думает!';
  end;

  UniQuery10.Close;

  // -----------------------------------------------------------------------------------------------------------------

  // Получаем все просроченные заказы
  UniQuery10.SQL.Text :=
    'SELECT * FROM orders  WHERE order_status = 1 AND order_status = 8 AND orders.user_id  = :userid AND (select public."f_getDIFFERENCEBETWEEN2DATESINHOURS"(orders.order_create_date))>30';


  // SELECT * FROM orders  WHERE order_status = 1 AND Status = 8 AND User = :userid AND (select public."f_getDIFFERENCEBETWEEN2DATESINHOURS"(orders.order_create_date))>30;

  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;
  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin

    clntstatusexplbl.Font.Color := clRed;
    clntstatusexplbl.Caption := 'В базе данных ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' клиентов с просроченными статусами!';

  end;

end;

procedure TForm1.act();
var
  j: Integer;
  z: Integer;
  fromRecCount: Integer;
  statusRecCount: Integer;
  jobstypeRecCount: Integer;

  sItem: String;
  sItem2: String;
  sItemHelp: String;

begin

  UniQuery2.ExecSQL;
  UniQuery3.ExecSQL;

  JobsDictionary := TDictionary<Integer, Integer>.Create;
  // Создаем Dictionary для хранения пар для списков типа работ
  statusDictionary := TDictionary<Integer, Integer>.Create;
  // Создаем Dictionary для хранения видов статусов

  // =============================== COMBO BOX STATUS FILLING ================
  statusRecCount := UniDataSource2.DataSet.RecordCount;
  UniDataSource2.DataSet.First;
  for j := 1 to statusRecCount do
  begin

    sItem := UniDataSource2.DataSet.FieldByName('status').AsString;
    sItemHelp := Format(sItem, [j]);
    statusDictionary.Add(j, UniDataSource2.DataSet.FieldByName('id').AsInteger);
    // Кладем в мапу j и айдишник из базы чтобы потом их соотносить для поиска статусов.
    UniDataSource2.DataSet.Next;
    ComboBox1.Items.AddObject(sItem, TObject(j));
  end;
  UniDataSource2.DataSet.First;
  ComboBox1.ItemIndex := 0;

  // =============================== COMBO BOX CLIENT FROM FILLING ================
  fromRecCount := UniDataSource3.DataSet.RecordCount;
  UniDataSource3.DataSet.First;
  for z := 1 to fromRecCount do
  begin

    sItem2 := UniDataSource3.DataSet.FieldByName('source').AsString;
    // ShowMessage(inttostr(z) + ' = ' + sItem2);
    sItemHelp := Format(sItem, [z]);
    // ShowMessage(sItemHelp);
    UniDataSource3.DataSet.Next;
    ComboBox2.Items.AddObject(sItem2, TObject(z));
  end;


  // =============================== COMBO BOX ORDER STATUS FROM FILLING ==========
  // statusRecCount := UniDataSource2.DataSet.RecordCount;

  UniDataSource2.DataSet.First;
  j := 0;
  sItem := '';
  for j := 1 to statusRecCount do
  begin

    sItem := UniDataSource2.DataSet.FieldByName('status').AsString;
    sItemHelp := Format(sItem, [j]);
    // statusDictionary.Add(j, UniDataSource2.DataSet.FieldByName('id').AsInteger); // Кладем в мапу j и айдишник из базы чтобы потом их соотносить для поиска статусов.
    UniDataSource2.DataSet.Next;
    orderstatus.Items.AddObject(sItem, TObject(j));
  end;

  // =============================== COMBO BOX CLIENT FILLING ==========

  UniQuery8.SQL.Text := 'SELECT * FROM clients WHERE user_id = :userid;';
  UniQuery8.ParamByName('userid').AsString := UserID;
  UniQuery8.Execute;

  clientsRecCount := UniDataSource6.DataSet.RecordCount;
  if (clientsRecCount = 0) then
  begin

    // Customer.Items.AddObject('Добавьте Клиентов', TObject(0));
    // Customer.ItemIndex := 0;
    // Customer.Enabled:=false;

    DBEdit1.Enabled := true;
    Button9.Enabled := FALSE;
    Button11.Enabled := FALSE;
    Button10.Enabled := FALSE;
    Button12.Enabled := FALSE;
    Button4.Enabled := FALSE;
    Button2.Enabled := FALSE;
    Button3.Enabled := true;
    SaveBtn.Enabled := true;
    Edit1.Enabled := FALSE;
    Edit2.Enabled := FALSE;
    Button6.Enabled := true;
    editBtn.Enabled := FALSE;
    deleteBtn.Enabled := FALSE;
    Button1.Enabled := FALSE;
    LastButton.Enabled := FALSE;

    // TabSheet2.TabVisible := false;
    OrderTab.TabVisible := FALSE;
    SenderTab.TabVisible := FALSE;
    ReportTab.TabVisible := FALSE;
    UserTab.TabVisible := FALSE;
    MainTab.TabIndex := 1;

  end
  else
  begin

    SetLength(CustomerArr, clientsRecCount);

    UniDataSource6.DataSet.First;
    j := 0;
    z := 0;
    sItem := '';

    for j := 0 to clientsRecCount - 1 do
    begin

      sItem := UniDataSource6.DataSet.FieldByName('name').AsString;
      z := UniDataSource6.DataSet.FieldByName('id').AsInteger;

      CustomerArr[j] := z;

      Customer.Items.AddObject(sItem, TObject(j));
      UniDataSource6.DataSet.Next;

    end;

  end;


  // =============================== COMBO BOX JOBS TYPE FILLING ==========

  UniQuery9.SQL.Text := 'SELECT * FROM ordertypes;';
  UniQuery9.Execute;

  jobstypeRecCount := UniDataSource7.DataSet.RecordCount;
  UniDataSource7.DataSet.First;
  j := 0;
  sItem := '';

  for j := 1 to jobstypeRecCount do
  begin


    sItem := UniDataSource7.DataSet.FieldByName('type').AsString + ' - ' +
    UniDataSource7.DataSet.FieldByName('id').AsString + ' - ' + inttostr(j);
    JobsDictionary.Add(j, UniDataSource7.DataSet.FieldByName('id').AsInteger);
    // Кладем в мапу j и айдишник из базы чтобы потом их соотносить.
    sItemHelp := Format(sItem, [j]);
    UniDataSource7.DataSet.Next;
    Jobstype.Items.AddObject(sItem, TObject(j));

  end;

  UniDataSource2.DataSet.First;
  ComboBox1.ItemIndex := 0;

  UniDataSource3.DataSet.First;
  ComboBox2.ItemIndex := 0;

  UniDataSource6.DataSet.First;
  UniDataSource7.DataSet.First;
  Customer.ItemIndex := 0;
  orderstatus.ItemIndex := 0;
  Jobstype.ItemIndex := 0;

end;

procedure TForm1.Activate;
begin
  // act();
end;

procedure TForm1.Button10Click(Sender: TObject);

var
  i, tablevalue: Integer;
  // s, t : TLineSeries;
  title: string;

begin

  if (Button9.Enabled = FALSE) then
  begin

    Button9.Enabled := FALSE;
    Button11.Enabled := FALSE;
    Button10.Enabled := FALSE;
    Button12.Enabled := true;

    Chart1.Visible := true;
    Chart2.Visible := true;

    Series1.Clear;
    BarSeries1.Clear;

    for i := 0 to StringGrid1.RowCount do
    begin
      title := StringGrid1.Cells[0, i];
      if (title <> '') then
      begin
        tablevalue := StrToInt(StringGrid1.Cells[1, i]);
        Series1.Add(tablevalue, title, clYellow);
      end;
    end;

    for i := 0 to StringGrid2.RowCount do
    begin
      title := StringGrid2.Cells[0, i];
      if (title <> '') then
      begin
        tablevalue := StrToInt(StringGrid2.Cells[1, i]);
        BarSeries1.Add(tablevalue, title, clGreen);
      end;
    end;

    Chart1.Left := 9;
    Chart1.Top := 3;
    Chart1.Width := 793;
    Chart1.Height := 350;

    Chart2.Left := 9;
    Chart2.Top := 3;
    Chart2.Width := 793;
    Chart2.Height := 350;



    // =========================== ПРЯЧЕМ ВСЕ ================================

    Bevel1.Visible := FALSE;
    Button7.Visible := FALSE;
    clearordExpiredBtn.Visible := FALSE;
    ordExpiredLabel.Visible := FALSE;
    clntExpiredlbl.Visible := FALSE;
    ordandclntNotEqlbl.Visible := FALSE;
    ordstatusexplbl.Visible := FALSE;
    clntstatusexplbl.Visible := FALSE;
    rptlblYearStatistic.Visible := FALSE;
    StringGrid1.Visible := FALSE;
    StringGrid2.Visible := FALSE;


    // =========================== ========== ================================

  end
  else
  begin

    Button9.Enabled := FALSE;
    Button11.Enabled := FALSE;
    Button10.Enabled := FALSE;
    Button12.Enabled := true;

    Chart1.Visible := true;
    Chart2.Visible := true;

    BarSeries1.Clear;
    Series1.Clear;

    for i := 1 to StringGrid1.ColCount do
    begin

      title := StringGrid1.Cells[i, 0];

      if (title <> '') then
      begin
        tablevalue := StrToInt(StringGrid1.Cells[i, 2]);
        Series1.Add(tablevalue, title, clRed);
      end;

    end;

    for i := 1 to StringGrid2.ColCount do
    begin

      title := StringGrid2.Cells[i, 0];

      if (title <> '') then
      begin
        tablevalue := StrToInt(StringGrid2.Cells[i, 2]);
        BarSeries1.Add(tablevalue, title, clRed);
      end;

    end;

    Chart1.Left := 9;
    Chart1.Top := 3;
    Chart1.Width := 793;
    Chart1.Height := 350;

    Chart2.Left := 9;
    Chart2.Top := 3;
    Chart2.Width := 793;
    Chart2.Height := 350;


    // =========================== ПРЯЧЕМ ВСЕ ================================

    Bevel1.Visible := FALSE;
    Button7.Visible := FALSE;
    clearordExpiredBtn.Visible := FALSE;
    ordExpiredLabel.Visible := FALSE;
    clntExpiredlbl.Visible := FALSE;
    ordandclntNotEqlbl.Visible := FALSE;
    ordstatusexplbl.Visible := FALSE;
    clntstatusexplbl.Visible := FALSE;
    rptlblYearStatistic.Visible := FALSE;
    StringGrid1.Visible := FALSE;

    // =========================== ========== ================================

  end;

end;

procedure TForm1.Button11Click(Sender: TObject);
begin

  ReportsYearclientsStat();
  ReportsMonthclientsStat();
  Button9.Enabled := true;
  Button11.Enabled := FALSE;

end;

procedure TForm1.Button12Click(Sender: TObject);
begin

  // =========================== ПОКАЗЫВАЕМ ВСЕ ================================

  Bevel1.Visible := true;
  Button7.Visible := true;
  clearordExpiredBtn.Visible := true;
  ordExpiredLabel.Visible := true;
  clntExpiredlbl.Visible := true;
  ordandclntNotEqlbl.Visible := true;
  ordstatusexplbl.Visible := true;
  clntstatusexplbl.Visible := true;
  rptlblYearStatistic.Visible := true;
  StringGrid1.Visible := true;
  StringGrid2.Visible := true;
  Chart1.Visible := FALSE;
  Chart2.Visible := FALSE;

  ReportsYearclientsStat();
  ReportsMonthclientsStat();

  Button10.Enabled := true;
  Button12.Enabled := FALSE;

  Button9.Enabled := true;
  Button11.Enabled := FALSE;



  // =========================== ========== ================================

end;


procedure TForm1.DeleteItem(Node: TTreeNode);
var i:integer;
begin

if Node.HasChildren then
begin
    for i:=Node.Count-1 downto 0 do
    begin
      DeleteItem(Node.Item[i]);
      Node.Item[i].Delete;
    end;
end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
    MyNode2: TFruit;
    NewNode: TTreeNode;
    NewPlan: TTreeNode;
    typeCode, subTypeCode, plan: String;
    parentTypeID: Integer;
    parentSubTypeID, i, x: Integer;
    selectedType, selectedSubType, selectedPlan: Integer;
begin
  Form3.Show;

  // Предварительно чистим дерево...

  Form3.CleanTree();

  // -- Подключаемся к базе и запрашиваем типы заказов
  Form3.orderTypes_UQ.Connection := Form1.UniConnection1;
  Form3.orderSubTypes_UQ.Connection := Form1.UniConnection1;
  Form3.orderTypes_UQ.SQL.Text := 'SELECT * FROM ordertypes WHERE user_id = :userid;';
  Form3.orderTypes_UQ.ParamByName('userid').AsString := UserID;
  Form3.orderTypes_UQ.Execute;


  // -- Раcпихиваем Типы в дерево
  while (not Form3.orderTypes_UQ.Eof) do
      begin
    with Form3.Treeview1 do
        begin
          MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, -1, -1);    // -1 - значит верхняя нода
          root:=Items.AddChildObject(Selected, Form3.orderTypes_UQ.FieldByName('type').AsString, pointer(MyNode2));
          Form3.orderSubTypes_UQ.SQL.Text := 'SELECT * FROM subtype s WHERE s.parent_type_id = :parentordertype;';
          parentTypeID:= Form3.orderTypes_UQ.FieldByName('id').AsInteger;
          Form3.orderSubTypes_UQ.ParamByName('parentordertype').AsInteger := parentTypeID;
          Form3.orderSubTypes_UQ.Execute;

          // Подтипы
          while (not Form3.orderSubTypes_UQ.Eof) do
              begin

                 MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, Form3.orderSubTypes_UQ.FieldByName('id').AsInteger, -1);    // кладем подтип
                 NewNode:=Items.AddChildObject(root, Form3.orderSubTypes_UQ.FieldByName('subtype_name').AsString, pointer(MyNode2));
                 Form3.orderPlans_UQ.SQL.Text := 'SELECT * FROM plans p  WHERE p.parent_subtype_id = :parentsubtype;';
                 parentSubTypeID:= Form3.orderSubTypes_UQ.FieldByName('id').AsInteger;
                 Form3.orderPlans_UQ.ParamByName('parentsubtype').AsInteger := parentSubTypeID;
                 Form3.orderPlans_UQ.Execute;

                 // Планы
                 while (not Form3.orderPlans_UQ.Eof) do
                 begin
                    MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, Form3.orderSubTypes_UQ.FieldByName('id').AsInteger, Form3.orderPlans_UQ.FieldByName('id').AsInteger);    // кладем план
                    NewPlan:=Items.AddChildObject(NewNode, Form3.orderPlans_UQ.FieldByName('plan_name').AsString, pointer(MyNode2));
                    Form3.orderPlans_UQ.Next;

                 end;

                 Form3.orderSubTypes_UQ.Next;

          end;
        Form3.orderTypes_UQ.Next;
      end;
    end;

    // ---- Выделение ----

    // 1 - определить что у нас выделено

      selectedType:= UniDataSource5.DataSet.FieldByName('order_type').asInteger;
      selectedSubType:= UniDataSource5.DataSet.FieldByName('order_sub_type').asInteger;
      selectedPlan:= UniDataSource5.DataSet.FieldByName('order_plan').asInteger;
      Form3.selectedPlan:= selectedPlan;

    // 2 - найти по ключу


    with Form3.Treeview1 do
    begin
    Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

   // Сначала нам надо проверить все планы
      Select(Items[i]);
      MyNode2:= Selected.Data;

          if MyNode2.Plan=selectedPlan then
          begin

             getOptions4Plan(selectedPlan); // Пробуем подгрузить опции для плана

          // Надо заполнить поля плана
             Form3.OptionDesc.Text:=  Form3.UDS_plans.DataSet.FieldByName('description').AsString; // заполняем Дескрипшн плана
             Form3.PlanPrice.Text:= Form3.UDS_plans.DataSet.FieldByName('cost').AsString; // выключаем поле стоимости заказа
             Form3.btnEditPlanPrice.Enabled:= false; // выключаем кнопку сохранения стоимости заказа так как предыдущая строчка ее включит
             Form3.addOrderTypeButton.Enabled:=False;
             Form3.btnEditOrderType.Enabled:=true;
             Form3.deleteOrderTypeButton.Enabled:=true; // выключаем кнопку добавить.
             SetFocus;
             Exit;
          end;

  end;

    //--------------------------------------
    // Не нашли планы. Ищем Подтипы

    // И надо опции занулить

        Form3.OptionsExists:=false;
        Form3.OptionsList.Enabled:= false; // выключаем список опций
        Form3.OptionDesc.Enabled:= false; // выключаем описание плана
        Form3.PlanPrice.Enabled:= false; // выключаем поле стоимости заказа
        Form3.btnEditPlanPrice.Enabled:= false; // выключаем кнопку сохранения стоимости заказа или описания
        Form3.btnAddPlanOption.Enabled:= false; // выключаем кнопку добавления новой опции
        Form3.btnDeletePlanOption.Enabled:= false; // выключаем кнопку удаления опции
        Form3.btnEditPlanOption.Enabled:= false; // выключаем кнопку редактирования опции

        Form3.OptionsList.Items.Add('Нет опций у плана или не выбран план'); // Добавляем строку в компонент ListBox


     Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

         Select(Items[i]);
         MyNode2:= Selected.Data;


          if  MyNode2.orderSubType=selectedSubType then
          begin
            SetFocus;
            Exit;
          end;
     end;

   //--------------------------------------
  // Не нашли подтипы. Ищем Типы
     Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

         Select(Items[i]);
         MyNode2:= Selected.Data;

          if  MyNode2.orderType=selectedType then
          begin
            SetFocus;
            Exit;
          end;
    end;

  //нет заданного типа работ
  MessageDlg('У данного заказа нет ни типа, ни подтипа, ни плана. Выберете что-нибудь!', mtWarning, [mbOk], 0);
  Select(Items[0]);
  SetFocus;

end;
end;

procedure TForm1.Button1Click(Sender: TObject);

var
  Idx: Integer;
  y: Integer;

  value: Integer;
  ListIndex: Integer;
  CustomerID: Integer;
  localOrderType, localOrderSubType, localOrderPlan: String;

begin

    if (MainTab.TabIndex = 2) then
      begin

        UniDataSource5.DataSet.Next;
        OrderName.Text := UniDataSource5.DataSet.FieldByName('order_short_name').AsString;
        OrderCost.Text := UniDataSource5.DataSet.FieldByName('order_cost').AsString;
        orderstatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_status').AsInteger) - 1;

        ListIndex := 0;
        CustomerID := UniDataSource5.DataSet.FieldByName('client').AsInteger;
        ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    // Получаем тип заказа
    // Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    localOrderType:=  findOrderTupeByID(UniDataSource5.DataSet.FieldByName('order_type').AsInteger); //Поле Тип
    localOrderSubType:=  findOrderSubTypeByID(UniDataSource5.DataSet.FieldByName('order_sub_type').AsInteger); //Поле ПОДТип
    localOrderPlan:=  findOrderPlanByID(UniDataSource5.DataSet.FieldByName('order_plan').AsInteger); //Поле План

    // Обрезаем строки
    if (Length(localOrderSubType)>22) then
    begin
      Delete(localOrderSubType, 22, Length(localOrderSubType));
      localOrderSubType:=localOrderSubType+'...';
    end;

    Jobstype.ItemIndex := findIDByJob(UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    orderType.Text:=localOrderType;
    OrderSubType.Text:=localOrderSubType;
    OrderPlan.Text:=localOrderPlan;


    // Меняем текст кнопки
    if (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_sub_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) then
    begin
    Button13.Caption:='Добавить Тип Заказа';
    end
    else
    begin
         Button13.Caption:='Изменить Тип Заказа';
    end;




    Edit4.Text := UniDataSource5.DataSet.FieldByName('client').AsString;

    if (UniDataSource5.DataSet.FieldByName('order_create_date').AsString) = ''
    then
      RecieveDate.Date := Date
    else
      RecieveDate.Date := StrToDateTime(UniDataSource5.DataSet.FieldByName('order_create_date').AsString);

    if (UniDataSource5.DataSet.FieldByName('order_deadline').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('order_deadline').AsString);

    StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
      inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.Next;

    { if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
      else
      birthdayunknowChkBx.Checked := FALSE; }

    Edit1.Text := inttostr(UniDataSource1.DataSet.RecNo);
    Edit2.Text := inttostr(UniDataSource1.DataSet.RecordCount);

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' +
      inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('email').AsString;
    // eOrderedDate.Text := UniDataSource1.DataSet.FieldByName('order_create_date').AsString;

    if (UniDataSource1.DataSet.FieldByName('birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('birthday').AsString);

    // ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status').AsInteger) - 1;
    ComboBox2.ItemIndex :=
      (UniDataSource1.DataSet.FieldByName('whereclientfrom').AsInteger) - 1;

    Idx := ComboBox1.ItemIndex;
    value := Integer(ComboBox1.Items.Objects[Idx]);

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Idx: Integer;
  y: Integer;
  value: Integer;
  ListIndex: Integer;
  CustomerID: Integer;
  localOrderType, localOrderSubType, localOrderPlan: String;

begin
  if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.Prior;
    OrderName.Text := UniDataSource5.DataSet.FieldByName('order_short_name').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('order_cost').AsString;
    orderstatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_status').AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('client').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;

    // Получаем тип заказа
    // Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    localOrderType:=  findOrderTupeByID(UniDataSource5.DataSet.FieldByName('order_type').AsInteger); //Поле Тип
    localOrderSubType:=  findOrderSubTypeByID(UniDataSource5.DataSet.FieldByName('order_sub_type').AsInteger); //Поле ПОДТип
    localOrderPlan:=  findOrderPlanByID(UniDataSource5.DataSet.FieldByName('order_plan').AsInteger); //Поле План


// Обрезаем строки
    if (Length(localOrderSubType)>22) then
    begin
      Delete(localOrderSubType, 22, Length(localOrderSubType));
      localOrderSubType:=localOrderSubType+'...';
    end;

    orderType.Text:=localOrderType;
    OrderSubType.Text:=localOrderSubType;
    OrderPlan.Text:=localOrderPlan;






    // Меняем текст кнопки
    if (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_sub_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) then
    begin
    Button13.Caption:='Добавить Тип Заказа';
    end
    else
    begin
         Button13.Caption:='Изменить Тип Заказа';
    end;



    Edit4.Text := UniDataSource5.DataSet.FieldByName('client').AsString;

    if (UniDataSource5.DataSet.FieldByName('order_create_date').AsString) = ''
    then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('order_create_date').AsString);

    if (UniDataSource5.DataSet.FieldByName('order_deadline').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime(UniDataSource5.DataSet.FieldByName('order_deadline').AsString);

    StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
      inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.Prior;

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' +
      inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;


    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);


    ComboBox2.ItemIndex :=
      (UniDataSource1.DataSet.FieldByName('whereclientfrom').AsInteger) - 1;

  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  if (MainTab.TabIndex = 2) then
  begin
    Button3.Enabled := FALSE;
    OrderName.Text := '';
    Customer.Text := '';
    Jobstype.Text := '';
    RecieveDate.Date := Date;
    OrderDate.Date := Date;
    OrderCost.Text := '';
    orderstatus.Text := '';
    SaveBtn.Visible := true;

  end
  else
  begin

    Button3.Enabled := FALSE;
    eName.Text := '';
    ePhone.Text := '';
    eEmail.Text := '';
    eOrderedDate.Text := '';
    ComboBox1.Text := '';
    ComboBox2.Text := '';

    TestDate.Date := Date;
    SaveBtn.Visible := true;

  end;
end;

procedure TForm1.LastButtonClick(Sender: TObject);

var
  Idx: Integer;
  y: Integer;

  value: Integer;
  ListIndex: Integer;
  CustomerID: Integer;
  localOrderType, localOrderSubType, localOrderPlan: String;

begin

  if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.Last;
    OrderName.Text := UniDataSource5.DataSet.FieldByName
      ('order_short_name').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('order_cost').AsString;
    orderstatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_status')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('client').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

//    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('client').AsString;

     // Получаем тип заказа
    localOrderType:=  findOrderTupeByID(UniDataSource5.DataSet.FieldByName('order_type').AsInteger); //Поле Тип
    localOrderSubType:=  findOrderSubTypeByID(UniDataSource5.DataSet.FieldByName('order_sub_type').AsInteger); //Поле ПОДТип
    localOrderPlan:=  findOrderPlanByID(UniDataSource5.DataSet.FieldByName('order_plan').AsInteger); //Поле План

    // Обрезаем строки
    if (Length(localOrderSubType)>22) then
    begin
      Delete(localOrderSubType, 22, Length(localOrderSubType));
      localOrderSubType:=localOrderSubType+'...';
    end;

    Jobstype.ItemIndex := findIDByJob(UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    orderType.Text:=localOrderType;
    OrderSubType.Text:=localOrderSubType;
    OrderPlan.Text:=localOrderPlan;


    // Меняем текст кнопки
    if (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_sub_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) then
    begin
    Button13.Caption:='Добавить Тип Заказа';
    end
    else
    begin
         Button13.Caption:='Изменить Тип Заказа';
    end;



    if (UniDataSource5.DataSet.FieldByName('order_create_date').AsString) = ''
    then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('order_create_date')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('order_deadline').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('order_deadline').AsString);

    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

    StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
      inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.Last;

    { if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
      else
      birthdayunknowChkBx.Checked := FALSE;
    }

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' +
      inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    // eOrderedDate.Text := UniDataSource1.DataSet.FieldByName('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    // ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status'.AsInteger) - 1;
    ComboBox2.ItemIndex :=
      (UniDataSource1.DataSet.FieldByName('whereclientfrom').AsInteger) - 1;

  end;
end;

// Загрузка дерева типа заказов. На данном этапе пока это дубль процедуры у кнопки редактирования типа заказа
procedure TForm1.loadOrderTypeTree;
var
    MyNode2: TFruit;
    NewNode: TTreeNode;
    NewPlan: TTreeNode;
    typeCode, subTypeCode, plan: String;
    parentTypeID: Integer;
    parentSubTypeID, i, x: Integer;
    selectedType, selectedSubType, selectedPlan: Integer;
begin

 Form3.Show;

  // Предварительно чистим дерево...

  Form3.CleanTree();

  // -- Подключаемся к базе и запрашиваем типы заказов
  Form3.orderTypes_UQ.Connection := Form1.UniConnection1;
  Form3.orderSubTypes_UQ.Connection := Form1.UniConnection1;
  Form3.orderTypes_UQ.SQL.Text := 'SELECT * FROM ordertypes WHERE user_id = :userid;';
  Form3.orderTypes_UQ.ParamByName('userid').AsString := UserID;
  Form3.orderTypes_UQ.Execute;


  // -- Раcпихиваем Типы в дерево
  while (not Form3.orderTypes_UQ.Eof) do
      begin
    with Form3.Treeview1 do
        begin
          MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, -1, -1);    // -1 - значит верхняя нода
          root:=Items.AddChildObject(Selected, Form3.orderTypes_UQ.FieldByName('type').AsString, pointer(MyNode2));
          Form3.orderSubTypes_UQ.SQL.Text := 'SELECT * FROM subtype s WHERE s.parent_type_id = :parentordertype;';
          parentTypeID:= Form3.orderTypes_UQ.FieldByName('id').AsInteger;
          Form3.orderSubTypes_UQ.ParamByName('parentordertype').AsInteger := parentTypeID;
          Form3.orderSubTypes_UQ.Execute;

          // Подтипы
          while (not Form3.orderSubTypes_UQ.Eof) do
              begin

                 MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, Form3.orderSubTypes_UQ.FieldByName('id').AsInteger, -1);    // кладем подтип
                 NewNode:=Items.AddChildObject(root, Form3.orderSubTypes_UQ.FieldByName('subtype_name').AsString, pointer(MyNode2));
                 Form3.orderPlans_UQ.SQL.Text := 'SELECT * FROM plans p  WHERE p.parent_subtype_id = :parentsubtype;';
                 parentSubTypeID:= Form3.orderSubTypes_UQ.FieldByName('id').AsInteger;
                 Form3.orderPlans_UQ.ParamByName('parentsubtype').AsInteger := parentSubTypeID;
                 Form3.orderPlans_UQ.Execute;

                 // Планы
                 while (not Form3.orderPlans_UQ.Eof) do
                 begin
                    MyNode2:=TFruit.Create(Form3.orderTypes_UQ.FieldByName('id').AsInteger, Form3.orderSubTypes_UQ.FieldByName('id').AsInteger, Form3.orderPlans_UQ.FieldByName('id').AsInteger);    // кладем план
                    NewPlan:=Items.AddChildObject(NewNode, Form3.orderPlans_UQ.FieldByName('plan_name').AsString, pointer(MyNode2));
                    Form3.orderPlans_UQ.Next;

                 end;

                 Form3.orderSubTypes_UQ.Next;

          end;
        Form3.orderTypes_UQ.Next;
      end;
    end;

    // ---- Выделение ----

    // 1 - определить что у нас выделено

      selectedType:= UniDataSource5.DataSet.FieldByName('order_type').asInteger;
      selectedSubType:= UniDataSource5.DataSet.FieldByName('order_sub_type').asInteger;
      selectedPlan:= UniDataSource5.DataSet.FieldByName('order_plan').asInteger;
      Form3.selectedPlan:= selectedPlan;

    // 2 - найти по ключу


    with Form3.Treeview1 do
    begin
    Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

   // Сначала нам надо проверить все планы
      Select(Items[i]);
      MyNode2:= Selected.Data;

          if MyNode2.Plan=selectedPlan then
          begin

             getOptions4Plan(selectedPlan); // Пробуем подгрузить опции для плана

          // Надо заполнить поля плана
             Form3.OptionDesc.Text:=  Form3.UDS_plans.DataSet.FieldByName('description').AsString; // заполняем Дескрипшн плана
             Form3.PlanPrice.Text:= Form3.UDS_plans.DataSet.FieldByName('cost').AsString; // выключаем поле стоимости заказа
             Form3.btnEditPlanPrice.Enabled:= false; // выключаем кнопку сохранения стоимости заказа так как предыдущая строчка ее включит
             Form3.addOrderTypeButton.Enabled:=False;
             Form3.btnEditOrderType.Enabled:=False;

             SetFocus;
             Exit;
          end;

  end;

    //--------------------------------------
    // Не нашли планы. Ищем Подтипы

    // И надо опции занулить

        Form3.OptionsExists:=false;
        Form3.OptionsList.Enabled:= false; // выключаем список опций
        Form3.OptionDesc.Enabled:= false; // выключаем описание плана
        Form3.PlanPrice.Enabled:= false; // выключаем поле стоимости заказа
        Form3.btnEditPlanPrice.Enabled:= false; // выключаем кнопку сохранения стоимости заказа или описания
        Form3.btnAddPlanOption.Enabled:= false; // выключаем кнопку добавления новой опции
        Form3.btnDeletePlanOption.Enabled:= false; // выключаем кнопку удаления опции
        Form3.btnEditPlanOption.Enabled:= false; // выключаем кнопку редактирования опции

        Form3.OptionsList.Items.Add('Нет опций у плана или не выбран план'); // Добавляем строку в компонент ListBox


     Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

         Select(Items[i]);
         MyNode2:= Selected.Data;


          if  MyNode2.orderSubType=selectedSubType then
          begin
            SetFocus;
            Exit;
          end;
     end;

   //--------------------------------------
  // Не нашли подтипы. Ищем Типы
     Select(Items.GetFirstNode);
    for i := 0 to Items.Count - 1 do
    begin

         Select(Items[i]);
         MyNode2:= Selected.Data;

          if  MyNode2.orderType=selectedType then
          begin
            SetFocus;
            Exit;
          end;
    end;

  //нет заданного типа работ
  MessageDlg('У данного заказа нет ни типа, ни подтипа, ни плана. Выберете что-нибудь!', mtWarning, [mbOk], 0);
  Select(Items[0]);
  SetFocus;

end;






end;

procedure TForm1.noOptions;
begin
  Form3.OptionsExists:=false;
  Form3.OptionsList.Enabled:= false; // выключаем список опций
  Form3.OptionDesc.Enabled:= false; // выключаем описание плана
  Form3.PlanPrice.Enabled:= false; // выключаем поле стоимости заказа
  Form3.btnEditPlanPrice.Enabled:= false; // выключаем кнопку сохранения стоимости заказа или описания
  Form3.btnAddPlanOption.Enabled:= false; // выключаем кнопку добавления новой опции
  Form3.btnDeletePlanOption.Enabled:= false; // выключаем кнопку удаления опции
  Form3.btnEditPlanOption.Enabled:= false; // выключаем кнопку редактирования опции

  Form3.OptionsList.Items.Add('Нет опций у плана или не выбран план'); // Добавляем строку в компонент ListBox
end;

procedure TForm1.OrderTabShow(Sender: TObject);
begin

  FirstOrder();
  EnableOnOrdButtons();

end;

procedure TForm1.ReportTabShow(Sender: TObject);
var
  s, Last: string;
  i: Integer;
  x, y: Integer;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;

begin

  ReportsYearclientsStat();
  ReportsMonthclientsStat();
  SummaryReport();
  EnableOffRepButtons();

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  result: string;
  LCount: Integer;
  ListIndex: Integer;
  CustomerID: Integer;
  localOrderType, localOrderSubType, localOrderPlan: String;

begin

  if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.First;
    OrderName.Text := UniDataSource5.DataSet.FieldByName
      ('order_short_name').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('order_cost').AsString;
    orderstatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_status')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('client').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

//    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('client').AsString;


     // Получаем тип заказа
    localOrderType:=  findOrderTupeByID(UniDataSource5.DataSet.FieldByName('order_type').AsInteger); //Поле Тип
    localOrderSubType:=  findOrderSubTypeByID(UniDataSource5.DataSet.FieldByName('order_sub_type').AsInteger); //Поле ПОДТип
    localOrderPlan:=  findOrderPlanByID(UniDataSource5.DataSet.FieldByName('order_plan').AsInteger); //Поле План

    // Обрезаем строки
    if (Length(localOrderSubType)>22) then
    begin
      Delete(localOrderSubType, 22, Length(localOrderSubType));
      localOrderSubType:=localOrderSubType+'...';
    end;

    Jobstype.ItemIndex := findIDByJob(UniDataSource5.DataSet.FieldByName('order_type').AsInteger) - 1;
    orderType.Text:=localOrderType;
    OrderSubType.Text:=localOrderSubType;
    OrderPlan.Text:=localOrderPlan;


    // Меняем текст кнопки
    if (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_sub_type').IsNull=true) and (UniDataSource5.DataSet.FieldByName('order_type').IsNull=true) then
    begin
    Button13.Caption:='Добавить Тип Заказа';
    end
    else
    begin
         Button13.Caption:='Изменить Тип Заказа';
    end;



    if (UniDataSource5.DataSet.FieldByName('client').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('order_create_date')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('order_deadline').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('order_deadline').AsString);

    StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
      inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.First;

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' +
      inttostr(UniDataSource1.DataSet.RecNo);

    { if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
      else
      birthdayunknowChkBx.Checked := FALSE; }

    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    // eOrderedDate.Text := UniDataSource1.DataSet.FieldByName('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    // ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status').AsInteger) - 1;
    ComboBox2.ItemIndex :=
      (UniDataSource1.DataSet.FieldByName('whereclientfrom').AsInteger) - 1;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);

var
  Result1: string;
  LCount: Integer;
  i: Integer;
  strVar: string;
  Login: string;
  Password: string;
  // UserID: Integer;

begin

  Result1 := '';
  Login := LoginField.Text;
  Password := PasswordField.Text;

  // Login := '2';
  // Password := '2';

  // SELECT * from users where users.login = '1' AND pwd = '1'
  UniQuery4.SQL.Text :=
    'SELECT * from users where login = :loginparam AND pwd = :passwordparam;';
  UniQuery4.ParamByName('loginparam').AsString := Login;
  UniQuery4.ParamByName('passwordparam').AsString := Password;
  UniQuery4.Execute;
  LCount := 0;

  while not UniQuery4.Eof do
  begin
    for i := 0 to UniQuery4.Fields.Count - 1 do
      strVar := strVar + VarToStr(UniQuery4.Fields[i].value) + ', ';
    LCount := LCount + 1;
    UniQuery4.Next;
  end;
  strVar := VarToStr(UniQuery4.Fields[0].value) + ', ';

  If LCount > 0 then
  begin

    UserID := UniQuery4.Fields[0].value;
    TabSheet2.TabVisible := true;
    TabSheet1.TabVisible := true;

    // loginbefore := false;
    SenderTab.TabVisible := true;
    // OrderGridTab.TabVisible := true;
    OrderTab.TabVisible := true;
    ReportTab.TabVisible := true;
    UserTab.TabVisible := true;

    UniQuery1.SQL.Text := 'SELECT * FROM clients WHERE User = :userid;';
    UniQuery1.ParamByName('userid').AsString := UserID;
    UniQuery1.Execute;

    UniQuery2.SQL.Text := 'SELECT * FROM order_status;';
    UniQuery2.Execute;

    UniQuery3.SQL.Text := 'SELECT * FROM whereclientfrom;';
    UniQuery3.Execute;

    UniQuery6.SQL.Text := 'SELECT * FROM orders WHERE User = :userid;';
    UniQuery6.ParamByName('userid').AsString := UserID;
    UniQuery6.Execute;

    UniQuery7.SQL.Text := 'SELECT * FROM ordertypes;';
    UniQuery7.Execute;

    UniQuery8.SQL.Text := 'SELECT * FROM clients;';
    UniQuery8.Execute;

    UniQuery9.SQL.Text := 'SELECT * FROM ordertypes;';
    UniQuery9.Execute;

    IniFile.WriteString('SignInData', 'Login', Login);
    IniFile.WriteString('SignInData', 'Password', Password);
    IniFile.Free;
    loginbefore := true;

    act();
    TabSheet3.TabVisible := FALSE;
  end
  else
  begin
    ShowMessage('Пароль и/или логин не верны!');
    exit();
  end;

  // end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  clientsRecCountbefore: Integer;
begin

  UniQuery1.Close;
  UniQuery1.SQL.Text := 'SELECT * FROM clients WHERE user_id = :userid;';
  UniQuery1.ParamByName('userid').AsString := UserID;
  UniQuery1.Execute;
  clientsRecCountbefore := clientsRecCount;
  clientsRecCount := UniQuery1.RecordCount;

  FirstClient();

  if (clientsRecCountbefore = 0) then
  begin
    OrderTab.TabVisible := true;
    SenderTab.TabVisible := true;
    ReportTab.TabVisible := true;
    UserTab.TabVisible := true;

  end;

  UniDataSource1.DataSet.Refresh;

  FirstOrder();

  UniDataSource5.DataSet.Refresh;

end;

procedure TForm1.Button8Click(Sender: TObject);
var
  filename: string;

begin
  filename := ExtractFilePath(Application.ExeName) + 'login.ini';
  DeleteFile(filename);
  Application.Terminate;

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  s, Last: string;
  i: Integer;
  x, y: Integer;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;
  curyear: Word;

begin


  // StringGrid2.RowCount:=0;
  // StringGrid2.ColCount:=0;

  for i := 0 to StringGrid2.RowCount - 1 do
    StringGrid2.Rows[i].Clear;

  Button11.Enabled := FALSE;
  Button12.Enabled := FALSE;

  curyear := YearOf(Now());

  UniQuery10.Close;
  UniQuery10.SQL.Text := '    select date_part(' + #39 + 'year' + #39 +
    ', order_create_date) years, SUM(orders.order_cost) c FROM orders WHERE user_id= :userid GROUP BY  years ORDER BY years';

  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;

  Last := '';
  x := 1;
  y := 0;

  // Button4.Visible := FALSE;
  Button9.Enabled := FALSE;
  Button11.Enabled := true;

  for i := 0 to StringGrid1.RowCount - 1 do
    StringGrid1.Rows[i].Clear;

  // sringGrid1.RowCount:=0;
  // StringGrid1.ColCount:=0;

  StringGrid1.RowCount := UniDataSource8.DataSet.FieldCount + 1;
  StringGrid1.ColCount := 2;
  UniDataSource8.DataSet.First;

  while (not UniDataSource8.DataSet.Eof) do
  begin

    StringGrid1.Cells[0, y] := UniDataSource8.DataSet.FieldByName
      ('years').AsString;
    StringGrid1.Cells[1, y] := UniDataSource8.DataSet.FieldByName('c').AsString;

    inc(y);
    UniDataSource8.DataSet.Next;

  end;

  UniQuery10.Close;
  UniQuery10.SQL.Text := 'select date_part(' + #39 + 'month' + #39 +
    ', order_create_date) M, SUM(orders.order_cost) c FROM orders WHERE user_id=:userid AND date_part('
    + #39 + 'year' + #39 + ', order_create_date)=:cy GROUP BY  M ORDER BY M';

  UniQuery10.ParamByName('cy').AsString := inttostr(curyear);
  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;

  Last := '';
  x := 1;
  y := 0;

  // Button4.Visible := FALSE;
  // Button9.Enabled:=false;
  // Button11.Enabled:=true;

  for i := 0 to StringGrid2.RowCount - 1 do
    StringGrid2.Rows[i].Clear;

  UniDataSource8.DataSet.Refresh;
  StringGrid2.RowCount := UniDataSource8.DataSet.FieldCount + 1;
  StringGrid2.ColCount := 2;
  UniDataSource8.DataSet.First;

  while (not UniDataSource8.DataSet.Eof) do
  begin

    StringGrid2.Cells[0, y] :=
      numbertomonth(UniDataSource8.DataSet.FieldByName('M').AsInteger);
    StringGrid2.Cells[1, y] := UniDataSource8.DataSet.FieldByName('c').AsString;

    inc(y);
    UniDataSource8.DataSet.Next;

  end;

end;

procedure TForm1.clearOptionList;
begin
  Form3.OptionsList.Enabled:= false; // выключаем список опций
  Form3.OptionsExists:=false;
  Form3.OptionsList.Items.Clear;

end;

procedure TForm1.clearordExpiredBtnClick(Sender: TObject);
begin

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'UPDATE orders SET orders.orderstatus=1 WHERE orderstatus = 2 AND orders.User = :userid AND (DATEDIFF((NOW()),(OrderRecieve)))>30';
  UniQuery10.ParamByName('userid').AsString := UserID;
  UniQuery10.ExecSQL;

  UniQuery10.Close;

  clearordExpiredBtn.Enabled := FALSE;

  ordExpiredLabel.Caption :=
    'В базе данных нет заказов с незакрытым статусом "Думает".';
  ordExpiredLabel.Font.Color := clGreen;

end;

procedure TForm1.SaveBtnClick(Sender: TObject);

var
  OrderDateTime: string;
  myDate: TDateTime;
  myTime: TDateTime;
  FinalDate: string;
  BirthdayUnknow: Integer;
  tempCost: Integer; // для преобразования стоимости если херню юзер ввел

begin
  if (MainTab.TabIndex = 2) then
  begin

    UniQuery5.SQL.Text := 'INSERT INTO orders (order_short_name,' +
      ' client, order_type, order_create_date, order_deadline, order_cost, order_status, user_id)'
      + ' VALUES (:ordName, :ordCustomer, :ordJobsType, :ordDateRecieve, :ordDate,'
      + ' :ordCost, :ordStatus, :userid)';

    UniQuery5.ParamByName('ordName').AsString := OrderName.Text;
    UniQuery5.ParamByName('ordCustomer').AsInteger :=
      CustomerArr[Customer.ItemIndex];
    // UniQuery5.ParamByName('ordJobsType').AsInteger := Jobstype.ItemIndex + 1;
    UniQuery5.ParamByName('ordJobsType').AsInteger :=
      findJobByID(Jobstype.ItemIndex + 1);

    UniQuery5.ParamByName('ordDateRecieve').AsString :=
      FormatDateTime('yyyy-mm-dd ', (RecieveDate.Date));
    UniQuery5.ParamByName('ordDate').AsString := FormatDateTime('yyyy-mm-dd ',
      (OrderDate.Date));

    if not TryStrToInt(OrderCost.Text, tempCost) then
    // Проверяем число ввели или нет
    begin
      UniQuery5.ParamByName('ordCost').AsInteger := 0;
    end
    else
    begin
      UniQuery5.ParamByName('ordCost').AsInteger := tempCost;
    end;

    // UniQuery5.ParamByName('ordCost').AsInteger := TryStrToInt(OrderCost.Text, i);
    if (orderstatus.ItemIndex = -1) then // Проверяем если ничего не выбрано
    begin
      UniQuery5.ParamByName('ordStatus').Clear;
    end
    else
    begin
      UniQuery5.ParamByName('ordStatus').AsInteger :=
        findStatusByID(orderstatus.ItemIndex + 1);
    end;
    UniQuery5.ParamByName('userid').AsInteger := StrToInt(UserID);

    UniQuery5.Execute;

    SaveBtn.Visible := FALSE;
    Button3.Enabled := true;

  end
  else
  begin

    if (birthdayunknowChkBx.Checked = true) then
      BirthdayUnknow := 1
    else
      BirthdayUnknow := 0;

    UniQuery5.SQL.Text :=
      'INSERT INTO clients (Name, Phone, Email, whereclientfrom, Birthday, user_id, date_created) VALUES (:clName, :clPhone, :clEmail, :clFrom, :clBD, :userid, :orderdate)';

    UniQuery5.ParamByName('clName').AsString := eName.Text;
    UniQuery5.ParamByName('clPhone').AsString := ePhone.Text;
    UniQuery5.ParamByName('clEmail').AsString := eEmail.Text;
    UniQuery5.ParamByName('userid').AsString := UserID;
    UniQuery5.ParamByName('clFrom').AsString :=
      inttostr(ComboBox2.ItemIndex + 1);

    UniQuery5.ParamByName('clBD').AsString := FormatDateTime('yyyy-mm-dd ',
      (TestDate.Date));

    myDate := Date;
    myTime := Time;

    FinalDate := FormatDateTime('yyyy-mm-dd ', myDate);
    OrderDateTime := FinalDate + ' ' + TimeToStr(myTime);
    UniQuery5.ParamByName('orderdate').AsString := OrderDateTime;
    // UniQuery5.ParamByName('editdate').AsString := OrderDateTime;
    UniQuery5.Execute;

    SaveBtn.Visible := FALSE;
    Button3.Enabled := true;

  end;
end;

procedure TForm1.SenderTabShow(Sender: TObject);

var
  Flags, TargetFrameName, PostData, Headers: OleVariant;

  { const
    LOCAL_PAGE ='C:/NP2/StartPage.htm'; }
begin
  // WEB ABOUT

  FIsStartPage := true;
  { Webbrowser1.Navigate('file:///' + LOCAL_PAGE);
    Webbrowser1.Navigate(ExtractFilePath(Application.ExeName)+'About\Untitled-2.html');

    //Webbrowser1.Navigate(); }
  { WebBrowser1.Navigate('http://www.borland.com', Flags,
    TargetFrameName, PostData, Headers); }
  // WebBrowser1.Navigate('C:\Users\Анатолий\Documents\Embarcadero\Studio\Projects\Win32\Debug\mind.htm');

  WebBrowser1.Navigate('http://havana-crm.su/About/About.html');

  FIsStartPage := FALSE;
  EnableOffAllButtons();

end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);

type
  TSave = record
    FontColor: TColor; // Цвет шрифта.
    FontStyle: TFontStyles; // Стиль шрифта.
    BrColor: TColor; // Цвет кисти (цвет заливки).
  end;

var
  Sg: TStringGrid;
  Save: TSave;

begin

  Sg := Sender as TStringGrid;

  with Sg.Canvas, Save do
  begin
    // Запоминаем параметры шрифта и кисти.
    FontColor := Font.Color;
    FontStyle := Font.Style;
    BrColor := Brush.Color;


    // ================================================================================

    if (ACol > 1) and (ARow > 0) then
    begin
      if StringGrid1.Cells[ACol, ARow] <> '' then
      begin
        // if StrToInt(StringGrid1.Cells[ACol,ARow])>=3 then
        if (StrToInt(StringGrid1.Cells[ACol, ARow]) >=
          StrToInt(StringGrid1.Cells[ACol - 1, ARow])) then
        begin

          Font.Color := clGreen;

          FillRect(Rect);
          TextOut(Rect.Left, Rect.Top, StringGrid1.Cells[ACol, ARow]);
        end
        else
        begin

          Font.Color := clRed;

        end;
      end;
    end;

    // ================================================================================

    // Устанавливаем новые парметры.
    { if gdSelected in State then begin //Если ячейка выделена.
      Font.Color := RGB(255, 255, 255); //Белый.
      Font.Style := Font.Style + [fsBold]; //Жирный шрифт.
      Brush.Color := RGB($66, $CC, 0); //Зелёный.
      end else if ARow < Sg.FixedRows then begin //Фиксированные строки.
      Font.Color := RGB(255, 255, 255); //Белый.
      Font.Style := Font.Style + [fsBold]; //Жирный шрифт.
      Brush.Color := RGB($CC, $99, $66); //Коричневый.
      end else if ACol < Sg.FixedCols then begin //Фиксированные столбцы.
      Font.Color := RGB(255, 255, 255); //Белый.
      Font.Style := Font.Style + [fsBold]; //Жирный шрифт.
      Brush.Color := RGB($66, $99, $CC); //Серо-синий.
      end else if ARow mod 2 = 0 then begin //Нефиксированные строки с чётными индексами.
      Font.Color := RGB(0, 0, 0); //Чёрный.
      Brush.Color := RGB($FF, $FF, $CC);  //Светло-жёлтый.
      end else begin //Нефиксированные строки с нечётными индексами.
      Font.Color := RGB(0, 0, 0); //Чёрный.
      Brush.Color := RGB($CC, $FF, $FF); //Светло-синий.
      end;
    }
    // Прорисовываем ячейку.
    // Заливаем квадрат ячейки цветом кисти.
    // FillRect(Rect);
    // Прорисовываем в ячейке текст.
    // Здесь +4 - так мы задаём ширину полей в ячейке.
    // TextOut(Rect.Left + 4, Rect.Top + 4, Sg.Cells[ACol, ARow]);

    // Восстанавливаем прежние параметры канвы.
    Font.Color := FontColor;
    Font.Style := FontStyle;
    Brush.Color := BrColor;

  end;
end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);

var
  ButtonName: string;
  myDate: TDateTime;
  myTime: TDateTime;

begin
  case Button of
    nbFirst:
      ButtonName := 'nbFirst';
    nbPrior:
      ButtonName := 'nbPrior';
    nbNext:
      ButtonName := 'nbNext';
    nbLast:
      ButtonName := 'nbLast';
    nbInsert:
      ButtonName := 'nbInsert';
    nbDelete:
      ButtonName := 'nbDelete';
    nbEdit:
      ButtonName := 'nbEdit';
    nbPost:
      ButtonName := 'nbPost';
    nbCancel:
      ButtonName := 'nbCancel';
    nbRefresh:
      ButtonName := 'nbRefresh';
  end;

  if Button = nbInsert then
  begin
    ShowMessage('SUKA');
    // DBEdit6.Field.Value := 1;
    myDate := Date;
    myTime := Time;

    // ShowMessage('myDate = ' + datetostr(myDate));
    // ShowMessage('myTime = ' + TimeToStr(myTime));
    // dbeClorderedDate.Field.value := datetostr(myDate) + ' ' + TimeToStr(myTime);

    DBEdit6.Field.value := 1;
  end;

  if Button = nbPost then
  begin

    myDate := Date;
    myTime := Time;

    // ShowMessage('myDate = ' + datetostr(myDate));
    // ShowMessage('myTime = ' + TimeToStr(myTime));
    // dbeClorderedDate.Field.value := datetostr(myDate) + ' ' + TimeToStr(myTime);
    DBEdit6.Field.value := 1;

  end;

end;

procedure TForm1.deleteBtnClick(Sender: TObject);
begin

  if (MainTab.TabIndex = 2) then
  begin

    UniQuery5.SQL.Text := 'DELETE FROM orders WHERE orders.id = :deletedid';
    UniQuery5.ParamByName('deletedid').value :=
      UniDataSource5.DataSet.FieldByName('id').AsInteger;
    UniQuery5.Execute;

    ShowMessage('Заказ удален!');

  end
  else
  begin

    UniQuery5.SQL.Text := 'DELETE FROM clients WHERE clients.id = :deletedid';
    UniQuery5.ParamByName('deletedid').value :=
      UniDataSource1.DataSet.FieldByName('id').AsInteger;
    UniQuery5.Execute;

    ShowMessage('Клиент удален!');

  end;
end;

procedure TForm1.editBtnClick(Sender: TObject);

var

  signinDate: TDateTime;
  signinTime: TDateTime;
  finalsigninDateTime: string;

begin
  if (MainTab.TabIndex = 2) then
  begin

    editBtn.Enabled := FALSE;
    UniQuery5.SQL.Text :=
      'UPDATE orders SET order_short_name = :ordName, client = :ordCustomer, order_create_date = :ordRec, order_deadline = :ordDate, order_type = :ordJobType, order_cost = :ordCost, order_status = :ordStatus WHERE orders.id = :ordID';

    UniQuery5.ParamByName('ordName').AsString := OrderName.Text;
    UniQuery5.ParamByName('ordCustomer').AsString :=
      inttostr(CustomerArr[Customer.ItemIndex]);
    UniQuery5.ParamByName('ordJobType').AsString :=
      inttostr((Jobstype.ItemIndex) + 1);

    UniQuery5.ParamByName('ordRec').AsString := FormatDateTime('yyyy-mm-dd ',
      (RecieveDate.Date));
    UniQuery5.ParamByName('ordDate').AsString := FormatDateTime('yyyy-mm-dd ',
      (OrderDate.Date));
    UniQuery5.ParamByName('ordCost').AsString := OrderCost.Text;
    UniQuery5.ParamByName('ordStatus').AsInteger :=
      findStatusByID(orderstatus.ItemIndex + 1);
    UniQuery5.ParamByName('ordID').AsString :=
      UniDataSource5.DataSet.FieldByName('id').AsString;

    UniQuery5.Execute;
    editBtn.Enabled := true;

  end
  else
  begin

    signinDate := Date;
    signinTime := Time;
    finalsigninDateTime := (FormatDateTime('yyyy-mm-dd ', signinDate)) + ' ' +
      TimeToStr(signinTime);

    editBtn.Enabled := FALSE;
    UniQuery5.SQL.Text :=
      'UPDATE clients SET Name = :clName, Phone = :clPhone, Email = :clEmail, ClientFrom = :clFrom, Birthday = :clBD WHERE clients.id = :clientid';

    UniQuery5.ParamByName('clientid').value :=
      UniDataSource1.DataSet.FieldByName('id').AsInteger;
    UniQuery5.ParamByName('clName').AsString := eName.Text;
    UniQuery5.ParamByName('clPhone').AsString := ePhone.Text;
    UniQuery5.ParamByName('clEmail').AsString := eEmail.Text;
    // UniQuery5.ParamByName('editdate').AsString := finalsigninDateTime;
    UniQuery5.ParamByName('clFrom').AsString :=
      inttostr(ComboBox2.ItemIndex + 1);
    UniQuery5.ParamByName('clBD').AsString := FormatDateTime('yyyy-mm-dd ',
      (TestDate.Date));
    UniQuery5.Execute;

    // SaveBtn.Visible := false;
    // Button3.Enabled :=true;
    editBtn.Enabled := true;

  end;
end;

{
  procedure Activate();

  var
  j: Integer;
  z: Integer;
  fromRecCount: Integer;
  statusRecCount: Integer;
  jobstypeRecCount: Integer;

  sItem: String;
  sItem2: String;
  sItemHelp: String;

  begin

  UniQuery2.ExecSQL;
  UniQuery3.ExecSQL;

  // =============================== COMBO BOX STATUS FILLING ================
  statusRecCount := UniDataSource2.DataSet.RecordCount;
  UniDataSource2.DataSet.First;
  for j := 1 to statusRecCount do
  begin

  sItem :=  UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
  sItemHelp := Format(sItem, [j]);
  //ShowMessage(sItemHelp);
  UniDataSource2.DataSet.Next;
  ComboBox1.Items.AddObject(sItem, TObject(j));
  end;
  UniDataSource2.DataSet.First;
  ComboBox1.ItemIndex :=0;

  // =============================== COMBO BOX CLIENT FROM FILLING ================
  fromRecCount := UniDataSource3.DataSet.RecordCount;
  UniDataSource3.DataSet.First;
  for z := 1 to fromRecCount do
  begin

  sItem2 :=  UniDataSource3.DataSet.FieldByName('FROM_TYPE').AsString;
  // ShowMessage(inttostr(z) + ' = ' + sItem2);
  sItemHelp := Format(sItem, [z]);
  // ShowMessage(sItemHelp);
  UniDataSource3.DataSet.Next;
  ComboBox2.Items.AddObject(sItem2, TObject(z));
  end;
  // =============================== COMBO BOX ORDER STATUS FROM FILLING ==========
  //statusRecCount := UniDataSource2.DataSet.RecordCount;


  UniDataSource2.DataSet.First;
  j:=0;
  sItem:='';
  for j := 1 to statusRecCount do
  begin

  sItem :=  UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
  sItemHelp := Format(sItem, [j]);
  //ShowMessage(sItemHelp);
  UniDataSource2.DataSet.Next;
  orderstatus.Items.AddObject(sItem, TObject(j));
  end;

  // =============================== COMBO BOX CLIENT FROM FILLING ==========

  UniQuery8.SQL.Text :='SELECT * FROM clients WHERE User = :userid;';
  UniQuery8.ParamByName('userid').AsString := UserID;

  UniQuery8.Execute;

  clientsRecCount:= UniDataSource6.DataSet.RecordCount;

  SetLength(CustomerArr, clientsRecCount);

  UniDataSource6.DataSet.First;
  j:=0;
  //z := cube(3);
  //showMessage(inttostr(z));

  z :=0;
  sItem:='';

  for j := 0 to clientsRecCount do
  begin

  sItem :=  UniDataSource6.DataSet.FieldByName('Name').AsString;
  z := UniDataSource6.DataSet.FieldByName('ID_clients').AsInteger;
  //ShowMessage(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);
  // ListBox2.Items.Add(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);

  // sItemHelp := Format(sItem, [j]);
  // ShowMessage(sItemHelp);

  CustomerArr[j] :=  z;

  Customer.Items.AddObject(sItem, TObject(j));
  UniDataSource6.DataSet.Next;

  end;




  // =============================== COMBO BOX JOBS TYPE FILLING ==========

  UniQuery9.SQL.Text :='SELECT * FROM ordertypes;';
  //UniQuery8.ParamByName('userid').AsString := UserID;
  UniQuery9.Execute;

  jobstypeRecCount:= UniDataSource7.DataSet.RecordCount;
  UniDataSource7.DataSet.First;
  j:=0;
  sItem:='';

  for j := 1 to jobstypeRecCount do
  begin

  sItem :=  UniDataSource7.DataSet.FieldByName('Jobtype').AsString;
  sItemHelp := Format(sItem, [j]);
  //ShowMessage(sItemHelp);
  UniDataSource7.DataSet.Next;
  Jobstype.Items.AddObject(sItem, TObject(j));
  end;

  UniDataSource2.DataSet.First;
  ComboBox1.ItemIndex :=0;

  UniDataSource3.DataSet.First;
  ComboBox2.ItemIndex :=0;

  UniDataSource6.DataSet.First;
  UniDataSource7.DataSet.First;
  Customer.ItemIndex :=0;
  orderstatus.ItemIndex :=0;
  Jobstype.ItemIndex :=0;





  end;
}
procedure TForm1.FormActivate(Sender: TObject);

{ var
  j: Integer;
  z: Integer;
  fromRecCount: Integer;
  statusRecCount: Integer;
  jobstypeRecCount: Integer;

  sItem: String;
  sItem2: String;
  sItemHelp: String;
}
begin
  {
    UniQuery2.ExecSQL;
    UniQuery3.ExecSQL;

    // =============================== COMBO BOX STATUS FILLING ================
    statusRecCount := UniDataSource2.DataSet.RecordCount;
    UniDataSource2.DataSet.First;
    for j := 1 to statusRecCount do
    begin

    sItem :=  UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
    sItemHelp := Format(sItem, [j]);
    //ShowMessage(sItemHelp);
    UniDataSource2.DataSet.Next;
    ComboBox1.Items.AddObject(sItem, TObject(j));
    end;
    UniDataSource2.DataSet.First;
    ComboBox1.ItemIndex :=0;

    // =============================== COMBO BOX CLIENT FROM FILLING ================
    fromRecCount := UniDataSource3.DataSet.RecordCount;
    UniDataSource3.DataSet.First;
    for z := 1 to fromRecCount do
    begin

    sItem2 :=  UniDataSource3.DataSet.FieldByName('FROM_TYPE').AsString;
    // ShowMessage(inttostr(z) + ' = ' + sItem2);
    sItemHelp := Format(sItem, [z]);
    // ShowMessage(sItemHelp);
    UniDataSource3.DataSet.Next;
    ComboBox2.Items.AddObject(sItem2, TObject(z));
    end;
    // =============================== COMBO BOX ORDER STATUS FROM FILLING ==========
    //statusRecCount := UniDataSource2.DataSet.RecordCount;


    UniDataSource2.DataSet.First;
    j:=0;
    sItem:='';
    for j := 1 to statusRecCount do
    begin

    sItem :=  UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
    sItemHelp := Format(sItem, [j]);
    //ShowMessage(sItemHelp);
    UniDataSource2.DataSet.Next;
    orderstatus.Items.AddObject(sItem, TObject(j));
    end;

    // =============================== COMBO BOX CLIENT FROM FILLING ==========

    UniQuery8.SQL.Text :='SELECT * FROM clients WHERE User = :userid;';
    UniQuery8.ParamByName('userid').AsString := UserID;

    UniQuery8.Execute;

    clientsRecCount:= UniDataSource6.DataSet.RecordCount;

    SetLength(CustomerArr, clientsRecCount);

    UniDataSource6.DataSet.First;
    j:=0;
    //z := cube(3);
    //showMessage(inttostr(z));

    z :=0;
    sItem:='';

    for j := 0 to clientsRecCount do
    begin

    sItem :=  UniDataSource6.DataSet.FieldByName('Name').AsString;
    z := UniDataSource6.DataSet.FieldByName('ID_clients').AsInteger;
    //ShowMessage(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);
    // ListBox2.Items.Add(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);

    // sItemHelp := Format(sItem, [j]);
    // ShowMessage(sItemHelp);

    CustomerArr[j] :=  z;

    Customer.Items.AddObject(sItem, TObject(j));
    UniDataSource6.DataSet.Next;

    end;




    // =============================== COMBO BOX JOBS TYPE FILLING ==========

    UniQuery9.SQL.Text :='SELECT * FROM ordertypes;';
    //UniQuery8.ParamByName('userid').AsString := UserID;
    UniQuery9.Execute;

    jobstypeRecCount:= UniDataSource7.DataSet.RecordCount;
    UniDataSource7.DataSet.First;
    j:=0;
    sItem:='';

    for j := 1 to jobstypeRecCount do
    begin

    sItem :=  UniDataSource7.DataSet.FieldByName('Jobtype').AsString;
    sItemHelp := Format(sItem, [j]);
    //ShowMessage(sItemHelp);
    UniDataSource7.DataSet.Next;
    Jobstype.Items.AddObject(sItem, TObject(j));
    end;

    UniDataSource2.DataSet.First;
    ComboBox1.ItemIndex :=0;

    UniDataSource3.DataSet.First;
    ComboBox2.ItemIndex :=0;

    UniDataSource6.DataSet.First;
    UniDataSource7.DataSet.First;
    Customer.ItemIndex :=0;
    orderstatus.ItemIndex :=0;
    Jobstype.ItemIndex :=0;

  }

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  log: string;
  test2: string;
  pass: string;
  Result1: string;
  LCount: Integer;
  i: Integer;
  strVar: string;
  Login: string;
  Password: string;

  signinDate: TDateTime;
  signinTime: TDateTime;
  finalsigninDate: string;

begin

  FBg := TBitmap.Create;
  FBg.LoadFromFile(ExtractFileDir(Application.ExeName) + '\' + 'D.bmp');

  StringGrid3.ColWidths[1] := 320;
  StringGrid3.ColWidths[2] := 170;
  StringGrid3.ColWidths[3] := 250;
  // StringGrid3.ColWidths[4]:=250;

  StringGrid3.RowHeights[0] := 70;

  log := LoginField.Text;
  pass := PasswordField.Text;

  test2 := ExtractFilePath(Application.ExeName) + 'login.ini';
  IniFile := TIniFile.Create(test2);

  if IniFile.SectionExists('SignInData') then
  // если раздел найден то показываем соответствующее сообщение

  begin
    // ShowMessage('Раздел присутствует');
    loginbefore := true;
    loginglobal := IniFile.ReadString('SignInData', 'Login',
      'ErrorIniFileReadingL!');
    passwordglobal := IniFile.ReadString('SignInData', 'Password',
      'ErrorIniFileReadingP!');
    IniFile.Free;
    Result1 := '';
    Login := loginglobal;
    Password := passwordglobal;

    UniQuery4.SQL.Text :=
      'SELECT * from users where login = :loginparam AND pwd = :passwordparam;';
    UniQuery4.ParamByName('loginparam').AsString := Login;
    UniQuery4.ParamByName('passwordparam').AsString := Password;
    UniQuery4.Execute;
    LCount := 0;

    while not UniQuery4.Eof do

    begin
      for i := 0 to UniQuery4.Fields.Count - 1 do
        strVar := strVar + VarToStr(UniQuery4.Fields[i].value) + ', ';
      LCount := LCount + 1;
      UniQuery4.Next;
    end;

    // if (UniQuery4.Fields[0].value = Null or UniQuery4.Fields[0].value=0) then UserID :='0';
    UserID := UniQuery4.Fields[0].AsString;

    if (UserID = '') or (UserID = Null) then
      UserID := '0';

    TabSheet2.TabVisible := true;
    TabSheet1.TabVisible := true;
    TabSheet3.TabVisible := FALSE;

    // 'SELECT * FROM clients LEFT OUTER JOIN STATUS ON clients.Status = STATUS.ID_STATUS LEFT OUTER JOIN From_Type_Table ON clients.ClientFrom = From_Type_Table.ID_FROM WHERE User = :userid;';
    UniQuery1.SQL.Text := 'SELECT * FROM clients WHERE user_id = :userid;';
    UniQuery1.ParamByName('userid').AsLargeInt := StrToInt64(UserID);
    UniQuery1.Execute;

    clientsRecCount := UniQuery1.RecordCount;

    signinDate := Date;
    signinTime := Time;
    finalsigninDate := FormatDateTime('yyyy-mm-dd ', signinDate);

    // UniQuery5.SQL.Text :=
    // 'UPDATE users SET LastVisitDate = :newdate WHERE users.ID = :uID;';
    // UniQuery5.ParamByName('uID').AsString := UserID;
    // UniQuery5.ParamByName('newdate').Value := Now;
    // UniQuery5.ParamByName('newtime').AsString := TimeToStr(signinTime);
    // UniQuery5.Execute;

    UniQuery6.SQL.Text := 'SELECT * FROM orders WHERE user_id=:uID;';
    UniQuery6.ParamByName('uID').AsString := UserID;
    UniQuery6.Execute;

    // clientsRecCount:=UniQuery6.RecordCount;
    ordersRecCount := UniQuery6.RecordCount;

    StatusBar1.Panels[0].Text := 'Клинтов всего | Текущий: ' +
      inttostr(clientsRecCount) + ' | ' + '1';
    StatusBar1.Panels[1].Text := 'Заказов всего | Текущий: ' +
      inttostr(ordersRecCount) + ' | ' + '1';

    act();

    // maintab.TabIndex:=0;

  end
  Else

  begin

    loginbefore := FALSE;
    TabSheet2.TabVisible := FALSE;
    TabSheet1.TabVisible := FALSE;
    SenderTab.TabVisible := FALSE;
    // OrderGridTab.TabVisible := FALSE;
    OrderTab.TabVisible := FALSE;
    ReportTab.TabVisible := FALSE;
    UserTab.TabVisible := FALSE;

  end;

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
  VK_LEFT :
  begin
         ShowMessage('ХУЙ');
  end;
end;
end;

procedure TForm1.getOptions4Plan(plan: Integer);
var
x: Integer;

begin
// Для начала очистка и обнуление всего

Form1.clearOptionList();


// Проверяем есть ли у плана опции, если есть, то проставляем...


Form3.orderOptions_UQ.Connection := Form1.UniConnection1;
Form3.orderOptions_UQ.SQL.Text := 'SELECT * FROM options WHERE plan_id = :planid;';
Form3.orderOptions_UQ.ParamByName('planid').AsInteger := plan;
Form3.orderOptions_UQ.Execute;
// Проверяем количество
if (Form3.orderTypes_UQ.RecordCount<1) then
begin
 Form1.noOptions();
end
else
begin   // опции есть
  Form3.OptionsExists:=true;
  Form3.OptionsList.Enabled:= true;
  Form3.OptionDesc.Enabled:= true; // включаем описание плана
  Form3.PlanPrice.Enabled:= true; // включаем поле стоимости заказа
  Form3.btnAddPlanOption.Enabled:= true; // включаем кнопку добавления новой опции
  Form3.orderOptions_UQ.First;
  for x := 0 to Form3.orderOptions_UQ.RecordCount-1 do   // Заполняем
  begin
//    Form3.OptionsList.Items.Add(Form3.UDS_options.DataSet.FieldByName('optionname').AsString);
    Form3.OptionsList.Items.AddObject(Form3.UDS_options.DataSet.FieldByName('optionname').AsString,TObject(Form3.UDS_options.DataSet.FieldByName('id').AsInteger));
    Form3.orderOptions_UQ.Next;
  end;
end;
end;

procedure TForm1.StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  r: TRect;
  Format: Word;
  C: array [0 .. 255] of Char;
  s: string;

begin

  if not(Sender is TStringGrid) then
    exit;
  BitBlt(TStringGrid(Sender).Canvas.Handle, Rect.Left, Rect.Top,
    Rect.Right - Rect.Left, Rect.Bottom - Rect.Top, FBg.Canvas.Handle,
    Rect.Left, Rect.Top, SRCCOPY);

  if gdSelected in State then
  begin
    // StringGrid3.Canvas.Brush.Color := $00940A4B;
    StringGrid3.Canvas.Font.Color := clWhite;
    StringGrid3.Canvas.FillRect(Rect);

  end;

  r := Rect;
  TStringGrid(Sender).Canvas.Brush.Style := bsClear;
  DrawText(TStringGrid(Sender).Canvas.Handle, TStringGrid(Sender).Cells[ACol,
    ARow], Length(TStringGrid(Sender).Cells[ACol, ARow]), r, DT_SINGLELINE or
    DT_VCENTER or DT_CENTER);

  { StringGrid3.Canvas.Pen.Width:=1;
    StringGrid3.Canvas.MoveTo(0, rect.Bottom);
    StringGrid3.Canvas.LineTo(rect.Right, rect.Bottom); }


  // StringGrid3.Canvas.FillRect(Rect);

  { with Sender as TStringGrid do begin
    s:=cells[acol,arow]; //сохраняем текст из ячейки
    canvas.FillRect (rect);
    //перерисовываем ячейку, здесь же можно изменить цвет
    rect.right:=rect.Right-2;
    //смещение текста внутри ячейки, можно не делать
    DrawText(canvas.handle,pchar(s),-1,Rect,
    DT_SINGLELINE OR DT_VCENTER OR DT_CENTER);



    end; }

  { with StringGrid3.Canvas do begin
    r:=StringGrid3.CellRect(acol,arow) ;
    FillRect(r);
    TextOut(r.left+((r.Right-r.Left) div 2)-(TextWidth(StringGrid3.Cells[acol,arow]) div 2),
    r.Top,StringGrid3.Cells[acol,arow]);



    end; }

end;

{ TFruit }

constructor TFruit.Create;
begin

end;

constructor TFruit.Create(orderType, orderSubType, Plan : integer);
begin
Self.orderType := orderType;
Self.orderSubType := orderSubType;
Self.Plan := Plan;
end;

end.
