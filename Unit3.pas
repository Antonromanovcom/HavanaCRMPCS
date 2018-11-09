unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, DBAccess, Uni,
  MemDS, Vcl.StdCtrls, Vcl.ImgList, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Buttons;

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
    OptionsList: TListBox;
    ImageOption: TImage;
    orderOptions_UQ: TUniQuery;
    UDS_options: TUniDataSource;
    OptionDesc: TMemo;
    PlanPrice: TEdit;
    btnAddPlanOption: TSpeedButton;
    btnDeletePlanOption: TSpeedButton;
    btnEditPlanOption: TSpeedButton;
    btnEditPlanPrice: TSpeedButton;
    UDS_plans: TUniDataSource;
    applyOrderType: TButton;
    btnEditOrderType: TButton;
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OptionsListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure PlanPriceChange(Sender: TObject);
    procedure OptionDescChange(Sender: TObject);
    procedure btnEditPlanPriceClick(Sender: TObject);
    procedure applyOrderTypeClick(Sender: TObject);
    procedure addOrderTypeButtonClick(Sender: TObject);
    procedure deleteOrderTypeButtonClick(Sender: TObject);
    procedure findOrderTypeButtonClick(Sender: TObject);
    procedure OptionsListClick(Sender: TObject);
    procedure btnDeletePlanOptionClick(Sender: TObject);
    procedure btnEditPlanOptionClick(Sender: TObject);
    procedure btnAddPlanOptionClick(Sender: TObject);
    procedure btnEditOrderTypeClick(Sender: TObject);

  private

    procedure ChangeOrderType(s: Integer; id: Integer);
    procedure PaintImage(List1 :TListBox; Control: TWinControl; Index: Integer; Rect: TRect);
    procedure PaintText(List1 :TListBox; Control: TWinControl; Index: Integer; Rect: TRect);
    procedure apply();


  public
   Item: TListItem;  // список опций
   OptionsExists: Boolean;
   selectedPlan: Integer;
   procedure CleanTree();




  end;

var
  Form3: TForm3;

implementation
uses UMain;
{$R *.dfm}



// Кнопка добавить тип заказа
procedure TForm3.addOrderTypeButtonClick(Sender: TObject);
var
value: String;
MyNode3: TFruit;
buttonSelected : Integer;
begin
value := InputBox('Новый тип заказа', 'Введите, пожалуйста, новый тип заказа:',  '');


if Assigned(TreeView1.Selected) then
    begin

      MyNode3 :=   TreeView1.Selected.Data;

      if MyNode3.orderSubType>0 then
      begin
  // План
      buttonSelected:= MessageDlg('Пачасовой тариф?',mtConfirmation, [mbYes,mbNo], 0);
      orderPlans_UQ.Close;
      if buttonSelected = mrNo  then
      begin
        Form3.orderPlans_UQ.SQL.Text := 'INSERT INTO plans (plan_name, is_per_hour, parent_subtype_id, cost, description) VALUES (:plan, false, :parentid, :plancost, :plandesc);';
      end
      else
      begin
        Form3.orderPlans_UQ.SQL.Text := 'INSERT INTO plans (plan_name, is_per_hour, parent_subtype_id, cost, description) VALUES (:plan, true, :parentid, :plancost, :plandesc);';
      end;
        Form3.orderPlans_UQ.ParamByName('plan').AsString := value;
        Form3.orderPlans_UQ.ParamByName('parentid').AsInteger := MyNode3.orderSubType;
        Form3.orderPlans_UQ.ParamByName('plancost').AsInteger := 0;
        Form3.orderPlans_UQ.ParamByName('plandesc').AsString := '';
        Form3.orderPlans_UQ.Execute;
        Form1.loadOrderTypeTree();
        Exit;
      end;
      if MyNode3.orderType>0 then
       begin
