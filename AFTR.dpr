program AFTR;

uses
  Vcl.Forms,
  AFTR_Main in 'AFTR_Main.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
