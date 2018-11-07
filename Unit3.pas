unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, DBAccess, Uni,
  MemDS;

type
  TForm3 = class(TForm)
    TreeView1: TTreeView;
    orderTypes_UQ: TUniQuery;
    orderTypes_UDS: TUniDataSource;
    orderSubTypes_UQ: TUniQuery;
    orderPlans_UQ: TUniQuery;
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public


  end;

var
  Form3: TForm3;

implementation
uses UMain;
{$R *.dfm}

procedure TForm3.TreeView1Click(Sender: TObject);
var
    MyNode3: TFruit;
    typeCode: String;
begin
 if Assigned(TreeView1.Selected) then
    begin
        //if SameText(TreeView1.Selected.Text, 'show form1') then
MyNode3 :=   TreeView1.Selected.Data;
//typeCode :=   String(TreeView1.Selected.Data);
//typeCode :=   '12';

//            ShowMessage(TreeView1.Selected.Text + ' - ' +   IntToStr(Integer(TreeView1.Selected.Data)));
            ShowMessage(TreeView1.Selected.Text + ' - ' +   IntToStr(MyNode3.orderType) + ' - ' + IntToStr(MyNode3.orderSubType)+ ' - ' + IntToStr(MyNode3.Plan));
//              ShowMessage(TreeView1.Selected.Text + ' - ' +   String(TreeView1.Selected.Data));
//typeCode:='';
      //  else
        //   if SameText(TreeView1.Selected.Text, 'show form2') then
         //      ShowMessage('s22');
    end
end;

end.
