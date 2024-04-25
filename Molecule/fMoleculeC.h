//---------------------------------------------------------------------------

#ifndef fMoleculeCH
#define fMoleculeCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "GLS.BaseClasses.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.Coordinates.hpp"
#include "GLS.Objects.hpp"
#include "GLS.ParticleFX.hpp"
#include "GLS.PerlinPFX.hpp"
#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.SimpleNavigation.hpp"
#include "GLS.Keyboard.hpp"
#include "GLS.GeomObjects.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGLPerlinPFXManager *PerlinManager;
	TGLCadencer *Cadencer;
	TGLScene *Scene;
	TGLDummyCube *dcCl;
	TGLSphere *Sphere;
	TGLSphere *clBottom1;
	TGLSphere *clMiddle1;
	TGLSphere *clMiddle2;
	TGLSphere *clMiddle3;
	TGLSphere *clMiddle4;
	TGLSphere *clTop1;
	TGLSphere *GLSphere8;
	TGLSphere *clMiddle5;
	TGLDummyCube *dcNa;
	TGLSphere *GLSphere17;
	TGLSphere *GLSphere18;
	TGLDummyCube *GLDCubeProton4;
	TGLSphere *naTop1;
	TGLSphere *GLSphere15;
	TGLDummyCube *GLDCubeProton3;
	TGLSphere *GLSphere14;
	TGLSphere *naBottom1;
	TGLDummyCube *GLDCubeProton2;
	TGLSphere *GLSphere12;
	TGLSphere *GLSphere11;
	TGLDummyCube *GLDCubeProton1;
	TGLSphere *GLSphere1;
	TGLSphere *GLSphere10;
	TGLParticleFXRenderer *GLParticleFXRenderer1;
	TGLCamera *GLCamera1;
	TGLLightSource *GLLightSource1;
	TGLSceneViewer *GLSceneViewer1;
	TGLCustomSpritePFXManager *SpriteManager;
	TGLSimpleNavigation *SimpleNavigation;
	TGLArrowLine *lineMiddle1;
	TGLArrowLine *lineMiddle2;
	TGLArrowLine *lineMiddle3;
	void __fastcall FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall CadencerProgress(TObject *Sender, const double DeltaTime, const double NewTime);

private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