// Под-Тип
        orderPlans_UQ.Close;
        buttonSelected:= MessageDlg('Добавить тип - Yes или Подтип - No?',mtConfirmation, [mbYes,mbNo], 0);
        if buttonSelected = mrNo  then
        begin
           Form3.orderPlans_UQ.SQL.Text := 'INSERT INTO subtype (parent_type_id, subtype_name) VALUES (:parenttype, :subtype);';
           Form3.orderPlans_UQ.ParamByName('subtype').AsString := value;
           Form3.orderPlans_UQ.ParamByName('parenttype').AsInteger := MyNode3.orderType;
        end
        else
        begin
           Form3.orderPlans_UQ.SQL.Text := 'INSERT INTO ordertypes (type, user_id) VALUES (:type, :userid);';
           Form3.orderPlans_UQ.ParamByName('type').AsString := value;
           Form3.orderPlans_UQ.ParamByName('userid').AsString := Form1.UserID;
        end;
           Form3.orderPlans_UQ.Execute;
           Form1.loadOrderTypeTree();
           Exit;
      end;
    end;
end;

procedure TForm3.apply;
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

procedure TForm3.applyOrderTypeClick(Sender: TObject);
begin
Form3.apply();
Form3.Close;
end;

procedure TForm3.btnAddPlanOptionClick(Sender: TObject);
var
value: String;
begin
value := InputBox('Опции плана', 'Введите содержание новой опции:',  '');
orderPlans_UQ.Close;
Form3.orderPlans_UQ.SQL.Text := 'INSERT INTO options (optionname, plan_id) VALUES (:option, :id);';
Form3.orderPlans_UQ.ParamByName('option').AsString := value;
Form3.orderPlans_UQ.ParamByName('id').AsInteger := selectedPlan;
Form3.orderPlans_UQ.Execute;
Form1.loadOrderTypeTree();
end;

procedure TForm3.btnDeletePlanOptionClick(Sender: TObject);
var
selectedOption: Integer;
begin
selectedOption := Integer(Form3.OptionsList.Items.Objects[Form3.OptionsList.ItemIndex]);

orderPlans_UQ.Close;
Form3.orderPlans_UQ.SQL.Text := 'DELETE FROM options WHERE options.id = :id';
Form3.orderPlans_UQ.ParamByName('id').AsInteger := selectedOption;
Form3.orderPlans_UQ.Execute;
Form1.loadOrderTypeTree();

end;

procedure TForm3.btnEditOrderTypeClick(Sender: TObject);
var
MyNode3: TFruit;
value: String;
orderType: String;
begin

if Assigned(TreeView1.Selected) then
    begin

      MyNode3 :=   TreeView1.Selected.Data;

      if MyNode3.Plan>0 then
      begin
      // План
        orderType:='Отредактируйте план:';
        value := InputBox('Правка типа заказа', orderType,  TreeView1.Selected.Text);

        orderPlans_UQ.Close;
        Form3.orderPlans_UQ.SQL.Text := 'UPDATE plans SET plan_name = :name WHERE id=:id;';
        Form3.orderPlans_UQ.ParamByName('name').AsString := value;
        Form3.orderPlans_UQ.ParamByName('id').AsInteger := MyNode3.Plan;
        Form3.orderPlans_UQ.Execute;
        Form1.loadOrderTypeTree();
        Exit;
      end;

      if MyNode3.orderSubType>0 then
       begin
      // Под-Тип
        orderPlans_UQ.Close;
        orderType:='Отредактируйте подтип:';
        value := InputBox('Правка типа заказа', orderType,  TreeView1.Selected.Text);


           Form3.orderPlans_UQ.SQL.Text := 'UPDATE subtype SET subtype_name = :name WHERE id=:id;';
           Form3.orderPlans_UQ.ParamByName('name').AsString := value;
           Form3.orderPlans_UQ.ParamByName('id').AsInteger := MyNode3.orderSubType;
           Form3.orderPlans_UQ.Execute;
           Form1.loadOrderTypeTree();
           Exit;
      end;
      if MyNode3.orderType>0 then
       begin
      // Тип
        orderPlans_UQ.Close;
        orderType:='Отредактируйте Тип:';
        value := InputBox('Правка типа заказа', orderType,  TreeView1.Selected.Text);

           Form3.orderPlans_UQ.SQL.Text := 'UPDATE ordertypes SET type = :name WHERE id=:id;';
           Form3.orderPlans_UQ.ParamByName('name').AsString := value;
           Form3.orderPlans_UQ.ParamByName('id').AsInteger := MyNode3.orderType;
           Form3.orderPlans_UQ.Execute;
           Form1.loadOrderTypeTree();
           Exit;
      end;
    end;
