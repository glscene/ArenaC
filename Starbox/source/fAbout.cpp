//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fAbout.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormAbout *FormAbout;
//---------------------------------------------------------------------------
__fastcall TFormAbout::TFormAbout(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormAbout::ButtonCloseClick(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
