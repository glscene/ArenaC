unit fMoleculeD;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Math,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.ExtCtrls,
  Vcl.Dialogs,

  GLS.Scene,
  GLS.Objects,
  GLS.SceneViewer,
  GLS.Cadencer,
  GLS.ParticleFX,
  GLS.PerlinPFX,
  GLS.Coordinates,
  GLS.BaseClasses;

type
  TFormMolecules = class(TForm)
    Scene: TGLScene;
    GLSceneViewer1: TGLSceneViewer;
    Camera: TGLCamera;
    LightSource: TGLLightSource;
    Hent: TGLSphere;
    dcHent: TGLDummyCube;
    GLSphere2: TGLSphere;
    GLSphere3: TGLSphere;
    GLSphere4: TGLSphere;
    GLSphere5: TGLSphere;
    GLSphere6: TGLSphere;
    GLSphere7: TGLSphere;
    GLSphere8: TGLSphere;
    GLSphere9: TGLSphere;
    Cadencer: TGLCadencer;
    GLDCubeProton1: TGLDummyCube;
    GLSphere1: TGLSphere;
    GLSphere10: TGLSphere;
    GLDCubeProton2: TGLDummyCube;
    GLDCubeProton5: TGLDummyCube;
    GLDCubeProton3: TGLDummyCube;
    GLDCubeProton4: TGLDummyCube;
    GLSphere11: TGLSphere;
    GLSphere12: TGLSphere;
    GLSphere13: TGLSphere;
    GLSphere14: TGLSphere;
    GLSphere15: TGLSphere;
    GLSphere16: TGLSphere;
    GLSphere17: TGLSphere;
    GLSphere18: TGLSphere;
    Timer: TTimer;
    SpriteManager: TGLCustomSpritePFXManager;
    GLParticleFXRenderer1: TGLParticleFXRenderer;
    PerlinManager: TGLPerlinPFXManager;
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure GLSceneViewer1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CadencerProgress(Sender: TObject;
      const deltaTime, newTime: Double);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    mx, my: Integer;
  end;

var
  FormMolecules: TFormMolecules;

implementation

{$R *.dfm}

procedure TFormMolecules.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
end;

procedure TFormMolecules.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  Camera.AdjustDistanceToTarget(Power(1.1, WheelDelta / 120));
end;

procedure TFormMolecules.GLSceneViewer1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mx := X;
  my := Y;
end;

procedure TFormMolecules.GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Shift <> [] then
  begin
    Camera.MoveAroundTarget(my - Y, mx - X);
    mx := X;
    my := Y;
  end;

end;

procedure TFormMolecules.CadencerProgress(Sender: TObject;
  const deltaTime, newTime: Double);
begin
//  Camera.Roll(deltaTime * 10);
  Camera.Pitch(deltaTime * 10);
  dcHent.Roll(deltaTime * 20);
  dcHent.Pitch(deltaTime * 20);
  dcHent.Turn(deltaTime * 20);
  // GLDCubeProton1.pitch(deltaTime*30);
  GLDCubeProton1.Turn(deltaTime * 30);
  GLDCubeProton1.Roll(deltaTime * 30);
  GLDCubeProton2.Turn(deltaTime * 50);
  GLDCubeProton3.Pitch(deltaTime * 60);
  GLDCubeProton4.Pitch(deltaTime * -70);
  // GLDCubeProton4.Roll(deltaTime*70);
  GLDCubeProton4.Turn(deltaTime * 70);
  GLDCubeProton5.Pitch(deltaTime * -100);
  GLDCubeProton5.Roll(deltaTime * 100);
  // GLDCubeProton5.Turn(deltaTime*-100);
end;

procedure TFormMolecules.TimerTimer(Sender: TObject);
begin
  Caption := Format('%.1f FPS', [GLSceneViewer1.FramesPerSecond]);
  GLSceneViewer1.ResetPerformanceMonitor;
end;

procedure TFormMolecules.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    application.Terminate;
end;

end.