end;

procedure TForm3.btnEditPlanOptionClick(Sender: TObject);
var
selectedOption: Integer;
value: String;
begin

selectedOption := Integer(Form3.OptionsList.Items.Objects[Form3.OptionsList.ItemIndex]);
orderPlans_UQ.Close;
value := InputBox('Опции плана', 'Отредактируйте опцию:',  '');
Form3.orderPlans_UQ.SQL.Text := 'UPDATE options SET optionname = :name WHERE id=:id';
Form3.orderPlans_UQ.ParamByName('id').AsInteger := selectedOption;
Form3.orderPlans_UQ.ParamByName('name').AsString := value;
Form3.orderPlans_UQ.Execute;
Form1.loadOrderTypeTree();

end;

procedure TForm3.btnEditPlanPriceClick(Sender: TObject);
begin
orderPlans_UQ.Close;
Form3.orderPlans_UQ.SQL.Text := 'UPDATE plans SET description = :desc, cost = :cost WHERE id=:id;';
Form3.orderPlans_UQ.ParamByName('desc').AsString := Form3.OptionDesc.Text;
Form3.orderPlans_UQ.ParamByName('cost').AsString := Form3.PlanPrice.Text;
Form3.orderPlans_UQ.ParamByName('id').AsInteger := selectedPlan;
Form3.orderPlans_UQ.Execute;
btnEditPlanPrice.Enabled:=false;
end;

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


end;

//Чистка дерева
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

  // Почистим опции
  OptionsList.Enabled:= false; // выключаем список опций
  OptionsExists:=false;
  OptionsList.Items.Clear;

 end;

end;

procedure TForm3.deleteOrderTypeButtonClick(Sender: TObject);
var
MyNode3: TFruit;
begin

if Assigned(TreeView1.Selected) then
    begin

      MyNode3 :=   TreeView1.Selected.Data;

      if MyNode3.Plan>0 then
      begin
      // План

        orderPlans_UQ.Close;
        Form3.orderPlans_UQ.SQL.Text := 'DELETE FROM plans WHERE plans.id = :planid';
        Form3.orderPlans_UQ.ParamByName('planid').AsInteger := MyNode3.Plan;
        Form3.orderPlans_UQ.Execute;
        Form1.loadOrderTypeTree();
        Exit;
      end;

      if MyNode3.orderSubType>0 then
       begin
      // Под-Тип
        orderPlans_UQ.Close;

           Form3.orderPlans_UQ.SQL.Text := 'DELETE FROM subtype WHERE subtype.id = :subtypeid';
           Form3.orderPlans_UQ.ParamByName('subtypeid').AsInteger := MyNode3.orderSubType;
           Form3.orderPlans_UQ.Execute;
           Form1.loadOrderTypeTree();
           Exit;
      end;
      if MyNode3.orderType>0 then
       begin
      // Тип
        orderPlans_UQ.Close;

           Form3.orderPlans_UQ.SQL.Text := 'DELETE FROM ordertypes WHERE ordertypes.id = :id';
           Form3.orderPlans_UQ.ParamByName('id').AsInteger := MyNode3.orderType;
           Form3.orderPlans_UQ.Execute;
           Form1.loadOrderTypeTree();
           Exit;
      end;



    end;
end;


