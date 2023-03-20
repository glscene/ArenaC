// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fStarlife.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.Scene"
#pragma link "GLS.Objects"
#pragma link "GLS.Cadencer"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Coordinates"

#pragma link "GLS.LensFlare"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLS.SkyDome"
#pragma link "GLS.Atmosphere"

#pragma resource "*.dfm"
TFormLife* FormLife;

// There should be a dynamic array
TGLPoints* Stars_O[12];   // Array of 12 stars for O class
int min_time_live_O = 1;  // Min lifetime for O stars
int max_time_live_O = 20; // Max lifetime for O stars
int Times_O[12];          // Starlife for O class in seconds
int Count_O = 12;

TGLPoints* Stars_B[42];   // Array of 42 stars for B class
int min_time_live_B = 50; // Min lifetime for B stars
int max_time_live_B = 100; // Max lifetime for B stars
int Times_B[42];           // Starlife for B class in seconds
int Count_B = 42;

TGLPoints* Stars_A[60];    // Array of 60 stars for A class
int min_time_live_A = 110; // Min lifetime for A stars
int max_time_live_A = 200; // Max lifetime for A stars
int Times_A[60];           // Starlife for A class in seconds
int Count_A = 60;

TGLPoints* Stars_F[180];   // Array of 180 stars for F class
int min_time_live_F = 300; // Min lifetime for F stars
int max_time_live_F = 450; // Max lifetime for F stars
int Times_F[180];          // Starlife for F class in seconds
int Count_F = 180;

TGLPoints* Stars_G[420];   // Array of 420 stars for G class
int min_time_live_G = 600; // Min lifetime for G stars
int max_time_live_G = 800; // Max lifetime for G stars
int Times_G[420];          // Starlife for G class in seconds
int Count_G = 420;

TGLPoints* Stars_K[720];   // Array of 720 stars for K class
int min_time_live_K = 900; // Min lifetime for K stars
int max_time_live_K = 1500;// Max lifetime for K stars
int Times_K[720];          // Starlife for K class in seconds
int Count_K = 720;

TGLPoints* Stars_M[4560];   // Array of 4560 stars for M class
int min_time_live_M = 2000; // Min lifetime for M stars
int max_time_live_M = 3000; // Max lifetime for M stars
int Times_M[4560];          // Starlife for M class in seconds
int Count_M = 4560;

int STAR_SIZE = 2;

int Random(int min, int max)
{
	return min + rand() % (max - min);
}

// ---------------------------------------------------------------------------
__fastcall TFormLife::TFormLife(TComponent* Owner) : TForm(Owner) {}


// ---------------------------------------------------------------------------
void __fastcall TFormLife::FormCreate(TObject* Sender)
{
	GLSkyDome1->Bands->Clear();
	time = 0;
	is_simulated = false;
}

