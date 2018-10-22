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
  GridsEh, DBAxisGridsEh, DBGridEh, DateUtils, Vcl.OleCtrls, SHDocVw, activex,mshtml,ComObj,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, PostgreSQLUniProvider;


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
    OrderStatus: TComboBox;
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
    userinfoBirthdaylbl: TLabel;
    userinfoRegDatelbl: TLabel;
    userinfoLastVisitDatelbl: TLabel;
    userinfoLastVisitTimelbl: TLabel;
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
  private
    { Private declarations }
    procedure act();
    procedure ReportsYearClientsStat();
    procedure ReportsMonthClientsStat();
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
    UserID: Integer;
    CustomerArr: array of Integer;
  FIsStartPage: Boolean;
    clientsRecCount: Integer;
        ordersRecCount: Integer;
      FBg: TBitmap;




    // currentTab: Integer;

  end;

var
  Form1: TForm1;
  IniFile: TIniFile;



implementation

uses
   ShellApi;



{$R *.dfm}

function arraysearch(arr: array of Integer; value: Integer;
  arraylenght: Integer): Integer;
var
  found: Boolean; // TRUE � ���������� ������� � ��������� �������
  i: Integer; // ������ �������� �������

begin

  // �����
  found := FALSE; // ����� ������� ��-�� � ������� ���
  i := 0;

  // ShowMessage('� �������� - ' + inttostr(value));
  repeat
    if arr[i] = value then
    begin
      result := i;
      // ShowMessage('� ������ �������� = ' + inttostr(result));
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
      result := '���';
    1:
      result := '���';
    2:
      result := '����';
    3:
      result := '����';
    4:
      result := '����';
    5:
      result := '���';
    6:
      result := '���';
    7:
      result := '���';
    8:
      result := '���';
    9:
      result := '���';

  end;

end;

function numbertomonth(value: Integer): string;
begin

  case value of
    1:
      result := '������';
    2:
      result := '�������';
    3:
      result := '����';
    4:
      result := '������';
    5:
      result := '���';
    6:
      result := '����';
    7:
      result := '����';
    8:
      result := '������';
    9:
      result := '��������';
    10:
      result := '�������';
    11:
      result := '������';
    12:
      result := '�������';

  end;

end;



 procedure TForm1.FirstClient();
 var
  Idx: Integer;
  y: Integer;

  value: Integer;

 begin

if (clientsRecCount=0) then
begin

DBEdit1.Enabled:=true;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Button12.Enabled:=false;
Button4.Enabled:=false;
Button2.Enabled:=false;
Button3.Enabled:=true;
SaveBtn.Enabled:=true;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Button6.Enabled:=true;
editBtn.Enabled:=false;
deleteBtn.Enabled:=false;
Button1.Enabled:=false;
LastButton.Enabled:=false;

//TabSheet2.TabVisible := false;
OrderTab.TabVisible  := false;
SenderTab.TabVisible  := false;
ReportTab.TabVisible  := false;
UserTab.TabVisible  := false;


end
else
begin

UniDataSource1.DataSet.First;

    if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
    else
      birthdayunknowChkBx.Checked := FALSE;

StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    eOrderedDate.Text := UniDataSource1.DataSet.FieldByName
      ('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status')
      .AsInteger) - 1;
    ComboBox2.ItemIndex := (UniDataSource1.DataSet.FieldByName('ClientFrom')
      .AsInteger) - 1;

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

    OrderName.Text := UniDataSource5.DataSet.FieldByName('OrderName').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('OrderCost').AsString;
    OrderStatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('OrderStatus')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('Customer').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('JobType')
      .AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('Customer').AsString;

    if (UniDataSource5.DataSet.FieldByName('OrderRecieve').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('OrderRecieve')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('OrderDate').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('OrderDate').AsString);

StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);


end;

procedure TForm1.EnableOffAllButtons();

begin

DBEdit1.Enabled:=false;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Button12.Enabled:=false;
Button4.Enabled:=false;
Button2.Enabled:=false;
Button3.Enabled:=false;
SaveBtn.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Button6.Enabled:=false;
editBtn.Enabled:=false;
deleteBtn.Enabled:=false;
Button1.Enabled:=false;
LastButton.Enabled:=false;

end;

procedure TForm1.EnableOnOrdButtons();

begin

DBEdit1.Enabled:=true;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Button12.Enabled:=false;
Button4.Enabled:=true;
Button2.Enabled:=true;
Button3.Enabled:=true;
SaveBtn.Enabled:=true;
Edit1.Enabled:=true;
Edit2.Enabled:=true;
Button6.Enabled:=true;
editBtn.Enabled:=true;
deleteBtn.Enabled:=true;
Button1.Enabled:=true;
LastButton.Enabled:=true;

//OrderTab.TabVisible  := true;
//SenderTab.TabVisible  := true;
//ReportTab.TabVisible  := true;
//UserTab.TabVisible  := true;

end;

procedure TForm1.EnableOffRepButtons();

begin

DBEdit1.Enabled:=false;
Button9.Enabled:=true;
Button11.Enabled:=true;
Button10.Enabled:=true;
Button12.Enabled:=true;
Button4.Enabled:=false;
Button2.Enabled:=false;
Button3.Enabled:=false;
SaveBtn.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Button6.Enabled:=false;
editBtn.Enabled:=false;
deleteBtn.Enabled:=false;
Button1.Enabled:=false;
LastButton.Enabled:=false;

end;


procedure TForm1.SummaryReport();
var
  s, Last: string;
  i, yearscount: Integer;
  x, y: Integer;
  curyear: Word;
  allLeads, successLeads, injobLeads, refusedLeads: Integer;
var MyGrid: TStringGrid;

begin




  for i := 0 to StringGrid3.RowCount - 1 do
    StringGrid3.Rows[i].Clear;

  //    curyear := YearOf(Now());

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'SELECT idOrder, OrderName, OrderDate, STATUS_TYPE FROM Orders LEFT OUTER JOIN STATUS ON Orders.OrderStatus = STATUS.ID_STATUS WHERE USER = :userid AND (year(`OrderDate`) = YEAR(NOW())) AND (STATUS.RF>0) AND (STATUS.RF<11) ORDER BY STATUS.RF DESC';

     //;

  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
