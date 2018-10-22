unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TMyFirstClass = class
  private
  CustomerNomer :integer;
  protected

  constructor Create();


    procedure AnyMethod; virtual; {или dynamic}


  end;


 TMySecondClass = class(TMyFirstClass)
  protected
    procedure AnyMethod; override;
  end;


var
  Form2: TForm2;
    c1: TMyFirstClass;
    c2: TMySecondClass;


implementation

{$R *.dfm}

{ TMyFirstClass }

procedure TMyFirstClass.AnyMethod;
begin

showmessage ('1');

end;

{ TMySecondClass }

procedure TMySecondClass.AnyMethod;
begin
//  inherited;

  showmessage ('2');

end;

procedure TForm2.Button1Click(Sender: TObject);
begin

c1 :=TMyFirstClass.Create;
c1.AnyMethod;
c1.Free;


c1 :=TMySecondClass.Create;
c1.AnyMethod;
c1.Free;



end;

end.
