unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
x : Integer= 0 ;
implementation




{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
vize,fin: Integer;
bn: Real;
begin

vize:=StrToInt(Edit1.Text);
fin:=StrToInt(Edit2.Text);

bn:= vize * 0.4 + fin * 0.6;
Label1.Caption:=FloatToStr(bn);

end;

procedure TForm1.Button2Click(Sender: TObject);

begin
x:=x-1;
Label2.Caption:=IntToStr(x);

end;

procedure TForm1.Button3Click(Sender: TObject);
Const      //sabit say? kalmas? i?in yaz?l?r.
pi: Double=3.14;

begin
            x:=x+1;
           Label2.Caption:=IntToStr(x);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
t :TDate;
fark: Extended;


begin
       t:= StrToDate(Edit3.Text);
       fark:=Date()-t;
       Label3.Caption:=FloatToStr(fark);
end;

end.