procedure TForm3.findOrderTypeButtonClick(Sender: TObject);
begin
  orderPlans_UQ.Close;
  Form3.orderPlans_UQ.SQL.Text := 'UPDATE orders SET order_type = null, order_sub_type = null , order_plan = null WHERE id=:id';
  Form3.orderPlans_UQ.ParamByName('id').AsInteger := Form1.UniDataSource5.DataSet.FieldByName('id').asInteger;
  //Form3.orderPlans_UQ.ParamByName('ot').Clear;
  //Form3.orderPlans_UQ.ParamByName('op').Clear;
  //Form3.orderPlans_UQ.ParamByName('ost').Clear;
  Form3.orderPlans_UQ.Execute;
  Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin

   {     OptionsExists:=false;
        OptionsList.Enabled:= false; // выключаем список опций
        OptionsList.Items.Add('Нет опций у плана или не выбран план'); // Добавляем строку в компонент ListBox
        Item := options.Items.Add;
        Item.Caption := 'Нет опций у плана или не выбран план';
        }

end;

procedure TForm3.OptionDescChange(Sender: TObject);
begin
btnEditPlanPrice.Enabled:=true;
end;

procedure TForm3.OptionsListClick(Sender: TObject);
begin

if (OptionsList.ItemIndex>-1) then
begin
    btnDeletePlanOption.Enabled := true;
    btnEditPlanOption.Enabled := true;

end;

end;

procedure TForm3.OptionsListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
if (OptionsExists = true) then
begin
PaintImage(OptionsList, Control, Index, Rect);
end
else
begin
PaintText(OptionsList, Control, Index, Rect);
end;

end;

procedure TForm3.PaintImage(List1: TListBox; Control: TWinControl; Index: Integer; Rect: TRect);
  const
    W = 16;
    H = 16;
  var
    BMPRect: TRect;

  begin
    with (Control as TListBox).Canvas do
  begin
    FillRect(Rect);
    List1.Canvas.Draw(0, Rect.Top, ImageOption.Picture.Graphic);
    BMPRect := Bounds(Rect.Left, Rect.Top, W, H);
    TextOut(Rect.Left+W+7, Rect.Top, List1.Items[index]);
  end;

end;

procedure TForm3.PaintText(List1: TListBox; Control: TWinControl;   Index: Integer; Rect: TRect);
begin

       with (Control as TListBox).Canvas do
  begin
    FillRect(Rect);
    TextOut(Rect.Left, Rect.Top, List1.Items[index]);
  end;

end;

procedure TForm3.PlanPriceChange(Sender: TObject);
begin
btnEditPlanPrice.Enabled:=true;
end;

procedure TForm3.TreeView1Click(Sender: TObject);
var
    MyNode3: TFruit;
    typeCode: String;

begin

 if Assigned(TreeView1.Selected) then
    begin

      // Надо определить план это или нет.
      MyNode3 :=   TreeView1.Selected.Data;
      if MyNode3.Plan>0 then
      begin
        OptionsList.Enabled:= true; // включаем список опций
        Form3.selectedPlan:=MyNode3.Plan; // Проставляем локальный план
        Form1.getOptions4Plan(Form3.selectedPlan); // Пробуем подгрузить опции для плана
        addOrderTypeButton.Enabled:=false; // выключаем кнопку добавить.
        deleteOrderTypeButton.Enabled:=true; // выключаем кнопку добавить.
        Form3.btnEditOrderType.Enabled:=true;
      end
      else
      begin
        Form1.clearOptionList();
        Form1.noOptions();
        addOrderTypeButton.Enabled:=true; // выключаем кнопку добавить.
        deleteOrderTypeButton.Enabled:=true; // выключаем кнопку добавить.
        Form3.btnEditOrderType.Enabled:=true;
      end;
    end;
end;

// двойной клик по дереву - добавление
procedure TForm3.TreeView1DblClick(Sender: TObject);

begin

Form3.apply();
Form3.Close;

end;

end.
