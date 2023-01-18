//
(*  Sound Scene 4D based on GLScene https://github.com/glscene *)
//
unit fInitialD;

(*
  The unit with TFormInitial class as parent for all other forms
*)

interface

uses
  Winapi.Windows,
  System.SysUtils,
  System.Classes,
  System.IniFiles,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  // uGnuGetText,
  Vcl.Actnlist;

type
  TFormInitial = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public
    IniFile : TIniFile;
    procedure ReadIniFile; virtual;
    procedure WriteIniFile; virtual;
    procedure SetLanguage;
  end;

var
  FormInitial: TFormInitial;
  LangID : Word;

implementation

{$R *.dfm}

(* Here goes the translation of all component strings *)
procedure TFormInitial.FormCreate(Sender: TObject);
begin
  inherited;
  SetLanguage;
end;

// ------------------------------------------------
procedure TFormInitial.SetLanguage;
var
  LocalePath : TFileName;
  IniFile : TIniFile;

begin
  //
end;


// ------------------------------------------------
procedure TFormInitial.ReadIniFile;
begin
(*
  IniFile := TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini'));
  with IniFile do
    try
      LangID := ReadInteger('AudioScene', 'RadioGroupLanguage', 0);
    finally
      IniFile.Free;
    end;
*)
end;

// ------------------------------------------------
procedure TFormInitial.WriteIniFile;
begin
  //
end;

end.