//  UniQuery10.ParamByName('cy').AsString := inttostr(curyear);

  UniQuery10.ExecSQL;

  StringGrid3.Cells[0, 0] := '� ���.';
  StringGrid3.Cells[1, 0] := '�����';
  StringGrid3.Cells[2, 0] := '���� ������';
    StringGrid3.Cells[3, 0] := '������';


       x:=1;
  while (not UniQuery10.Eof) do
  begin

StringGrid3.Cells[0, x] := UniQuery10.FieldByName('idOrder').AsString;
StringGrid3.Cells[1, x] := UniQuery10.FieldByName('OrderName').AsString;
StringGrid3.Cells[2, x] := UniQuery10.FieldByName('OrderDate').AsString;
StringGrid3.Cells[3, x] := UniQuery10.FieldByName('STATUS_TYPE').AsString;

UniQuery10.Next;

  inc(x);
  end;

//StringGrid3.Col:=0;
//StringGrid3.FixedRows:=0;
StringGrid3.Col:=2;
//StringGrid3.Row:=2;



end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin

FirstClient();

//EnableOffAllButtons();

//EnableOnOrdButtons();

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


//SELECT * FROM `Users` WHERE ID = 2


UniQuery11.Close;
UniQuery11.SQL.Text :='SELECT * FROM `Users` WHERE ID = :userid';
UniQuery11.ParamByName('userid').AsString := inttostr(UserID);
UniQuery11.ExecSQL;

userinfoNamelbl.Caption:='��� ������������:  ' + UniQuery11.FieldByName('Name').AsString;
userinfoLoginlbl.Caption:='�����:  ' + UniQuery11.FieldByName('Login').AsString;
userinfoPasswordlbl.Caption:='������:  ' + UniQuery11.FieldByName('Password').AsString;
userinfoEmaillbl.Caption:='Email:  ' + UniQuery11.FieldByName('Email').AsString;
userinfoBirthdaylbl.Caption:='���� ��������:  ' + UniQuery11.FieldByName('Birthday').AsString;
userinfoRegDatelbl.Caption:='���� �����������:  ' + UniQuery11.FieldByName('RegDate').AsString;
userinfoLastVisitDatelbl.Caption:='���� ���������� ������:  ' + UniQuery11.FieldByName('LastVisitDate').AsString;
userinfoLastVisitTimelbl.Caption:='����� ���������� ������:  ' + UniQuery11.FieldByName('LastVisitTime').AsString;


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
     Cancel := True;
     ShellExecute(Application.Handle, 'open', PChar(newURL), nil, nil, SW_NORMAL);
   end;





end;

procedure TForm1.ReportsMonthClientsStat();

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
  UniQuery10.SQL.Text :=
    'select MONTH(`OrderDate`) m, year(`OrderDate`) y, OrderStatus os, COUNT(OrderStatus) Count, STATUS_TYPE FROM Orders LEFT OUTER JOIN STATUS ON Orders.OrderStatus = STATUS.ID_STATUS WHERE year(`OrderDate`)=:cy AND USER=:userid GROUP BY  m, os ORDER BY m';
  // select MONTH(`OrderDate`) m, year(`OrderDate`) y, OrderStatus os, COUNT(OrderStatus) Count, STATUS_TYPE FROM Orders LEFT OUTER JOIN STATUS ON Orders.OrderStatus = STATUS.ID_STATUS WHERE year(`OrderDate`)='2017' AND USER=:userid GROUP BY  m, os ORDER BY m;

  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
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

  StringGrid2.Cells[0, 1] := '����� �����'; // allLeads
  StringGrid2.Cells[0, 2] := '������� �������'; // 5, 6, 7  - successLeads
  StringGrid2.Cells[0, 3] := '�� ��������'; // 1     - refusedLeads
  StringGrid2.Cells[0, 4] := '� ������'; // 2, 3, 4 - injobLeads
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
            refusedLeads := UniDataSource8.DataSet.FieldByName('Count')
              .AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('Count').AsInteger;
          end;
        3:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('Count').AsInteger;
          end;
        4:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('Count').AsInteger;
          end;
        5:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('Count')
              .AsInteger;
          end;
        6:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('Count')
              .AsInteger;
          end;
        7:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('Count')
              .AsInteger;
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
            refusedLeads := UniDataSource8.DataSet.FieldByName('Count')
              .AsInteger;
          end;
        2:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
          end;
        3:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
          end;
        4:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
          end;
        5:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
          end;
        6:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
          end;
        7:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('Count').AsInteger;
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

