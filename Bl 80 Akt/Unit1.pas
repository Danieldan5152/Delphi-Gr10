unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    lblVoorNaam: TLabel;
    lblVan: TLabel;
    rgpSwem: TRadioGroup;
    radVryslag: TRadioButton;
    radBorsslag: TRadioButton;
    radRugslag: TRadioButton;
    radVlinderslag: TRadioButton;
    edtVoorNaam: TEdit;
    edtVan: TEdit;
    lblAfvoer: TLabel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
 