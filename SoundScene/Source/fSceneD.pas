//
(*  Audio Scene 4D based on GLScene https://github.com/glscene  *)
//
unit fSceneD;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Math,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Menus,
  Vcl.ToolWin,
  Vcl.StdCtrls,
  Vcl.Imaging.jpeg,

  GLS.DCE,
  GLS.SoundManager,
  Sounds.BASS,
  GLS.Collision,
  GLS.FPSMovement,
  Physics.NGDManager,
  GLS.BaseClasses,
  GLS.Cadencer,
  GLS.ParticleFX,
  GLS.Material,

  fAboutD,
  fOptionsD,

  GLS.VectorTypes,
  GLS.VectorGeometry,
  GLS.Scene,
  GLS.SceneViewer,
  GLS.FireFX,
  GLS.Objects,
  GLS.HUDObjects,
  GLS.Graph,
  GLS.VectorFileObjects,
  GLS.GeomObjects,
  GLS.Mesh,
  GLS.Coordinates,
  GLS.SkyDome,
  GLS.Navigator,
  GLS.Keyboard,
  GLS.BitmapFont,
  GLS.WindowsFont,
  GLS.SimpleNavigation,
  GLS.Color,
  GLS.Utils;

type
   TPianoKeySet = set of 0..83;  // 12keys * 7octavas
   TGuitarKeySet = set of 0..149; // 25frets * 6strings

type
  TFormScene = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    miNew: TMenuItem;
    miOpen: TMenuItem;
    miSave: TMenuItem;
    miSaveAs: TMenuItem;
    N1: TMenuItem;
    miExit: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    N5: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    GoTo1: TMenuItem;
    N3: TMenuItem;
    Window1: TMenuItem;
    miChangeFPS: TMenuItem;
    miMaxFPS: TMenuItem;
    miMiddleFPS: TMenuItem;
    miMinFPS: TMenuItem;
    N6: TMenuItem;
    Hide1: TMenuItem;
    Show1: TMenuItem;
    Help1: TMenuItem;
    miContents: TMenuItem;
    N2: TMenuItem;
    miAbout: TMenuItem;
    miTools: TMenuItem;
    miCalculate: TMenuItem;
    miOptions: TMenuItem;
    GLSceneViewer1: TGLSceneViewer;
    GLScene1: TGLScene;
    LightSource1: TGLLightSource;
    Camera: TGLCamera;
    dcScene: TGLDummyCube;
    spEarth: TGLSphere;
    dcMoon: TGLDummyCube;
    spMoon: TGLSphere;
    GLMatLibChromatic: TGLMaterialLibrary;
    dcPianoCubes: TGLDummyCube;
    cbPianoStand: TGLCube;
    dcCamera: TGLDummyCube;
    GLCadencer1: TGLCadencer;
    ControlBar1: TControlBar;
    ToolBarFile: TToolBar;
    PanelBottom: TPanel;
    StatusBar1: TStatusBar;
    PanelLeft: TPanel;
    PanelRight: TPanel;
    Timer1: TTimer;
    GLWindowsBitmapFont1: TGLWindowsBitmapFont;
    ImageListInterface: TImageList;
    ImageListComponents: TImageList;
    ImageListObjects: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spCore: TGLSphere;
    LightSource2: TGLLightSource;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    GLMatLibScriabin: TGLMaterialLibrary;
    dcGuitarCubes: TGLDummyCube;
    cbGuitarStand: TGLCube;
    grdGuitarKeys: TGLXYZGrid;
    grdPianoKeys: TGLXYZGrid;
    procedure miAboutClick(Sender: TObject);
    procedure miOptionsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GLCadencer1Progress(Sender: TObject; const DeltaTime, NewTime: Double);
    procedure GLSceneViewer1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer;
      MousePos: TPoint; var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure miExitClick(Sender: TObject);
  public
    mx: Integer;
    my: Integer;
    PianoKeys0o: array[0..2] of TGLCube; // 3 keys for 0 octava & 3 constellations
    PianoKeys: array[0..83] of TGLCube; // 84 keys for 7 octavas & 84 constellations
    PianoKeys8o: TGLCube; // 1 key for 8 octava & 1 constellation
    GuitarKeys: array[0..149] of TGLCube; // 149 keys for 6 strings
    procedure MakePianoKeys(Sender: TObject);
    procedure MakeGuitarKeys(Sender: TObject);
        property Action;
  private
    CameraHeight: Single;
    PathToAsset: TFileName;
    MaterialIndex: Integer;

    // piano keyboard
    NPianoKeys: Integer;
    KeyDepthW, KeyHeightW, KeyWidthW: Single;
    KeyDepthB, KeyHeightB, KeyWidthB: Single;
    CountOctavas: Integer;

    // guitar fretboard
    NGuitarKeys: Integer;
    KeyDepth, KeyHeight, KeyWidth: Single;
    StringIndex, FretIndex : Integer;
    CountStrings, CountFrets: Integer;
    OriginX, OriginY, OriginZ, OriginMaterial: Single;
    OriginMaterials: array [0 .. 5] of Integer; // materials for open strings

    procedure SetPianoKeySizes;
    procedure SetGuitarKeySizes;
  end;

var
  FormScene: TFormScene;

var
  BlackKeySet: TPianoKeySet;  // for piano
  NutKeySet: TGuitarKeySet;  // for guitar

implementation

{$R *.dfm}

//-------------------------------------------
(*
  PianoKeyboard has
  - 3 keys for notes in 0 octava
  - 12 * 7 = 84 keys for notes in 1..7 octavas
  - 1 key for 8 octava
*)
//------------------------------------------
procedure TFormScene.SetPianoKeySizes;
begin
  NPianoKeys := 84;

  KeyDepthW := 12;   KeyDepthB := 6;
  KeyHeightW := 1;   KeyHeightB := 1;
  KeyWidthW := 1;    KeyWidthB := 0.6;

  // 35 black keys for 7 octavas
  BlackKeySet := [ {0}  1, { 2}  3, { 4,  5}  6, { 7}  8, { 9} 10, {11}
                  {12} 13, {14} 15, {16, 17} 18, {19} 20, {21} 22, {23}
                  {24} 25, {26} 27, {28, 29} 30, {31} 32, {33} 34, {35}
                  {36} 37, {38} 39, {40, 41} 42, {43} 44, {45} 46, {47}
                  {48} 49, {50} 51, {52, 53} 54, {55} 56, {57} 58, {59}
                  {60} 61, {62} 63, {64, 65} 66, {67} 68, {69} 70, {71}
                  {72} 73, {74} 75, {76, 77} 78, {79} 80, {81} 82 {83}];
end;

//---------------------------------------
(* MakePianoKeys *)
//---------------------------------------
procedure TFormScene.MakePianoKeys(Sender: TObject);

var
  i : Integer;
  CurrentX: Single;

begin
  SetPianoKeySizes;
  // Make 3 keys 'a', 'as' and 'b' for 0 octava
  MaterialIndex := 9; // 'a' in MaterialLibrary
  CurrentX := (cbPianoStand.CubeWidth / 2 - 0.5);
  for i := 0 to 2 do
  begin
    PianoKeys0o[i] := TGLCube.CreateAsChild(dcPianoCubes);
    PianoKeys0o[i].Material.MaterialLibrary := GLMatLibChromatic;
    PianoKeys0o[i].Material.LibMaterialName := GLMatLibChromatic.Materials[MaterialIndex + i].Name;
    if i = 1 then  // a key with IsBlack = true
    begin
      PianoKeys0o[i].CubeDepth := KeyDepthB;
      PianoKeys0o[i].CubeHeight := KeyHeightB;
      PianoKeys0o[i].CubeWidth := KeyWidthB;
      PianoKeys0o[i].Position.SetPoint(CurrentX - i/2, 1, 3);
    end
    else
    begin
      PianoKeys0o[i].CubeDepth := KeyDepthW;
      PianoKeys0o[i].CubeHeight := KeyHeightW;
      PianoKeys0o[i].CubeWidth := KeyWidthW;
      PianoKeys0o[i].Position.SetPoint(CurrentX - i/2, 0, 0);
    end;
  end;

  // Make 84 keys for 7 octavas
  MaterialIndex := 0; // number of material name 'c' in MaterialLibrary
  CurrentX := (cbPianoStand.CubeWidth / 2 - 2.5);
  for i := 0 to NPianoKeys - 1 do
  begin
    PianoKeys[i] := TGLCube.CreateAsChild(dcPianoCubes);
    MaterialIndex := i mod 12;
    PianoKeys[i].Material.MaterialLibrary := GLMatLibChromatic;
    PianoKeys[i].Material.LibMaterialName := GLMatLibChromatic.Materials[MaterialIndex].Name;
    if (i in BlackKeySet) then
    begin
      PianoKeys[i].Position.SetPoint(CurrentX + 0.5, 1, 3);
      PianoKeys[i].CubeDepth := KeyDepthB;
      PianoKeys[i].CubeHeight := KeyHeightB;
      PianoKeys[i].CubeWidth := KeyWidthB;
    end
    else
    begin
      PianoKeys[i].Position.SetPoint(CurrentX, 0, 0);
      PianoKeys[i].CubeDepth := KeyDepthW;
      PianoKeys[i].CubeHeight := KeyHeightW;
      PianoKeys[i].CubeWidth := KeyWidthW;
      CurrentX := CurrentX - KeyWidthW;  // moving to next key position on X axes
    end;
  end;

  // Make 1 key 'c' for 8 octava
  PianoKeys8o := TGLCube.CreateAsChild(dcPianoCubes);
  PianoKeys8o.Material.MaterialLibrary := GLMatLibChromatic;
  PianoKeys8o.Material.LibMaterialName := GLMatLibChromatic.Materials[0].Name; // do
  PianoKeys8o.Position.SetPoint(CurrentX, 0, 0);
  PianoKeys8o.CubeDepth := KeyDepthW;
  PianoKeys8o.CubeHeight := KeyHeightW;
  PianoKeys8o.CubeWidth := KeyWidthW;
end;

//--------------------------------------
(* MakeGuitarKeys *)
//--------------------------------------
procedure TFormScene.SetGuitarKeySizes;
begin
  NGuitarKeys := 150;

  KeyDepth := 1;
  KeyHeight := 1;
  KeyWidth := 2;
  OriginX := (cbGuitarStand.CubeWidth / 2 - 1);
  OriginY := 11;
  OriginZ := 5;

  CountStrings := 6;
  CountFrets := 25;

  FretIndex := 0;
  StringIndex := 0;
  MaterialIndex := 0;

  // open strings colors
  OriginMaterials[0] := 4;  // mi
  OriginMaterials[1] := 11; // si
  OriginMaterials[2] := 7;  // sol
  OriginMaterials[3] := 2;  // re
  OriginMaterials[4] := 9;  // la
  OriginMaterials[5] := 4;  // mi

end;

procedure TFormScene.MakeGuitarKeys(Sender: TObject);
var
  i, j, k,
  NumString: Integer;   // current string number

begin
  SetGuitarKeySizes;
  i := 0; j := 0; k := 0;  // current keyindex
  NumString := 0; // the first string number

  for i := 0 to CountFrets - 1 do
  begin
    for j := 0 to CountStrings - 1 do
    begin
      GuitarKeys[k] := TGLCube.CreateAsChild(dcGuitarCubes);

      NumString := k div 25 + 1;
      FretIndex := k mod 25;
      MaterialIndex := (OriginMaterials[NumString - 1] + FretIndex) mod 12;
      GuitarKeys[k].Material.MaterialLibrary := GLMatLibChromatic;
      GuitarKeys[k].Material.LibMaterialName := GLMatLibChromatic.Materials[MaterialIndex].Name;
      //
      GuitarKeys[k].Position.SetPoint(OriginX - FretIndex * 2 - 1, OriginY - NumString + 1, OriginZ);
      GuitarKeys[k].CubeDepth := KeyDepth;
      GuitarKeys[k].CubeHeight := KeyHeight;
      GuitarKeys[k].CubeWidth := KeyWidth;

      Inc(k);
    end;

 end;
 NGuitarKeys := k;

end;


//--------------------------------------------------------------------

procedure TFormScene.FormCreate(Sender: TObject);
begin
  PathToAsset := GetCurrentDir();
  // Loading Maps for planets
  SetCurrentDir(PathToAsset + '\assets\map');
  spEarth.Material.Texture.Disabled := False;
  spEarth.Material.Texture.Image.LoadFromFile('earth.jpg');
  spMoon.Material.Texture.Disabled := False;
  spMoon.Material.Texture.Image.LoadFromFile('moon.jpg');

  SetCurrentDir(PathToAsset + '\assets\texture');
  cbPianoStand.Material.Texture.Disabled := False;
  cbPianoStand.Material.Texture.Image.LoadFromFile('ashwood.jpg');
  cbGuitarStand.Material.Texture.Disabled := False;
  cbGuitarStand.Material.Texture.Image.LoadFromFile('ashwood.jpg');

  MakePianoKeys(Self);
  MakeGuitarKeys(Self);
end;


//-----------------------------------------------------------------------------------------

procedure TFormScene.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer;
  MousePos: TPoint; var Handled: Boolean);
