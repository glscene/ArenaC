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
TFormBox* FormBox;

// ---------------------------------------------------------------------------
__fastcall TFormBox::TFormBox(TComponent* Owner) : TForm(Owner) {}

// ---------------------------------------------------------------------------
void TFormBox::MakeStars(TObject* Sender)
{
	// создание скопления звёзд со случайной позицией и цветом
	if (!chbOnClasses->Checked) {
		for (int i = 0; i < SpinEdit->Value; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Colors->Add(((float)(rand() % 256)) / 256.0,
				((float)(rand() % 256)) / 256.0,
				((float)(rand() % 256)) / 256.0, 0.5);
			Stars[i]->Size = 5;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			if (chbSmoothStars->Checked) {
				Stars[i]->Style = psSmooth;
			} else
				Stars[i]->Style = psSquare;
		}
	}
	else
	// создание скопления звёзд по спектральным классам
	{
		// O
		if (chbO->Checked) {
		for (int i = 0; i < nbOn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 9;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrBlue);
			}
		}
		// B
		if (chbB->Checked) {
		for (int i = 0; i < nbBn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 9;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrLightBlue);
			}
		}
		// A
		if (chbA->Checked) {
		for (int i = 0; i < nbAn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 7;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrWheat);
			}
		}
		// F
		if (chbF->Checked) {
		for (int i = 0; i < nbFn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 7;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrFuchsia);
			}
		}
		// G
		if (chbG->Checked) {
		for (int i = 0; i < nbGn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 5;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrYellow);
			}
		}
		// K
		if (chbK->Checked) {
		for (int i = 0; i < nbKn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 5;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrOrange);
			}
		}
		// M
		if (chbM->Checked) {
		for (int i = 0; i < nbMn->Value - 1; i++) {
			Stars[i] = new TGLPoints(dcStarbox);
			Stars[i]->Size = 5;
			Stars[i]->Position->SetPoint(1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5,
										 1.0 * rand() / RAND_MAX - 0.5);
			Stars[i]->Colors->Add(clrRed);
			}
		}
	}
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::FormCreate(TObject* Sender)
{
	MakeStars(Sender);
}

//---------------------------------------------------------------------------

void __fastcall TFormBox::FormShow(TObject* Sender)
{
    TGLVector AColor;
    float d;

    TreeView->FullExpand();
    // colorize shapes  ConvertColorVector(const aColor: TGLColorVector): TColor;
    ///  shO->Brush->Color = ConvertRGBColor() ConvertWinColor(
    ///  (MatLibColors->Materials->Items[0]->Material->FrontProperties->Diffuse->Color,0);
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::ButtonStarsClick(TObject* Sender)
{
    MakeStars(Sender);
}
// ---------------------------------------------------------------------------

void __fastcall TFormBox::GLSceneViewerMouseDown(
    TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y)
{
    mx = X;
    my = Y;
}

// ---------------------------------------------------------------------------
void __fastcall TFormBox::FormMouseWheel(TObject* Sender, TShiftState Shift,
    int WheelDelta, TPoint &MousePos, bool &Handled)
{
    if (GLSceneViewer->MouseInControl == true) {
        Camera->AdjustDistanceToTarget(Power(1.1, -WheelDelta / 120));
    }
}

// ---------------------------------------------------------------------------

void __fastcall TFormBox::GLSceneViewer1MouseMove(
    TObject* Sender, TShiftState Shift, int X, int Y)
{
    if (Shift.Contains(ssLeft))
        Camera->MoveAroundTarget(my - Y, mx - X);
    else if (Shift.Contains(ssRight))
        Camera->RotateTarget(my - Y, mx - X, 0);
    mx = X;
    my = Y;
}
//---------------------------------------------------------------------------

void __fastcall TFormBox::chbAllClick(TObject* Sender)
{
	if (chbAll->Checked) {
	  chbO->Checked = true;
	  chbB->Checked = true;
	  chbA->Checked = true;
	  chbF->Checked = true;
	  chbG->Checked = true;
	  chbK->Checked = true;
	  chbM->Checked = true;
	}
	else {
	  chbO->Checked = false;
	  chbB->Checked = false;
	  chbA->Checked = false;
	  chbF->Checked = false;
	  chbG->Checked = true;
	  chbK->Checked = false;
	  chbM->Checked = false;
	}

}

//---------------------------------------------------------------------------

void __fastcall TFormBox::chbOClick(TObject* Sender)
{
    // switch to view different spectral types of stars
    int i;
    switch (i) {
        {
            case 'O': {
                //
                break;
            }
            case 'B': {
                //
                break;
            }
            case 'A': {
                //
                break;
            }
            case 'F': {
                //
                break;
            }
            case 'G': {
                //
                break;
            }
            case 'K': {
                //
                break;
            }
            case 'M': {
                //
                break;
            }
            default: {
                //
            }
        }
    }
}
//---------------------------------------------------------------------------
// Появление, горение и угасание звёзд
void __fastcall TFormBox::miStarLifeClick(TObject* Sender)
{
    // view fStarLife
    TFormLife* FormLife;
    FormLife = new TFormLife(this);
    try {
        FormLife->ShowModal();
    } __finally
    {
        FormLife->Free();
    }
}

//---------------------------------------------------------------------------

void __fastcall TFormBox::miProjectionsClick(TObject* Sender)
{
    TFormProjections* FormProjections;
    FormProjections = new TFormProjections(this);
    try {
        FormProjections->ShowModal();
    } __finally
    {
        FormProjections->Free();
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormBox::miAboutClick(TObject* Sender)
{
    TFormAbout* FormAbout;
    FormAbout = new TFormAbout(this);
    try {
        FormAbout->ShowModal();
    } __finally
    {
        FormAbout->Free();
    }
}
//---------------------------------------------------------------------------


void __fastcall TFormBox::ButtonClearClick(TObject *Sender)
{
 dcStarbox->DeleteChildren();
 GLSceneViewer->Invalidate();
}
//---------------------------------------------------------------------------

void __fastcall TFormBox::SpinEditChange(TObject *Sender)
{
 nbOn->Value = RoundInt(nbO->Value * SpinEdit->Value / 100);
 nbBn->Value = RoundInt(nbB->Value * SpinEdit->Value / 100);
 nbAn->Value = RoundInt(nbA->Value * SpinEdit->Value / 100);
 nbFn->Value = RoundInt(nbF->Value * SpinEdit->Value / 100);
 nbGn->Value = RoundInt(nbG->Value * SpinEdit->Value / 100);
 nbKn->Value = RoundInt(nbK->Value * SpinEdit->Value / 100);
 nbMn->Value = RoundInt(nbM->Value * SpinEdit->Value / 100);
}
//---------------------------------------------------------------------------


