unit GerLabel;

interface

uses
  Classes, StdCtrls, ExtCtrls;

type
  TEspLabel = class(TLabel)

private
  Velocidade: Integer;
  Temporizador: TTimer;
  procedure PoeVelocidade(Valor: Integer);

protected
  procedure PiscaPisca(Sender: TObject);

public
  constructor Create(AOWner: TComponent); override;
  destructor Destroy; override;

published
  property PegaVelocidade: Integer read Velocidade write PoeVelocidade default 400;
end;

procedure Register;

implementation

constructor TEspLabel.Create(AOWner: TComponent);
begin
  inherited Create(AOWner);
  Temporizador := TTimer.Create(Self);
  Velocidade := 400;
  Temporizador.Enabled := True;
  Temporizador.OnTimer := PiscaPisca;
  Temporizador.Interval := Velocidade;
end;

destructor TEspLabel.Destroy;
begin
  Temporizador.Free;
  inherited destroy;
end;

procedure TEspLabel.PoeVelocidade(Valor: Integer);
begin
  if (Velocidade <> Valor) then
    begin
      if (Valor < 0) then
        Valor := 0;
      Velocidade := Valor;
      if (Velocidade = 0) then
        Temporizador.Enabled := False
      else
        Temporizador.Enabled := True;
      Temporizador.Interval := Velocidade;
      Visible := True;
    end;
end;

procedure TEspLabel.PiscaPisca(Sender: TOBject);
begin
  if (Temporizador.Enabled) then
    Visible := not (Visible);
end;

procedure Register;
begin
  RegisterComponents('Pessoal', [TEspLabel]);
end;
    
end.