begin
  Camera.AdjustDistanceToTarget(Power(1.1, WheelDelta / 120));
end;

//----------------------------------------------------------------------------------------
procedure TFormScene.GLCadencer1Progress(Sender: TObject; const DeltaTime, NewTime: Double);
var
  speed : Single;
  MyString: String;
begin
  inherited;
  spEarth.TurnAngle := newTime * 60;

  if IsKeyDown(VK_SHIFT) then
    speed := 5 * deltaTime
  else
    speed := deltaTime;

  with Camera.Position do
  begin // WASD
    if (IsKeyDown(VK_RIGHT) or IsKeyDown(68)) then
      dcCamera.Translate(Z * speed, 0, -X * speed);
    if (IsKeyDown(VK_LEFT) or IsKeyDown(65)) then
      dcCamera.Translate(-Z * speed, 0, X * speed);
    if (IsKeyDown(VK_UP) or IsKeyDown(87)) then
      dcCamera.Translate(-X * speed, 0, -Z * speed);
    if (IsKeyDown(VK_DOWN) or IsKeyDown(83)) then
      dcCamera.Translate(X * speed, 0, Z * speed);
    if (IsKeyDown(VK_PRIOR) or IsKeyDown('Q') or IsKeyDown('é')) then
    begin
      CameraHeight := CameraHeight + 10 * speed;
      dcCamera.Position.Y := CameraHeight;
    end;
    if (IsKeyDown(VK_NEXT) or IsKeyDown('E') or IsKeyDown('ó')) then
    begin
      CameraHeight := CameraHeight - 10 * speed;
      dcCamera.Position.Y := CameraHeight;
    end;
    if IsKeyDown(VK_ESCAPE) then
      Close;
  end;

  StatusBar1.Panels[1].Text := 'X: ' + FloatToStrF(dcCamera.Position.X, ffFixed, 7, 2);
  StatusBar1.Panels[2].Text := 'Y: ' + FloatToStrF(dcCamera.Position.Y, ffFixed, 7, 2);
  StatusBar1.Panels[3].Text := 'Z: ' + FloatToStrF(dcCamera.Position.Z, ffFixed, 7, 2);

end;


procedure TFormScene.GLSceneViewer1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mx := X;
  my := Y;
end;

procedure TFormScene.GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    Camera.MoveAroundTarget(my - Y, mx - X);
  mx := X;
  my := Y;
end;

procedure TFormScene.miAboutClick(Sender: TObject);
begin
  inherited;
  with TFormAbout.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TFormScene.miExitClick(Sender: TObject);
begin
   FormScene.Close;
end;

procedure TFormScene.miOptionsClick(Sender: TObject);
begin
  inherited;
  with TFormOptions.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TFormScene.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text :=
    Format('FPS:  %.1f ', [GLSceneViewer1.FramesPerSecond]);
//  Format('%d particles, %.1f FPS', [GLParticles1.Count, GLSceneViewer1.FramesPerSecond]);
  GLSceneViewer1.ResetPerformanceMonitor;
end;

end.