procedure TForm1.ReportsYearClientsStat();

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

  UniQuery10.SQL.Text :=
    'SELECT year(`OrderDate`) Y FROM Orders WHERE USER=:userid GROUP BY  y ORDER BY y';

  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;
  yearscount := UniQuery10.RecordCount;

  UniQuery10.Close;

  UniQuery10.SQL.Text :=
    'SELECT year(OrderDate) d, OrderStatus os, COUNT(OrderStatus) s, STATUS_TYPE FROM Orders LEFT OUTER JOIN STATUS ON Orders.OrderStatus = STATUS.ID_STATUS WHERE User = :userid GROUP BY  d, os ORDER BY d';
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;

  Last := '';
  x := 1;
  y := 0;
  allLeads := 0;
  successLeads := 0;
  injobLeads := 0;
  refusedLeads := 0;

  // Button4.Visible := FALSE;

  { for i := 0 to 29 do
    begin
    s := yearending(i);
    ListBox1.Items.Add('� ���� ���� ���������� �� ' + inttostr(i) + ' ' + s);
    end;
  }

  s := yearending(yearscount);
  rptlblYearStatistic.Caption := '� ���� ���� ���������� �� ' +
    inttostr(yearscount) + ' ' + s;

  for i := 0 to 5 do
    StringGrid1.RowCount := StringGrid1.RowCount + 1;

  StringGrid1.Cells[0, 1] := '����� �����'; // allLeads
  StringGrid1.Cells[0, 2] := '������� �������'; // 5, 6, 7  - successLeads
  StringGrid1.Cells[0, 3] := '�� ��������'; // 1     - refusedLeads
  StringGrid1.Cells[0, 4] := '� ������'; // 2, 3, 4 - injobLeads
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
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        2:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        3:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        4:
          begin
            injobLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        5:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        6:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        7:
          begin
            successLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
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
            refusedLeads := UniDataSource8.DataSet.FieldByName('s').AsInteger;
          end;
        2:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName('s')
              .AsInteger;
          end;
        3:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName('s')
              .AsInteger;
          end;
        4:
          begin
            injobLeads := injobLeads + UniDataSource8.DataSet.FieldByName('s')
              .AsInteger;
          end;
        5:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('s').AsInteger;
          end;
        6:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('s').AsInteger;
          end;
        7:
          begin
            successLeads := successLeads + UniDataSource8.DataSet.FieldByName
              ('s').AsInteger;
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

  UniQuery10.SQL.Text :=
    'SELECT * FROM Orders  WHERE OrderStatus = 2 AND Orders.User = :userid AND (DATEDIFF((NOW()),(OrderRecieve)))>30';
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;

  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin
    ordExpiredLabel.Font.Color := clRed;
    clearordExpiredBtn.Enabled := true;
    ordExpiredLabel.Caption := '� ���� ������ ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' ��������/� � ���������� �������� ������!';

  end;

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'SELECT Orders.OrderName, Orders.OrderStatus, Clients.Status, Clients.Name FROM Orders LEFT OUTER JOIN Clients ON Orders.Customer = Clients.ID_Clients WHERE Orders.User = :userid AND Orders.OrderStatus <> Clients.Status';
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;
  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin
    ordandclntNotEqlbl.Font.Color := clRed;
    ordandclntNotEqlbl.Caption := '� ���� ������ ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' �������� � �� ������� � ������������������ ���������!';

  end;

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'SELECT * FROM Orders  WHERE OrderStatus > 2 AND OrderStatus <> 6 AND OrderStatus <> 7   AND Orders.User = :userid AND (DATEDIFF((NOW()),(Orders.ChangeDate)))>60';
  // ;
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;
  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin

    ordstatusexplbl.Font.Color := clRed;
    ordstatusexplbl.Caption := '� ���� ������ ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' ������� � ������������� ���������!';

  end;

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'SELECT * FROM Clients  WHERE Status > 2 AND Status <> 6 AND Status <> 7   AND User = :userid AND (DATEDIFF((NOW()),(Clients.EditDateTime)))>60';
  // ;
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;
  UniDataSource8.DataSet.Refresh;

  if (UniDataSource8.DataSet.RecordCount > 0) then
  begin

    clntstatusexplbl.Font.Color := clRed;
    clntstatusexplbl.Caption := '� ���� ������ ' +
      inttostr(UniDataSource8.DataSet.RecordCount) +
      ' �������� � ������������� ���������!';

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
  // UniQuery10.ExecSQL;

  // =============================== COMBO BOX STATUS FILLING ================
  statusRecCount := UniDataSource2.DataSet.RecordCount;
  UniDataSource2.DataSet.First;
  for j := 1 to statusRecCount do
  begin

    sItem := UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
    sItemHelp := Format(sItem, [j]);
    // ShowMessage(sItemHelp);
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

    sItem2 := UniDataSource3.DataSet.FieldByName('FROM_TYPE').AsString;
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

    sItem := UniDataSource2.DataSet.FieldByName('STATUS_TYPE').AsString;
    sItemHelp := Format(sItem, [j]);

    UniDataSource2.DataSet.Next;
    OrderStatus.Items.AddObject(sItem, TObject(j));
  end;

  // =============================== COMBO BOX CLIENT FILLING ==========

  UniQuery8.SQL.Text := 'SELECT * FROM CRM.Clients WHERE User = :userid;';
  UniQuery8.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery8.Execute;

  clientsRecCount := UniDataSource6.DataSet.RecordCount;
  if (clientsRecCount = 0) then
  begin

 // Customer.Items.AddObject('�������� ��������', TObject(0));
 // Customer.ItemIndex := 0;
 // Customer.Enabled:=false;

  DBEdit1.Enabled:=true;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Button12.Enabled:=false;
Button4.Enabled:=false;
Button2.Enabled:=false;
Button3.Enabled:=true;
SaveBtn.Enabled:=true;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Button6.Enabled:=true;
editBtn.Enabled:=false;
deleteBtn.Enabled:=false;
Button1.Enabled:=false;
LastButton.Enabled:=false;

//TabSheet2.TabVisible := false;
OrderTab.TabVisible  := false;
SenderTab.TabVisible  := false;
ReportTab.TabVisible  := false;
UserTab.TabVisible  := false;
MainTab.TabIndex := 1;



  end
  else
  begin

  SetLength(CustomerArr, clientsRecCount);

  UniDataSource6.DataSet.First;
  j := 0;
  z := 0;
  sItem := '';

  for j := 0 to clientsRecCount-1 do
  begin

    sItem := UniDataSource6.DataSet.FieldByName('Name').AsString;
    z := UniDataSource6.DataSet.FieldByName('ID_Clients').AsInteger;

    CustomerArr[j] := z;

    Customer.Items.AddObject(sItem, TObject(j));
    UniDataSource6.DataSet.Next;

  end;

  end;


  // =============================== COMBO BOX JOBS TYPE FILLING ==========

  UniQuery9.SQL.Text := 'SELECT * FROM CRM.JOBSTYPE;';
  // UniQuery8.ParamByName('userid').AsString := IntToStr(UserID);
  UniQuery9.Execute;

  jobstypeRecCount := UniDataSource7.DataSet.RecordCount;
  UniDataSource7.DataSet.First;
  j := 0;
  sItem := '';

  for j := 1 to jobstypeRecCount do
  begin

    sItem := UniDataSource7.DataSet.FieldByName('Jobtype').AsString;
    sItemHelp := Format(sItem, [j]);
    // ShowMessage(sItemHelp);
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
  OrderStatus.ItemIndex := 0;
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



    // =========================== ������ ��� ================================

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


    // =========================== ������ ��� ================================

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

  ReportsYearClientsStat();
  ReportsMonthClientsStat();
  Button9.Enabled := true;
  Button11.Enabled := FALSE;

