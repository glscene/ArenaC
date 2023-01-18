//
(*  Sound Scene 4D based on GLScene https://github.com/glscene *)
//
//---------------------------------------------------------------
(*
Purpose: creating a Virtual Musical Theatre using GLScene components and objects.
Initial idea and development by Pavel Vassiliev, 2002
*)
//---------------------------------------------------------------
program SoundSceneD;

uses
  Forms,
  uGlobalsD in 'Source\uGlobalsD.pas',
  fInitialD in 'Source\fInitialD.pas' {FormInitial},
  fAboutD in 'Source\fAboutD.pas' {FormAbout},
  fDialogD in 'Source\fDialogD.pas' {FormDialog},
  fOptionsD in 'Source\fOptionsD.pas' {FormOptions},
  fSceneD in 'Source\fSceneD.pas' {FormScene};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormScene, FormScene);
  Application.Run;
end.
