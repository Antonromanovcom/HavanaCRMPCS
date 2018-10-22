program AndroidListBoxTestProj;

uses
  System.StartUpCopy,
  FMX.Forms,
  AndroidListBoxTest in 'AndroidListBoxTest.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
