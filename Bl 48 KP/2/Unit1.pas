unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TfrmKelner = class(TForm)
    lblUre: TLabel;
    lblVergoeding_p_U: TLabel;
    lblAfvoer: TLabel;
    sedUre: TSpinEdit;
    btnBereken: TButton;
    procedure btnBerekenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKelner: TfrmKelner;

implementation

{$R *.dfm}

procedure TfrmKelner.btnBerekenClick(Sender: TObject);
var// variables
sAfvoer : string;
iUre_Gewerk : integer;
rPer_Uur, rGeld_Verdien : real;
begin
rPer_Uur := 12.50;// Geld per uur
iUre_Gewerk := sedUre.Value;// Ure gewerk 
//RGeld_Verdien := iUre_Gewerk * (12.50);
rGeld_Verdien := iUre_Gewerk * rPer_Uur;// Totale geld verdien 
sAfvoer := 'Die Kelener het ' + IntToStr(iUre_Gewerk) +
' ure gewerk en verdien R' + FloatToStrF(rGeld_Verdien,  ffFixed, 5, 2)+ '.' ;// Geld afvoer
lblAfvoer.Caption := sAfvoer;// Vertoon afvoer
end;

end.