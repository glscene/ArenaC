//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fMoleculeC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"
#pragma link "GLS.Objects"
#pragma link "GLS.ParticleFX"
#pragma link "GLS.PerlinPFX"
#pragma link "GLS.Scene"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.SimpleNavigation"

#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CadencerProgress(TObject *Sender, const double DeltaTime,
          const double NewTime)
{
	GLCamera1->Roll(DeltaTime * 10);
	GLCamera1->Pitch(DeltaTime * 10);
	GLDCubeHent->Roll(DeltaTime * 20);
	GLDCubeHent->Pitch(DeltaTime * 20);
	GLDCubeHent->Turn(DeltaTime * 20);

	GLDCubeProton1->Pitch(DeltaTime*30);
	GLDCubeProton1->Turn(DeltaTime * 30);
	GLDCubeProton1->Roll(DeltaTime * 30);
	GLDCubeProton2->Turn(DeltaTime * 50);
	GLDCubeProton3->Pitch(DeltaTime * 60);
	GLDCubeProton4->Pitch(DeltaTime * -70);

	// GLDCubeProton4->Roll(DeltaTime*70);
	GLDCubeProton4->Turn(DeltaTime * 70);
	GLDCubeProton5->Pitch(DeltaTime * -100);
	GLDCubeProton5->Roll(DeltaTime * 100);
	// GLDCubeProton5->Turn(DeltaTime*-100);
}

//---------------------------------------------------------------------------
void __fastcall TForm1::FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	if (IsKeyDown(VK_ESCAPE))
		Application->Terminate();
}
//---------------------------------------------------------------------------