// ---------------------------------------------------------------------------
void __fastcall TFormLife::btnStartClick(TObject* Sender)
{
	for (int i = 0; i < Count_O; i++) {
		Times_O[i] = Random(min_time_live_O, max_time_live_O);
		Stars_O[i] = new TGLPoints(dcParsec);
		Stars_O[i]->Colors->Add(0, 204, 255, 0.1);   // clBlue
		Stars_O[i]->Size = STAR_SIZE + 10;
		Stars_O[i]->Position->X = rand() % 1025 - 512;
		Stars_O[i]->Position->Y = rand() % 1025 - 512;
		Stars_O[i]->Position->Z = rand() % 1025 - 512;
		Stars_O[i]->Style =  psSmooth;
	}

	for (int i = 0; i < Count_B; i++) {
		Times_B[i] = Random(min_time_live_B, max_time_live_B);
		Stars_B[i] = new TGLPoints(dcParsec);
		Stars_B[i]->Colors->Add(204, 255, 255, 0.1);
		Stars_B[i]->Size = STAR_SIZE + 5;
		Stars_B[i]->Position->X = rand() % 1025 - 512;
		Stars_B[i]->Position->Y = rand() % 1025 - 512;
		Stars_B[i]->Position->Z = rand() % 1025 - 512;
	//	Stars_B[i]->Style =  psSmooth;

	}

	for (int i = 0; i < Count_A; i++) {
		Times_A[i] = Random(min_time_live_A, max_time_live_A);
		Stars_A[i] = new TGLPoints(dcParsec);
		Stars_A[i]->Colors->Add(255, 255, 255, 0.1); // clWhite
		Stars_A[i]->Size = STAR_SIZE + 2;
		Stars_A[i]->Position->X = rand() % 1025 - 512;
		Stars_A[i]->Position->Y = rand() % 1025 - 512;
		Stars_A[i]->Position->Z = rand() % 1025 - 512;
	//	Stars_A[i]->Style =  psSmooth;

	}

	for (int i = 0; i < Count_F; i++) {
		Times_F[i] = Random(min_time_live_F, max_time_live_F);
		Stars_F[i] = new TGLPoints(dcParsec);
		Stars_F[i]->Colors->Add(254, 255, 149, 0.1);
		Stars_F[i]->Size = STAR_SIZE + 1;
		Stars_F[i]->Position->X = rand() % 1025 - 512;
		Stars_F[i]->Position->Y = rand() % 1025 - 512;
		Stars_F[i]->Position->Z = rand() % 1025 - 512;
   //		Stars_F[i]->Style =  psSmooth;
	}

	for (int i = 0; i < Count_G; i++) {
		Times_G[i] = Random(min_time_live_G, max_time_live_G);
		Stars_G[i] = new TGLPoints(dcParsec);
		Stars_G[i]->Colors->Add(255, 255, 0, 0.1); // clYellow
		Stars_G[i]->Size = STAR_SIZE + 1;
		Stars_G[i]->Position->X = rand() % 1025 - 512;
		Stars_G[i]->Position->Y = rand() % 1025 - 512;
		Stars_G[i]->Position->Z = rand() % 1025 - 512;
	//	Stars_G[i]->Style =  psSmooth;
	}

	for (int i = 0; i < Count_K; i++) {
		Times_K[i] = Random(min_time_live_K, max_time_live_K);
		Stars_K[i] = new TGLPoints(dcParsec);
		Stars_K[i]->Colors->Add(255, 101, 1, 0.1);
		Stars_K[i]->Size = STAR_SIZE;
		Stars_K[i]->Position->X = rand() % 1025 - 512;
		Stars_K[i]->Position->Y = rand() % 1025 - 512;
		Stars_K[i]->Position->Z = rand() % 1025 - 512;
	//	Stars_K[i]->Style =  psSmooth;
	}

	for (int i = 0; i < Count_M; i++) {
		Times_M[i] = Random(min_time_live_M, max_time_live_M);
		Stars_M[i] = new TGLPoints(dcParsec);
		Stars_M[i]->Colors->Add(254, 0, 0, 0.1); // clRed
		Stars_M[i]->Size = STAR_SIZE;
		Stars_M[i]->Position->X = rand() % 1025 - 512;
		Stars_M[i]->Position->Y = rand() % 1025 - 512;
		Stars_M[i]->Position->Z = rand() % 1025 - 512;
	//	Stars_M[i]->Style =  psSmooth;
	}

	is_simulated = true;
	btnStart->Enabled = false;
}

TGLPoints* Add_Stars[10000];
int Times_add[10000];
int index = 0;