end;

procedure TForm1.Button12Click(Sender: TObject);
begin

  // =========================== ���������� ��� ================================

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

  ReportsYearClientsStat();
  ReportsMonthClientsStat();

  Button10.Enabled := true;
  Button12.Enabled := FALSE;

  Button9.Enabled := true;
  Button11.Enabled := FALSE;



  // =========================== ========== ================================

end;

procedure TForm1.Button1Click(Sender: TObject);

var
  Idx: Integer;
  y: Integer;

  value: Integer;
  ListIndex: Integer;
  CustomerID: Integer;

begin

  if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.Next;
    // ShowMessage(inttostr(Jobstype.ItemIndex));

    OrderName.Text := UniDataSource5.DataSet.FieldByName('OrderName').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('OrderCost').AsString;
    OrderStatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('OrderStatus')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('Customer').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('JobType')
      .AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('Customer').AsString;

    if (UniDataSource5.DataSet.FieldByName('OrderRecieve').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('OrderRecieve')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('OrderDate').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('OrderDate').AsString);

//    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
//    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

    //clientsRecCount:=UniQuery6.RecordCount;
//ordersRecCount:=UniQuery6.RecordCount;

//StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + '1';
StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);



  end
  else
  begin

    UniDataSource1.DataSet.Next;

    if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
    else
      birthdayunknowChkBx.Checked := FALSE;

    Edit1.Text := inttostr(UniDataSource1.DataSet.RecNo);
    Edit2.Text := inttostr(UniDataSource1.DataSet.RecordCount);


      //clientsRecCount:=UniQuery6.RecordCount;
//ordersRecCount:=UniQuery6.RecordCount;

StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + inttostr(UniDataSource1.DataSet.RecNo);
//StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);




    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    eOrderedDate.Text := UniDataSource1.DataSet.FieldByName
      ('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status')
      .AsInteger) - 1;
    ComboBox2.ItemIndex := (UniDataSource1.DataSet.FieldByName('ClientFrom')
      .AsInteger) - 1;

    Idx := ComboBox1.ItemIndex;
    value := Integer(ComboBox1.Items.Objects[Idx]);

    // eName.Text := inttostr(value);

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Idx: Integer;
  y: Integer;
  value: Integer;
  ListIndex: Integer;
  CustomerID: Integer;

begin
  if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.Prior;
    // UniDataSource5.DataSet.Next;
    OrderName.Text := UniDataSource5.DataSet.FieldByName('OrderName').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('OrderCost').AsString;
    OrderStatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('OrderStatus')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('Customer').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('JobType')
      .AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('Customer').AsString;

    if (UniDataSource5.DataSet.FieldByName('OrderRecieve').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('OrderRecieve')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('OrderDate').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('OrderDate').AsString);

//    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
//    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);
    StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.Prior;

//    Edit1.Text := inttostr(UniDataSource1.DataSet.RecNo);
 //   Edit2.Text := inttostr(UniDataSource1.DataSet.RecordCount);
    StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + inttostr(UniDataSource1.DataSet.RecNo);

    if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
    else
      birthdayunknowChkBx.Checked := FALSE;

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    eOrderedDate.Text := UniDataSource1.DataSet.FieldByName
      ('OrderDateTime').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status')
      .AsInteger) - 1;
    ComboBox2.ItemIndex := (UniDataSource1.DataSet.FieldByName('ClientFrom')
      .AsInteger) - 1;

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
    // OrderPreCost.text := '';
    OrderCost.Text := '';
    OrderStatus.Text := '';
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
    //DBLCBClFrom.KeyValue := NULL;
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

begin

  if (MainTab.TabIndex = 2) then
  begin

//    UniDataSource5.DataSet.Prior;
    UniDataSource5.DataSet.Last;
    // UniDataSource5.DataSet.Next;
    OrderName.Text := UniDataSource5.DataSet.FieldByName('OrderName').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('OrderCost').AsString;
    OrderStatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('OrderStatus')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('Customer').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('JobType')
      .AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('Customer').AsString;

    if (UniDataSource5.DataSet.FieldByName('OrderRecieve').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('OrderRecieve')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('OrderDate').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('OrderDate').AsString);

    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

    StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

    UniDataSource1.DataSet.Last;

    if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
      birthdayunknowChkBx.Checked := true
    else
      birthdayunknowChkBx.Checked := FALSE;

//    Edit1.Text := inttostr(UniDataSource1.DataSet.RecNo);
//    Edit2.Text := inttostr(UniDataSource1.DataSet.RecordCount);
    StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + inttostr(UniDataSource1.DataSet.RecNo);

    eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
    ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
    eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
    eOrderedDate.Text := UniDataSource1.DataSet.FieldByName
      ('OrderDateTime').AsString;
    // eBirthday.Text := UniDataSource1.DataSet.FieldByName('Birthday').AsString;
    // eStatus.Text := UniDataSource1.DataSet.FieldByName('Status').AsString;
    // eFrom.Text := UniDataSource1.DataSet.FieldByName('ClientFrom').AsString;

    if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
      TestDate.Date := Date
    else
      TestDate.Date := StrToDateTime
        (UniDataSource1.DataSet.FieldByName('Birthday').AsString);

    ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status')
      .AsInteger) - 1;
    ComboBox2.ItemIndex := (UniDataSource1.DataSet.FieldByName('ClientFrom')
      .AsInteger) - 1;

  end;
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


  ReportsYearClientsStat();
  ReportsMonthClientsStat();
  SummaryReport();
  EnableOffRepButtons();

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  result: string;
  LCount: Integer;
  ListIndex: Integer;
  CustomerID: Integer;

begin

if (MainTab.TabIndex = 2) then
  begin

    UniDataSource5.DataSet.First;
