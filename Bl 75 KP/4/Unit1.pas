unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Spin;

type
  TfrmPretDag = class(TForm)
    edtNaam: TEdit;
    sedOuderdom: TSpinEdit;
    lblNaam: TLabel;
    lblOuderdom: TLabel;
    lblKinders: TLabel;
    lblVolwasses: TLabel;
    lblVerwelkom: TLabel;
    btnVertoon: TButton;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    procedure btnVertoonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPretDag: TfrmPretDag;
  iKinders, iVolwasses : integer;
implementation

{$R *.dfm}

procedure TfrmPretDag.btnVertoonClick(Sender: TObject);
var
sNaam, sVerwelkom :string;
iOuderdom : integer;
begin
sNaam := edtNaam.Text;
iOuderdom := sedOuderdom.Value;
sVerwelkom := 'Welkom ' + sNaam + ' by die pretdag.';
if iOuderdom >= 13 then
  begin
  iVolwasses := iVolwasses + 1;
  lblVolwasses.Caption := 'Volwasses by die pret dag al :' + IntToStr(iVolwasses);
  end
  else
  begin
  iKinders := iKinders +1;
  lblKinders.Caption := 'Kinders by die pret dag al :' + IntToStr(iKinders);
  end;
lblVerwelkom.Caption := sVerwelkom;
edtNaam.Clear;
sedOuderdom.Clear;
edtNaam.SetFocus;
end;

procedure TfrmPretDag.FormActivate(Sender: TObject);
begin
edtNaam.SetFocus;
sedOuderdom.Clear;
end;

procedure TfrmPretDag.bmbResetClick(Sender: TObject);
begin
edtNaam.clear;
edtNaam.SetFocus;
sedOuderdom.Clear;
lblKinders.Caption := 'Kinders by die pret dag al :';
lblVolwasses.Caption := 'Volwasses by die pret dag al :';

end;

end.
