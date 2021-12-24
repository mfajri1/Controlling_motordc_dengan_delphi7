unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, MSCommLib_TLB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    MSComm1: TMSComm;
    Edit1: TEdit;
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
form:TForm1;
delay:boolean;
waktu:integer;
{$R *.dfm}

procedure TForm1.Button7Click(Sender: TObject);
begin
    form.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if MSComm1.PortOpen then
MSComm1.PortOpen:=false;
MSComm1.CommPort:= 4;
MSComm1.InputLen:= 0;
MSComm1.PortOpen:= true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
delay:= false;
Button6.Enabled:= false;
Button5.Enabled:= true;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
perintah : string;
begin
  delay := true;
  Button5.Enabled:= false;
  Button6.Enabled:= true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MSComm1.Output:= 'cepat';
  edit1.Text:='cepat';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MSComm1.Output:= 'sedang';
  edit1.Text:='sedang';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  MSComm1.Output:= 'mati';
  edit1.Text:='mati';
end;

end.