//    UniDataSource5.DataSet.Last;
    // UniDataSource5.DataSet.Next;
    OrderName.Text := UniDataSource5.DataSet.FieldByName('OrderName').AsString;
    OrderCost.Text := UniDataSource5.DataSet.FieldByName('OrderCost').AsString;
    OrderStatus.ItemIndex := (UniDataSource5.DataSet.FieldByName('OrderStatus')
      .AsInteger) - 1;

    ListIndex := 0;
    CustomerID := UniDataSource5.DataSet.FieldByName('Customer').AsInteger;
    ListIndex := arraysearch(CustomerArr, CustomerID, clientsRecCount);

    if (ListIndex = -1) then
      Customer.Text := ''
    else
      Customer.ItemIndex := ListIndex;

    Jobstype.ItemIndex := (UniDataSource5.DataSet.FieldByName('JobType')
      .AsInteger) - 1;
    Edit4.Text := UniDataSource5.DataSet.FieldByName('Customer').AsString;

    if (UniDataSource5.DataSet.FieldByName('OrderRecieve').AsString) = '' then
      RecieveDate.Date := Date
    else
      RecieveDate.Date :=
        StrToDateTime(UniDataSource5.DataSet.FieldByName('OrderRecieve')
        .AsString);

    if (UniDataSource5.DataSet.FieldByName('OrderDate').AsString) = '' then
      OrderDate.Date := Date
    else
      OrderDate.Date := StrToDateTime
        (UniDataSource5.DataSet.FieldByName('OrderDate').AsString);

//    Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
//    Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

    StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + inttostr(UniDataSource5.DataSet.RecNo);

  end
  else
  begin

UniDataSource1.DataSet.First;

//  Edit1.Text := inttostr(UniDataSource1.DataSet.RecNo);
//  Edit2.Text := inttostr(UniDataSource1.DataSet.RecordCount);
  StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + inttostr(UniDataSource1.DataSet.RecNo);

  if (UniDataSource1.DataSet.FieldByName('BirthdayUnknow').AsInteger = 1) then
    birthdayunknowChkBx.Checked := true
  else
    birthdayunknowChkBx.Checked := FALSE;

  Edit1.Text := inttostr(UniDataSource5.DataSet.RecNo);
  Edit2.Text := inttostr(UniDataSource5.DataSet.RecordCount);

  eName.Text := UniDataSource1.DataSet.FieldByName('Name').AsString;
  ePhone.Text := UniDataSource1.DataSet.FieldByName('Phone').AsString;
  eEmail.Text := UniDataSource1.DataSet.FieldByName('Email').AsString;
  eOrderedDate.Text := UniDataSource1.DataSet.FieldByName
    ('OrderDateTime').AsString;
  // eBirthday.Text := UniDataSource1.DataSet.FieldByName('Birthday').AsString;
  // eStatus.Text := UniDataSource1.DataSet.FieldByName('Status').AsString;
  // eFrom.Text := UniDataSource1.DataSet.FieldByName('ClientFrom').AsString;

  if (UniDataSource1.DataSet.FieldByName('Birthday').AsString) = '' then
    TestDate.Date := Date
  else
    TestDate.Date := StrToDateTime(UniDataSource1.DataSet.FieldByName
      ('Birthday').AsString);

  ComboBox1.ItemIndex := (UniDataSource1.DataSet.FieldByName('Status')
    .AsInteger) - 1;
  ComboBox2.ItemIndex := (UniDataSource1.DataSet.FieldByName('ClientFrom')
    .AsInteger) - 1;
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

  //Login := '2';
 // Password := '2';

//SELECT * from users where users.login = '1' AND pwd = '1'
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
    //OrderGridTab.TabVisible := true;
    OrderTab.TabVisible := true;
    ReportTab.TabVisible := true;
    UserTab.TabVisible := true;

    UniQuery1.SQL.Text := 'SELECT * FROM CRM.Clients WHERE User = :userid;';
    UniQuery1.ParamByName('userid').AsInteger := UserID;
    UniQuery1.Execute;

    UniQuery2.SQL.Text := 'SELECT * FROM CRM.STATUS;';
    UniQuery2.Execute;

    UniQuery3.SQL.Text := 'SELECT * FROM CRM.From_Type_Table;';
    UniQuery3.Execute;

    UniQuery6.SQL.Text := 'SELECT * FROM Orders WHERE User = :userid;';
    UniQuery6.ParamByName('userid').AsInteger := UserID;
    UniQuery6.Execute;

    UniQuery7.SQL.Text := 'SELECT * FROM CRM.JOBSTYPE;';
    UniQuery7.Execute;

    UniQuery8.SQL.Text := 'SELECT * FROM Clients;';
    UniQuery8.Execute;

    UniQuery9.SQL.Text := 'SELECT * FROM CRM.JOBSTYPE;';
    UniQuery9.Execute;

    IniFile.WriteString('SignInData', 'Login', Login);
    IniFile.WriteString('SignInData', 'Password', Password);
    IniFile.Free;
    loginbefore := true;

    act();
            TabSheet3.TabVisible := false;
  end
  else
  begin
    ShowMessage('������ �/��� ����� �� �����!');
    exit();
  end;

  // end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
clientsRecCountbefore: integer;
begin

UniQuery1.Close;
UniQuery1.SQL.Text :=
      'SELECT * FROM Clients LEFT OUTER JOIN STATUS ON Clients.Status = STATUS.ID_STATUS LEFT OUTER JOIN From_Type_Table ON Clients.ClientFrom = From_Type_Table.ID_FROM WHERE User = :userid;';
    UniQuery1.ParamByName('userid').AsInteger := UserID;
    UniQuery1.Execute;
    clientsRecCountbefore:=clientsRecCount;
    clientsRecCount:=UniQuery1.RecordCount;
//ShowMessage(inttostr(clientsRecCount));

FirstClient();

if (clientsRecCountbefore=0) then
begin
OrderTab.TabVisible  := true;
SenderTab.TabVisible  := true;
ReportTab.TabVisible  := true;
UserTab.TabVisible  := true;


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
  UniQuery10.SQL.Text :=
    'select year(`OrderDate`) year, SUM(OrderCost) cost FROM Orders WHERE USER= :userid GROUP BY  year ORDER BY year';

  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
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
      ('year').AsString;
    StringGrid1.Cells[1, y] := UniDataSource8.DataSet.FieldByName
      ('cost').AsString;

    inc(y);
    UniDataSource8.DataSet.Next;

  end;

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'select MONTH(`OrderDate`) M, SUM(OrderCost) cost FROM Orders WHERE USER=:userid AND year(`OrderDate`)=:cy GROUP BY  M ORDER BY M';
  UniQuery10.ParamByName('cy').AsString := inttostr(curyear);
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
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
    StringGrid2.Cells[1, y] := UniDataSource8.DataSet.FieldByName
      ('cost').AsString;

    inc(y);
    UniDataSource8.DataSet.Next;

  end;

