// ---------------------------------------------------------------------------
#include <vcl.h>
#include <tchar.h>
#include <stdlib.h>
#pragma hdrstop
#include "fStarbox.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.Scene"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.Objects"
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Coordinates"
#pragma link "GLS.VectorTypes"

#pragma link "GLS.Cadencer"
#pragma link "GLS.Material"
#pragma link "GLS.Color"

#pragma link "GLS.SimpleNavigation"
#pragma resource "*.dfm"
TFormBox *FormBox;

// ---------------------------------------------------------------------------
__fastcall TFormBox::TFormBox(TComponent* Owner) : TForm(Owner) {
}

// ---------------------------------------------------------------------------
void TFormBox::MakeStars(TObject *Sender)
{
	for (int i = 0; i < 1000; i++) {
		Stars[i] = new TGLPoints(dcStarbox);
		Stars[i]->Colors->Add(((float)(rand() % 256)) / 256.0,
			((float)(rand() % 256)) / 256.0,
			((float)(rand() % 256)) / 256.0, 0.5);
		Stars[i]->Size = 5;
		Stars[i]->Position->X = 1.0 * rand() / RAND_MAX - 0.5;
		Stars[i]->Position->Y = 1.0 * rand() / RAND_MAX - 0.5;
		Stars[i]->Position->Z = 1.0 * rand() / RAND_MAX - 0.5;

		if (rgStyle->ItemIndex == 0) {
			Stars[i]->Style =  psSquare;
		}
		else
			Stars[i]->Style =  psSmooth;
	}
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::FormCreate(TObject *Sender)
{
  MakeStars(Sender);
}

//---------------------------------------------------------------------------

void __fastcall TFormBox::FormShow(TObject *Sender)
{
  TGLVector AColor;
  float d;

  TreeView->FullExpand();
  // colorize shapes  ConvertColorVector(const aColor: TGLColorVector): TColor;
///  shO->Brush->Color = ConvertRGBColor() ConvertWinColor(
///  (MatLibColors->Materials->Items[0]->Material->FrontProperties->Diffuse->Color,0);
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::ButtonStarsClick(TObject *Sender) {

  MakeStars(Sender);
}
// ---------------------------------------------------------------------------

void __fastcall TFormBox::GLSceneViewer1MouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {
	mx = X;
	my = Y;
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::FormMouseWheel(TObject *Sender, TShiftState Shift,
	int WheelDelta, TPoint &MousePos, bool &Handled) {
	if (GLSceneViewer1->MouseInControl == true) {
		Camera->AdjustDistanceToTarget(Power(1.1, -WheelDelta / 120));
	}
}

// ---------------------------------------------------------------------------

void __fastcall TFormBox::GLSceneViewer1MouseMove(TObject *Sender,
	TShiftState Shift, int X, int Y) {
	if (Shift.Contains(ssLeft))
		Camera->MoveAroundTarget(my - Y, mx - X);
	else if (Shift.Contains(ssRight))
		Camera->RotateTarget(my - Y, mx - X, 0);
	mx = X;
	my = Y;
}
//---------------------------------------------------------------------------

void __fastcall TFormBox::chbAllClick(TObject *Sender)
{
// if chbAll->Cheked then all gbAstars cheked and viewing
}

//---------------------------------------------------------------------------

void __fastcall TFormBox::chbOClick(TObject *Sender)
{
// switch to view different spectral types of stars
 int i;
 switch (i) {
	 {
	  case 'O' : {
	  //
		break;
	  }
	  case 'B' : {
		//
	  break;
	  }
	  case 'A' : {
		  //
	  break;
	  }
	  case 'F' : {
		//
	  break;
	  }
	  case 'G' : {
		//
	  break;
	  }
	  case 'K' : {
		//
	  break;
	  }
	  case 'M' : {
		//
	  break;
	  }
	  default : {
	  //
	  }
	}
 }


}
//---------------------------------------------------------------------------


void __fastcall TFormBox::miStarLifeClick(TObject *Sender)
{
// view fStarLife
   TFormLife*  FormLife;
   FormLife = new TFormLife(this);
	try {
	  FormLife->ShowModal();
	}
	__finally {
	  FormLife->Free();
	}
}

//---------------------------------------------------------------------------

void __fastcall TFormBox::miProjectionsClick(TObject *Sender)
{
   TFormProjections*  FormProjections;
   FormProjections = new TFormProjections(this);
	try {
	  FormProjections->ShowModal();
	}
	__finally {
	  FormProjections->Free();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormBox::About1Click(TObject *Sender)
{
   TFormAbout *FormAbout;
   FormAbout = new TFormAbout(this);
	try {
	  FormAbout->ShowModal();
	}
	__finally {
	  FormAbout->Free();
	}
}
//---------------------------------------------------------------------------

