program HCRM;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Havana CRM ver 1.0 [Anton Romanov] www.havana-crm.su';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
