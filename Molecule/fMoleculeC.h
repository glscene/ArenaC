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
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGLPerlinPFXManager *PerlinManager;
	TGLCadencer *Cadencer;
	TGLScene *Scene;
	TGLDummyCube *GLDCubeHent;
	TGLSphere *Hent;
	TGLSphere *GLSphere2;
	TGLSphere *GLSphere3;
	TGLSphere *GLSphere4;
	TGLSphere *GLSphere5;
	TGLSphere *GLSphere6;
	TGLSphere *GLSphere7;
	TGLSphere *GLSphere8;
	TGLSphere *GLSphere9;
	TGLDummyCube *GLDCubeProton5;
	TGLSphere *GLSphere17;
	TGLSphere *GLSphere18;
	TGLDummyCube *GLDCubeProton4;
	TGLSphere *GLSphere16;
	TGLSphere *GLSphere15;
	TGLDummyCube *GLDCubeProton3;
	TGLSphere *GLSphere14;
	TGLSphere *GLSphere13;
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
