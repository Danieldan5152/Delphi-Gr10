program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmTHemde};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTHemde, frmTHemde);
  Application.Run;
end.