end;

procedure TForm1.clearordExpiredBtnClick(Sender: TObject);
begin

  UniQuery10.Close;
  UniQuery10.SQL.Text :=
    'UPDATE Orders SET Orders.OrderStatus=1 WHERE OrderStatus = 2 AND Orders.User = :userid AND (DATEDIFF((NOW()),(OrderRecieve)))>30';
  UniQuery10.ParamByName('userid').AsString := inttostr(UserID);
  UniQuery10.ExecSQL;

  UniQuery10.Close;

  clearordExpiredBtn.Enabled := FALSE;

  ordExpiredLabel.Caption :=
    '� ���� ������ ��� ������� � ���������� �������� "������".';
  ordExpiredLabel.Font.Color := clGreen;

end;

procedure TForm1.SaveBtnClick(Sender: TObject);

var
  OrderDateTime: string;
  myDate: TDateTime;
  myTime: TDateTime;
  FinalDate: string;
  BirthdayUnknow: Integer;

begin
  if (MainTab.TabIndex = 2) then
  begin

    UniQuery5.SQL.Text :=
      'INSERT INTO CRM.Orders (idOrder, OrderName, Customer, JobType, OrderRecieve, OrderDate, OrderCost, OrderStatus, User) VALUES (NULL, :ordName, :ordCustomer, :ordJobsType, :ordDateRecieve, :ordDate, :ordCost, :ordStatus, :userid)';

    UniQuery5.ParamByName('ordName').AsString := OrderName.Text;
    UniQuery5.ParamByName('ordCustomer').AsString :=
      inttostr(CustomerArr[Customer.ItemIndex]);
    UniQuery5.ParamByName('ordJobsType').AsString :=
      inttostr((Jobstype.ItemIndex) + 1);
    UniQuery5.ParamByName('userid').AsString := inttostr(UserID);
    UniQuery5.ParamByName('ordDateRecieve').AsString :=
      FormatDateTime('yyyy-mm-dd ', (RecieveDate.Date));
    UniQuery5.ParamByName('ordDate').AsString := FormatDateTime('yyyy-mm-dd ',
      (OrderDate.Date));
    UniQuery5.ParamByName('ordCost').AsString := OrderCost.Text;
    UniQuery5.ParamByName('ordStatus').AsString :=
      inttostr(OrderStatus.ItemIndex);

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
      'INSERT INTO CRM.Clients (ID_Clients, Name, Phone, Email, ClientFrom, Birthday, Status, User, OrderDateTime, EditDateTime, BirthdayUnknow) VALUES (NULL, :clName, :clPhone, :clEmail, :clFrom, :clBD, :clStatus, :userid, :orderdate, :editdate, :buk)';

    UniQuery5.ParamByName('clName').AsString := eName.Text;
    UniQuery5.ParamByName('clPhone').AsString := ePhone.Text;
    UniQuery5.ParamByName('clEmail').AsString := eEmail.Text;
    UniQuery5.ParamByName('userid').AsString := inttostr(UserID);
    UniQuery5.ParamByName('buk').AsString := inttostr(BirthdayUnknow);
    UniQuery5.ParamByName('clStatus').AsString := inttostr(ComboBox1.ItemIndex+1);
    UniQuery5.ParamByName('clFrom').AsString := inttostr(ComboBox2.ItemIndex+1);

    UniQuery5.ParamByName('clBD').AsString := FormatDateTime('yyyy-mm-dd ',
      (TestDate.Date));

    myDate := Date;
    myTime := Time;

    FinalDate := FormatDateTime('yyyy-mm-dd ', myDate);
    OrderDateTime := FinalDate + ' ' + TimeToStr(myTime);
    UniQuery5.ParamByName('orderdate').AsString := OrderDateTime;
    UniQuery5.ParamByName('editdate').AsString := OrderDateTime;
    UniQuery5.Execute;

    SaveBtn.Visible := FALSE;
    Button3.Enabled := true;


  end;
end;

procedure TForm1.SenderTabShow(Sender: TObject);

var
  Flags, TargetFrameName, PostData, Headers: OleVariant;

{const
  LOCAL_PAGE ='C:/NP2/StartPage.htm';}
begin
//WEB ABOUT

FIsStartPage := True;
{   Webbrowser1.Navigate('file:///' + LOCAL_PAGE);
   Webbrowser1.Navigate(ExtractFilePath(Application.ExeName)+'About\Untitled-2.html');

   //Webbrowser1.Navigate();}
{WebBrowser1.Navigate('http://www.borland.com', Flags,
    TargetFrameName, PostData, Headers);}
//    WebBrowser1.Navigate('C:\Users\��������\Documents\Embarcadero\Studio\Projects\Win32\Debug\mind.htm');

        WebBrowser1.Navigate('http://havana-crm.su/About/About.html');

   FIsStartPage := False;
   EnableOffAllButtons();

end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);

type
  TSave = record
    FontColor: TColor; // ���� ������.
    FontStyle: TFontStyles; // ����� ������.
    BrColor: TColor; // ���� ����� (���� �������).
  end;

var
  Sg: TStringGrid;
  Save: TSave;

