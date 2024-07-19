program CalculadoraTDD;

uses
  Vcl.Forms,
  fCalculadora in 'fCalculadora.pas' {frmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
