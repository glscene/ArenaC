//---------------------------------------------------------------------------
#ifndef fStarlifeH
#define fStarlifeH
//---------------------------------------------------------------------------
#include <tchar.h>
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Dialogs.hpp>

#include "GLS.Scene.hpp"
#include "GLS.Objects.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.LensFlare.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.Texture.hpp"
#include "GLS.SkyDome.hpp"
#include "GLS.VectorGeometry.hpp"
#include "GLS.Atmosphere.hpp"
#include "GLS.SimpleNavigation.hpp"
#include "GLS.Behaviours.hpp"
#include "Vcl.Imaging.JPeg.hpp"
#include "GLS.Coordinates.hpp"
#include "GLS.BaseClasses.hpp"
#include "GLS.Color.hpp"

//---------------------------------------------------------------------------
class TFormLife : public TForm
{
  __published: // IDE-managed Components
    TGLScene* GLScene1;
    TGLSkyDome* GLSkyDome1;
    TGLDummyCube* dcParsec;
    TGLLensFlare* GLLensFlare1;
    TGLLightSource* GLLightSource1;
    TGLCamera* GLCamera1;
    TGLCadencer* GLCadencer1;
    TGLSimpleNavigation* GLSimpleNavigation1;
    TTimer* Timer1;
    TGLSceneViewer* GLSceneViewer1;
    TPanel* Panel1;
    TButton* btnStart;
    TLabel* Label1;
    TCheckBox* chbSpeed10;
    TStaticText* stColor;
    TColorDialog* ColorDialog1;
    TShape* ShapeO;
    TShape* ShapeB;
    TShape* ShapeA;
    TShape* ShapeF;
	TShape* ShapeG;
    TShape* ShapeK;
    TShape* ShapeM;
    TGLPoints* StarsO;
    TGLPoints* StarsB;
    TGLPoints* StarsK;
    TGLPoints* StarsG;
    TGLPoints* StarsF;
    TGLPoints* StarsA;
    TGLPoints* StarsM;
    TCheckBox* chbO;
    TCheckBox* chbB;
    TCheckBox* chbA;
    TCheckBox* chbF;
    TCheckBox* chbK;
    TCheckBox* chbG;
    TCheckBox* chbM;
    TLabel* Label2;
    TLabel* Label3;
	TCheckBox *chbStop;
    void __fastcall FormCreate(TObject* Sender);
    void __fastcall FormClose(TObject* Sender, TCloseAction &Action);
    void __fastcall GLCadencer1Progress(
        TObject* Sender, const double deltaTime, const double newTime);
    void __fastcall btnStartClick(TObject* Sender);
    void __fastcall Timer1Timer(TObject* Sender);
    void __fastcall chbSpeed10Click(TObject* Sender);
    void __fastcall ShapeOMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeBMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeAMouseDown(
		TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeFMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeGMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeKMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall ShapeMMouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall chbOClick(TObject* Sender);
	void __fastcall chbStopClick(TObject *Sender);
	void __fastcall chbMClick(TObject *Sender);
  private: // User declarations
    TGLAtmosphere* Atmosphere;
  public: // User declarations
    __fastcall TFormLife(TComponent* Owner);
    int time;
    bool is_simulated;
};
//---------------------------------------------------------------------------
extern PACKAGE TFormLife* FormLife;
//---------------------------------------------------------------------------
#endif

