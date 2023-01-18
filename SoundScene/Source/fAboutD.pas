//
(*  Audio Scene 4D based on GLScene https://github.com/glscene  *)
//
unit fAboutD;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  Winapi.ShellAPI,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  //
  GLS.Cadencer,
  fDialogD;

type
  TFormAbout = class(TFormDialog)
    LabelCopyright: TLabel;
    PanelYears: TPanel;
    imgOpenGL: TImage;
    imgSourceForge: TImage;
    imgGLScene: TImage;
    LabelVersion: TLabel;
    StaticTextVersion: TStaticText;
    LabelGeoblock: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure imgSourceForgeDblClick(Sender: TObject);
    procedure imgGLSceneDblClick(Sender: TObject);
    procedure imgOpenGLDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuiltWithDelphiDblClick(Sender: TObject);
  private
    function GetFileInfo(const FileName: TFileName): TVSFixedFileInfo;
    function ReadVersionInfo(FileName: TFileName): TFileName;
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.FormCreate(Sender: TObject);
begin
  inherited;
 // Memo.Align := alClient;
  StaticTextVersion.Caption := ReadVersionInfo(ParamStr(0));
end;


procedure GotoURL(Handle: integer; const URL: string);
var
  S: array[0..255] of char;
begin
  ShellExecute(Handle, 'Open', StrPCopy(S, URL), nil, nil, SW_SHOW);
end;


procedure TFormAbout.BuiltWithDelphiDblClick(Sender: TObject);
begin
  inherited;
  GotoURL(Handle, 'http://www.embarcadero.com');
end;

function TFormAbout.GetFileInfo(const FileName: TFileName): TVSFixedFileInfo;
var
  Handle, VersionSize: DWord;
  SubBlock: string;
  Temp:     Pointer;
  Data:     Pointer;
begin
  SubBlock    := '\';
  VersionSize := GetFileVersionInfoSize(PChar(FileName), Handle);
  if VersionSize > 0 then
  begin
    GetMem(Temp, VersionSize);
    try
      if GetFileVersionInfo(PChar(FileName), Handle, VersionSize, Temp) then
        if VerQueryValue(Temp, PChar(SubBlock), Data, VersionSize) then
          Result := PVSFixedFileInfo(Data)^;
    finally
      FreeMem(Temp);
    end;
  end;
end;

procedure TFormAbout.imgGLSceneDblClick(Sender: TObject);
begin
  GotoURL(Handle, 'https://github.com/GLScene/');
end;

procedure TFormAbout.imgOpenGLDblClick(Sender: TObject);
begin
  GotoURL(Handle, 'http://www.opengl.org/');
end;

procedure TFormAbout.imgSourceForgeDblClick(Sender: TObject);
begin
  GotoURL(Handle, 'http://www.sourceforge.net/projects/glscene/');
end;

function TFormAbout.ReadVersionInfo(FileName: TFileName): TFileName;
type
  TGetWords = record
    case boolean of
      True: (C: cardinal);
      False: (Lo, Hi: word);
  end;
var
  VerSize, Wnd: cardinal;
  Buf, Value: Pointer;
  MS, LS: TGetWords;
begin
  VerSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
  if VerSize > 0 then
  begin
    GetMem(Buf, VerSize);
    GetFileVersionInfo(PChar(ParamStr(0)), 0, VerSize, Buf);

    VerQueryValue(Buf, '\', Value, VerSize);
    with TVSFixedFileInfo(Value^) do
    begin
      MS.C   := dwFileVersionMS;
      LS.C   := dwProductVersionMS; // dwFileVersionLS;
      Result := Format('%d.%d  Build %d', [MS.Hi, MS.Lo, LS.Hi]);
    end;
    FreeMem(Buf);
  end
  else
    Result := 'Unknown'; // or LoadResString(@sUnknown);
end;

end.