begin

  Sg := Sender as TStringGrid;

  with Sg.Canvas, Save do
  begin
    // ���������� ��������� ������ � �����.
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

    // ������������� ����� ��������.
    { if gdSelected in State then begin //���� ������ ��������.
      Font.Color := RGB(255, 255, 255); //�����.
      Font.Style := Font.Style + [fsBold]; //������ �����.
      Brush.Color := RGB($66, $CC, 0); //������.
      end else if ARow < Sg.FixedRows then begin //������������� ������.
      Font.Color := RGB(255, 255, 255); //�����.
      Font.Style := Font.Style + [fsBold]; //������ �����.
      Brush.Color := RGB($CC, $99, $66); //����������.
      end else if ACol < Sg.FixedCols then begin //������������� �������.
      Font.Color := RGB(255, 255, 255); //�����.
      Font.Style := Font.Style + [fsBold]; //������ �����.
      Brush.Color := RGB($66, $99, $CC); //����-�����.
      end else if ARow mod 2 = 0 then begin //��������������� ������ � ������� ���������.
      Font.Color := RGB(0, 0, 0); //׸����.
      Brush.Color := RGB($FF, $FF, $CC);  //������-�����.
      end else begin //��������������� ������ � ��������� ���������.
      Font.Color := RGB(0, 0, 0); //׸����.
      Brush.Color := RGB($CC, $FF, $FF); //������-�����.
      end;
    }
    // ������������� ������.
    // �������� ������� ������ ������ �����.
    // FillRect(Rect);
    // ������������� � ������ �����.
    // ����� +4 - ��� �� ����� ������ ����� � ������.
    // TextOut(Rect.Left + 4, Rect.Top + 4, Sg.Cells[ACol, ARow]);

    // ��������������� ������� ��������� �����.
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

  //  ShowMessage('myDate = ' + datetostr(myDate));
  //  ShowMessage('myTime = ' + TimeToStr(myTime));
  //  dbeClorderedDate.Field.value := datetostr(myDate) + ' ' + TimeToStr(myTime);

    DBEdit6.Field.value := 1;
  end;

  if Button = nbPost then
  begin

    myDate := Date;
    myTime := Time;

  //  ShowMessage('myDate = ' + datetostr(myDate));
 //   ShowMessage('myTime = ' + TimeToStr(myTime));
 //   dbeClorderedDate.Field.value := datetostr(myDate) + ' ' + TimeToStr(myTime);
    DBEdit6.Field.value := 1;

  end;

end;

procedure TForm1.deleteBtnClick(Sender: TObject);
begin

  if (MainTab.TabIndex = 2) then
  begin

    // DELETE FROM `CRM`.`Orders` WHERE `Orders`.`idOrder` = 11

    UniQuery5.SQL.Text :=
      'DELETE FROM CRM.Orders WHERE Orders.idOrder = :deletedid';
    UniQuery5.ParamByName('deletedid').value :=
      UniDataSource5.DataSet.FieldByName('idOrder').AsInteger;
    UniQuery5.Execute;