// ---------------------------------------------------------------------------
void __fastcall TFormLife::Timer1Timer(TObject* Sender)
{
	if (is_simulated) {
		time++;

		Label1->Caption = "Time: " + UnicodeString(time) + " m.y";

		int tick = Random(1, 4);

		for (int i = 0; i < Count_O; i++) {
			if (Times_O[i] < time) {
				Stars_O[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_B; i++) {
			if (Times_B[i] < time) {
				Stars_B[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_A; i++) {
			if (Times_A[i] < time) {
				Stars_A[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_F; i++) {
			if (Times_F[i] < time) {
				Stars_F[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_G; i++) {
			if (Times_G[i] < time) {
				Stars_G[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_K; i++) {
			if (Times_K[i] < time) {
				Stars_K[i]->Visible = false;
			}
		}

		for (int i = 0; i < Count_M; i++) {
			if (Times_M[i] < time) {
				Stars_M[i]->Visible = false;
			}
		}

		for (int i = 0; i < index; i++) {
			if (Times_add[i] < time) {
				Add_Stars[i]->Visible = false;
			}
		}

		if (index < 10000 && time % 10 == 0) {
			Add_Stars[index] = new TGLPoints(dcParsec);
			Times_add[index] = time + Random(min_time_live_O, max_time_live_O);
			Add_Stars[index]->Colors->Add(0, 204, 255, 0.1);
			Add_Stars[index]->Size = STAR_SIZE + 10;
			Add_Stars[index]->Position->X = rand() % 1025 - 512;
			Add_Stars[index]->Position->Y = rand() % 1025 - 512;
			Add_Stars[index]->Position->Z = rand() % 1025 - 512;
			index++;
		}

		for (int i = 0; i < 3 && (tick == 1 || tick == 2); i++) {
			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_B, max_time_live_B);
				Add_Stars[index]->Colors->Add(204, 255, 255, 0.1);
				Add_Stars[index]->Size = STAR_SIZE + 5;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}

			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_A, max_time_live_A);
				Add_Stars[index]->Colors->Add(255, 255, 255, 0.1);
				Add_Stars[index]->Size = STAR_SIZE + 2;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}

			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_F, max_time_live_F);
				Add_Stars[index]->Colors->Add(254, 255, 149, 0.1);
				Add_Stars[index]->Size = STAR_SIZE + 1;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}

			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_G, max_time_live_G);
				Add_Stars[index]->Colors->Add(255, 255, 0, 0.1);
				Add_Stars[index]->Size = STAR_SIZE + 1;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}

			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_K, max_time_live_K);
				Add_Stars[index]->Colors->Add(255, 101, 1, 0.1);
				Add_Stars[index]->Size = STAR_SIZE;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}

			if (index < 10000) {
				Add_Stars[index] = new TGLPoints(dcParsec);
				Times_add[index] =
					time + Random(min_time_live_M, max_time_live_M);
				Add_Stars[index]->Colors->Add(254, 0, 0, 0.1);
				Add_Stars[index]->Size = STAR_SIZE;
				Add_Stars[index]->Position->X = rand() % 1025 - 512;
				Add_Stars[index]->Position->Y = rand() % 1025 - 512;
				Add_Stars[index]->Position->Z = rand() % 1025 - 512;
				index++;
			}
		}
	}
}

// ---------------------------------------------------------------------------
void __fastcall TFormLife::chbSpeed10Click(TObject* Sender)
{
	if (chbSpeed10->Checked) {
        Timer1->Interval = 100;
    } else {
        Timer1->Interval = 1000;
    }
}

// ---------------------------------------------------------------------------
void __fastcall TFormLife::FormClose(TObject* Sender, TCloseAction &Action)
{
	Atmosphere->Free();
}

void __fastcall TFormLife::GLCadencer1Progress(
	TObject* Sender, const double deltaTime, const double newTime)
{
	GLSceneViewer1->Invalidate();
}


//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeOMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
		  int X, int Y)
{
  ColorDialog1->Color = ShapeO->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeO->Brush->Color = ColorDialog1->Color;

//	TGLLightSource(TShape(Sender)->Tag)->Diffuse->AsWinColor = ColorDialog1->Color;
//	Star_O->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}
//---------------------------------------------------------------------------


void __fastcall TFormLife::ShapeBMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeB->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeB->Brush->Color = ColorDialog1->Color;
//	Star_B->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}
//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeAMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeA->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeA->Brush->Color = ColorDialog1->Color;
//	Star_A->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}
//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeFMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeF->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeF->Brush->Color = ColorDialog1->Color;
//	Star_F->Diffuse->AsWinColor = ColorDialog1->Color;
  }

}
//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeGMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeG->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeG->Brush->Color = ColorDialog1->Color;
//	Star_G->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}
//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeKMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeK->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeK->Brush->Color = ColorDialog1->Color;
//	Star_K->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}
//---------------------------------------------------------------------------

void __fastcall TFormLife::ShapeMMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
  ColorDialog1->Color = ShapeM->Brush->Color;
  if (ColorDialog1->Execute())
  {
	ShapeM->Brush->Color = ColorDialog1->Color;
//	Star_M->Diffuse->AsWinColor = ColorDialog1->Color;
  }
}

//---------------------------------------------------------------------------

void __fastcall TFormLife::chbOClick(TObject *Sender)
{
 if (chbO->Checked)
  StarsO->Visible = false;
}

//---------------------------------------------------------------------------

void __fastcall TFormLife::chbMClick(TObject *Sender)
{
 if (chbM->Checked)
  StarsM->Visible = false;

}
//---------------------------------------------------------------------------


void __fastcall TFormLife::chbStopClick(TObject *Sender)
{
  is_simulated == chbStop->Checked;
}
//---------------------------------------------------------------------------

