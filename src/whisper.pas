unit whisper;

interface

uses WhisperExternal, WhisperTypes;

type
  TWhisper = class
  private
    FCtx: PWhisperContext;
    FCParams: TWhisperContextParams;
  public
    constructor Create;
    destructor Destroy; override;
    function Test: TWhisperModel;
  end;

implementation

{ TWhisper }

constructor TWhisper.Create;
begin
  inherited Create;
end;

destructor TWhisper.Destroy;
begin

  inherited;
end;

{$O-}
function TWhisper.Test: TWhisperModel;
var
  CParams: TWhisperContextParams;
  PParams: PWhisperContextParams;
begin
  PParams := WhisperContextDefaultParams;
  CParams := PParams^;
  FCParams := CParams;
  Result := default(TWhisperModel);
end;
{$O+}

end.
