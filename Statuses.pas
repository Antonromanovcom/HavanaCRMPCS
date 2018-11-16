unit Statuses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, UniProvider,
  PostgreSQLUniProvider;

type
  TStatusesForm = class(TForm)
    AllStatusesGrid: TDBGridEh;
    statusesUDS: TUniDataSource;
    UniQuery1: TUniQuery;
    codesUQ: TUniQuery;
    codeUDS: TUniDataSource;
    UniTable1: TUniTable;
    UniTable1myLookup: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatusesForm: TStatusesForm;

implementation
uses UMain, Dictionary;

{$R *.dfm}

procedure TStatusesForm.FormCreate(Sender: TObject);
var StatusesGridUniQuery: TUniQuery;
DS : TUniDataSource;
localDS: TDatasource;
i: Integer;
begin
//  UniQuery1.ExecSQL;

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

AllStatusesGrid.DataSource := DS;
//AllStatusesGrid.Columns.Clear;
//AllStatusesGrid.Columns.Add;
//AllStatusesGrid.Columns[0].FieldName := 'status';
//AllStatusesGrid.Columns[0].Field.FieldName :='status';

//AllStatusesGrid.UpdateData;


for i:=0 to AllStatusesGrid.Columns.Count-1 do
      AllStatusesGrid.Columns[i].OptimizeWidth;



end;

end.
