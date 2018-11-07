unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, DBAccess, Uni,
  MemDS, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    TreeView1: TTreeView;
    orderTypes_UQ: TUniQuery;
    orderTypes_UDS: TUniDataSource;
    orderSubTypes_UQ: TUniQuery;
    orderPlans_UQ: TUniQuery;
    addOrderTypeButton: TButton;
    deleteOrderTypeButton: TButton;
    findOrderTypeButton: TButton;
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);

  private
    procedure CleanTree();
    procedure ChangeOrderType(s: Integer; id: Integer);
  public


  end;

var
  Form3: TForm3;

implementation
uses UMain;
{$R *.dfm}



//  нопка добавить тип заказа
procedure TForm3.ChangeOrderType(s: Integer; id: Integer);
var
  Result: Integer;
begin

Form1.UniQuery10.Close;
case s of
    1 :     //type
    begin
        Form1.UniQuery10.SQL.Text :='UPDATE orders SET order_type = :type WHERE id =:id';
        Form1.UniQuery10.ParamByName('type').AsInteger := id;
        Form1.UniQuery10.ParamByName('id').AsString := Form1.UniDataSource5.DataSet.FieldByName('id').AsString;
    end;
    2 :         //subtype
        begin
        Form1.UniQuery10.SQL.Text :='UPDATE orders SET order_sub_type = :type WHERE id =:id';
        Form1.UniQuery10.ParamByName('type').AsInteger := id;
        Form1.UniQuery10.ParamByName('id').AsString := Form1.UniDataSource5.DataSet.FieldByName('id').AsString;
        end;
    3 :        //plan
    begin
        Form1.UniQuery10.SQL.Text :='UPDATE orders SET order_plan = :type WHERE id =:id';
        Form1.UniQuery10.ParamByName('type').AsInteger := id;
        Form1.UniQuery10.ParamByName('id').AsString := Form1.UniDataSource5.DataSet.FieldByName('id').AsString;
    end;

  end;

Form1.UniQuery10.ExecSQL;
//Result := Form1.UniQuery10.ExecSQL = 1; //exactly 1 row updated
//if Form1.UniQuery10.ExecSQL <> 1 then raise Exception.Create('ќшибка в процессе изменени€ типа заказа!');

end;

procedure TForm3.CleanTree;

var
i: Integer;
begin

     if (Form3.Treeview1.Items.Count>1) then
 begin

  for i:= Form3.Treeview1.Items.Count-1 downto 0 do
  begin
          Form3.Treeview1.Select(Form3.Treeview1.Items[i]);
          Form1.DeleteItem(Form3.Treeview1.Selected);
          Form3.Treeview1.Items.Delete(Form3.Treeview1.Selected);

  end;
 end;

end;

procedure TForm3.TreeView1Click(Sender: TObject);
var
    MyNode3: TFruit;
    typeCode: String;
begin
 if Assigned(TreeView1.Selected) then
    begin

//    MyNode3 :=   TreeView1.Selected.Data;
  //  ShowMessage(TreeView1.Selected.Text + ' - ' +   IntToStr(MyNode3.orderType) + ' - ' + IntToStr(MyNode3.orderSubType)+ ' - ' + IntToStr(MyNode3.Plan));

    end
end;

// двойной клик по дереву - добавление
procedure TForm3.TreeView1DblClick(Sender: TObject);
var
   MyNode3: TFruit;
begin

 if Assigned(TreeView1.Selected) then
    begin

    MyNode3 :=   TreeView1.Selected.Data;
    ChangeOrderType(1, MyNode3.orderType);

   if MyNode3.orderSubType>0 then
    begin
     ChangeOrderType(2, MyNode3.orderSubType);
    end;
   if MyNode3.Plan>0 then
    begin
     ChangeOrderType(3, MyNode3.Plan);
    end;
  end;
end;

end.
