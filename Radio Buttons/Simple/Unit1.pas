unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    Label1: TLabel;
    Button1: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.itemindex = 0
  then Label1.Caption := 'blou';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if RadioButton1.checked
  then Label1.Caption := 'blou';
end;

end.
