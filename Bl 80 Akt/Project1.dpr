program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmSwemGala};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSwemGala, frmSwemGala);
  Application.Run;
end.
