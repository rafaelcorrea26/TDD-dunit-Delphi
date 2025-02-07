unit fCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalculadora = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    edtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

    function Somar(ANumero1, ANumero2: Integer):Integer;
    function Subtrair(ANumero1, ANumero2: Integer):Integer;
    function Multiplicar(ANumero1, ANumero2: Integer):Integer;
    function Dividir(ANumero1, ANumero2: Integer):integer;
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

procedure TfrmCalculadora.FormShow(Sender: TObject);
begin
  edtNumero1.SetFocus;
end;

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text:= inttostr(Somar(strtoint(edtNumero1.Text),strtoint(edtNumero2.Text)));
end;

procedure TfrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text:= inttostr(Somar(strtoint(edtNumero1.Text),strtoint(edtNumero2.Text)));
end;

procedure TfrmCalculadora.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text:= inttostr(Somar(strtoint(edtNumero1.Text),strtoint(edtNumero2.Text)));
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text:= inttostr(Somar(strtoint(edtNumero1.Text),strtoint(edtNumero2.Text)));
end;

function TfrmCalculadora.Dividir(ANumero1, ANumero2: Integer):Integer;
begin
  result:= ANumero1 div ANumero2;  // Para erro adicionar +1
end;

function TfrmCalculadora.Multiplicar(ANumero1, ANumero2: Integer):Integer;
begin
  result:= ANumero1 * ANumero2; // Para erro adicionar +1
end;

function TfrmCalculadora.Somar(ANumero1, ANumero2: Integer):Integer;
begin
  result:= ANumero1 + ANumero2; // Para erro adicionar +1
end;

function TfrmCalculadora.Subtrair(ANumero1, ANumero2: Integer):Integer;
begin
  result:= ANumero1 - ANumero2; // Para erro adicionar +1
end;

end.