ShowMessage('����� ������!');

  end
  else
  begin

    UniQuery5.SQL.Text :=
      'DELETE FROM CRM.Clients WHERE Clients.ID_Clients = :deletedid';
    UniQuery5.ParamByName('deletedid').value :=
      UniDataSource1.DataSet.FieldByName('ID_Clients').AsInteger;
    UniQuery5.Execute;

    ShowMessage('������ ������!');

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
      'UPDATE CRM.Orders SET OrderName = :ordName, Customer = :ordCustomer, OrderRecieve = :ordRec, OrderDate = :ordDate, JobType = :ordJobType, OrderCost = :ordCost, OrderStatus = :ordStatus WHERE Orders.idOrder = :ordID';

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
    UniQuery5.ParamByName('ordStatus').AsString :=
      inttostr(OrderStatus.ItemIndex+1);
    UniQuery5.ParamByName('ordID').AsString :=
      UniDataSource5.DataSet.FieldByName('idOrder').AsString;


    // ordID

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
      'UPDATE CRM.Clients SET Name = :clName, Phone = :clPhone, Email = :clEmail, ClientFrom = :clFrom, Birthday = :clBD, Status = :clStatus, EditDateTime = :editdate WHERE Clients.ID_Clients = :clientid';

    UniQuery5.ParamByName('clientid').value :=
      UniDataSource1.DataSet.FieldByName('ID_Clients').AsInteger;
    UniQuery5.ParamByName('clName').AsString := eName.Text;
    UniQuery5.ParamByName('clPhone').AsString := ePhone.Text;
    UniQuery5.ParamByName('clEmail').AsString := eEmail.Text;
    UniQuery5.ParamByName('editdate').AsString := finalsigninDateTime;

    // UniQuery5.ParamByName('userid').AsString := DBEdit6.Text;


     UniQuery5.ParamByName('clStatus').AsString := inttostr(ComboBox1.ItemIndex+1);


    UniQuery5.ParamByName('clFrom').AsString := inttostr(ComboBox2.ItemIndex+1);

    // UniQuery5.ParamByName('clBD').AsString := FormatDateTime('yyyy-mm-dd ', (StrToDate(dbeClBirthday.Text)));
    UniQuery5.ParamByName('clBD').AsString := FormatDateTime('yyyy-mm-dd ',
      (TestDate.Date));


    // myDate := Date;
    // myTime := Time;

    // FinalDate := FormatDateTime('yyyy-mm-dd ', myDate);

    // ShowMessage('Fin = ' + (FinalDate));
    // OrderDateTime := FinalDate + ' ' + TimeToStr(myTime);
    // OrderDateTime := '2017-01-02 00:00:00';

    // UniQuery5.ParamByName('orderdate').AsString := OrderDateTime;
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
  OrderStatus.Items.AddObject(sItem, TObject(j));
  end;

  // =============================== COMBO BOX CLIENT FROM FILLING ==========

  UniQuery8.SQL.Text :='SELECT * FROM CRM.Clients WHERE User = :userid;';
  UniQuery8.ParamByName('userid').AsString := IntToStr(UserID);

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
  z := UniDataSource6.DataSet.FieldByName('ID_Clients').AsInteger;
  //ShowMessage(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);
  // ListBox2.Items.Add(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);

  // sItemHelp := Format(sItem, [j]);
  // ShowMessage(sItemHelp);

  CustomerArr[j] :=  z;

  Customer.Items.AddObject(sItem, TObject(j));
  UniDataSource6.DataSet.Next;

  end;




  // =============================== COMBO BOX JOBS TYPE FILLING ==========

  UniQuery9.SQL.Text :='SELECT * FROM CRM.JOBSTYPE;';
  //UniQuery8.ParamByName('userid').AsString := IntToStr(UserID);
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
  OrderStatus.ItemIndex :=0;
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
    OrderStatus.Items.AddObject(sItem, TObject(j));
    end;

    // =============================== COMBO BOX CLIENT FROM FILLING ==========

    UniQuery8.SQL.Text :='SELECT * FROM CRM.Clients WHERE User = :userid;';
    UniQuery8.ParamByName('userid').AsString := IntToStr(UserID);

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
    z := UniDataSource6.DataSet.FieldByName('ID_Clients').AsInteger;
    //ShowMessage(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);
    // ListBox2.Items.Add(inttostr(j) + ' - ' + inttostr(z) + ' - ' + sItem);

    // sItemHelp := Format(sItem, [j]);
    // ShowMessage(sItemHelp);

    CustomerArr[j] :=  z;

    Customer.Items.AddObject(sItem, TObject(j));
    UniDataSource6.DataSet.Next;

    end;




    // =============================== COMBO BOX JOBS TYPE FILLING ==========

    UniQuery9.SQL.Text :='SELECT * FROM CRM.JOBSTYPE;';
    //UniQuery8.ParamByName('userid').AsString := IntToStr(UserID);
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
    OrderStatus.ItemIndex :=0;
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
FBg.LoadFromFile( ExtractFileDir(Application.ExeName)+'\'+'D.bmp');

StringGrid3.ColWidths[1]:=320;
StringGrid3.ColWidths[2]:=170;
StringGrid3.ColWidths[3]:=250;
//StringGrid3.ColWidths[4]:=250;

StringGrid3.RowHeights[0]:=70;

  log := LoginField.Text;
  pass := PasswordField.Text;

  test2 := ExtractFilePath(Application.ExeName) + 'login.ini';
  IniFile := TIniFile.Create(test2);

  if IniFile.SectionExists('SignInData') then
  // ���� ������ ������ �� ���������� ��������������� ���������

  begin
    // ShowMessage('������ ������������');
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

    UserID := UniQuery4.Fields[0].value;

    TabSheet2.TabVisible := true;
    TabSheet1.TabVisible := true;
    TabSheet3.TabVisible := FALSE;

    UniQuery1.SQL.Text :=
      'SELECT * FROM Clients LEFT OUTER JOIN STATUS ON Clients.Status = STATUS.ID_STATUS LEFT OUTER JOIN From_Type_Table ON Clients.ClientFrom = From_Type_Table.ID_FROM WHERE User = :userid;';
    UniQuery1.ParamByName('userid').AsInteger := UserID;
    UniQuery1.Execute;

    clientsRecCount:=UniQuery1.RecordCount;

    signinDate := Date;
    signinTime := Time;
    finalsigninDate := FormatDateTime('yyyy-mm-dd ', signinDate);

    UniQuery5.SQL.Text :=
      'UPDATE users SET LastVisitDate = :newdate WHERE users.ID = :uID;';
    UniQuery5.ParamByName('uID').AsInteger := UserID;
    UniQuery5.ParamByName('newdate').Value := Now;
    UniQuery5.ParamByName('newtime').AsString := TimeToStr(signinTime);
    UniQuery5.Execute;

    UniQuery6.SQL.Text := 'SELECT * FROM Orders WHERE User=:uID;';
    UniQuery6.ParamByName('uID').AsInteger := UserID;
    UniQuery6.Execute;

//clientsRecCount:=UniQuery6.RecordCount;
ordersRecCount:=UniQuery6.RecordCount;

StatusBar1.Panels[0].Text:='������� ����� | �������: ' + inttostr(clientsRecCount) + ' | ' + '1';
StatusBar1.Panels[1].Text:='������� ����� | �������: ' + inttostr(ordersRecCount) + ' | ' + '1';

    act();

    // maintab.TabIndex:=0;

  end
  Else

  begin

    loginbefore := FALSE;
    TabSheet2.TabVisible := FALSE;
    TabSheet1.TabVisible := FALSE;
    SenderTab.TabVisible := FALSE;
    //OrderGridTab.TabVisible := FALSE;
    OrderTab.TabVisible := FALSE;
    ReportTab.TabVisible := FALSE;
    UserTab.TabVisible := FALSE;

  end;

end;

procedure TForm1.StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var
  r: TRect;
  Format: Word;
C: array[0..255] of Char;
s: string;

  begin

  if not (Sender is TStringGrid) then Exit;
  BitBlt(TStringGrid(Sender).Canvas.Handle,
         Rect.Left,
         Rect.Top,
         Rect.Right - Rect.Left,
         Rect.Bottom - Rect.Top,
         FBg.Canvas.Handle,
         Rect.Left,
         Rect.Top,
         SRCCOPY);


if gdSelected in State then begin
//        StringGrid3.Canvas.Brush.Color := $00940A4B;
        StringGrid3.Canvas.Font.Color:=clWhite;
        StringGrid3.Canvas.FillRect(Rect);


end;

  r := Rect;
  TStringGrid(Sender).Canvas.Brush.Style := bsClear;
  DrawText(TStringGrid(Sender).Canvas.Handle,
           TStringGrid(Sender).Cells[ACol, ARow],
           length(TStringGrid(Sender).Cells[ACol, ARow]),
           r,
           DT_SINGLELINE or DT_VCENTER or DT_CENTER);

{           StringGrid3.Canvas.Pen.Width:=1;
           StringGrid3.Canvas.MoveTo(0, rect.Bottom);
           StringGrid3.Canvas.LineTo(rect.Right, rect.Bottom);}


//           StringGrid3.Canvas.FillRect(Rect);


{           with Sender as TStringGrid do begin
s:=cells[acol,arow]; //��������� ����� �� ������
canvas.FillRect (rect);
//�������������� ������, ����� �� ����� �������� ����
rect.right:=rect.Right-2;
//�������� ������ ������ ������, ����� �� ������
DrawText(canvas.handle,pchar(s),-1,Rect,
DT_SINGLELINE OR DT_VCENTER OR DT_CENTER);



                       end;}

{                       with StringGrid3.Canvas do begin
r:=StringGrid3.CellRect(acol,arow) ;
FillRect(r);
TextOut(r.left+((r.Right-r.Left) div 2)-(TextWidth(StringGrid3.Cells[acol,arow]) div 2),
r.Top,StringGrid3.Cells[acol,arow]);



end;}


           end;

end.