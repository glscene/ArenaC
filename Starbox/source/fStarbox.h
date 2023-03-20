// ---------------------------------------------------------------------------
#ifndef fStarboxH
#define fStarboxH
// ---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Samples.Spin.hpp>
#include <Vcl.Menus.hpp>

#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.Objects.hpp"
#include "GLS.VectorTypes.hpp"
#include "GLS.BaseClasses.hpp"
#include "GLS.Coordinates.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.Material.hpp"
#include "GLS.Color.hpp"
#include "GLS.SimpleNavigation.hpp"

#include "fProjections.h"
#include "fStarLife.h"
#include "fAbout.h"

// ---------------------------------------------------------------------------
class TFormBox : public TForm {
__published: // IDE-managed Components
	TGLScene *GLScene;
	TGLSceneViewer *GLSceneViewer1;
	TGLLightSource *LightSource;
	TGLCamera *Camera;
	TGLDummyCube *dcStarbox;
	TPanel *PanelRight;
	TSplitter *Splitter1;
	TButton *ButtonStars;
	TGLSimpleNavigation *GLSimpleNavigation;
	TGLCadencer *GLCadencer;
	TGLMaterialLibrary *MatLibColors;
	TGroupBox *gbStars;
	TPanel *Panel2;
	TPanel *Panel3;
	TPanel *Panel4;
	TPanel *Panel5;
	TCheckBox *chbO;
	TCheckBox *chbB;
	TCheckBox *chbA;
	TCheckBox *chbF;
	TCheckBox *chbG;
	TCheckBox *chbK;
	TCheckBox *chbM;
	TSpinEdit *SpinEdit;
	TPanel *Panel6;
	TPanel *Panel7;
	TPanel *Panel8;
	TRadioGroup *rgStyle;
	TCheckBox *chbAll;
	TShape *shO;
	TShape *shB;
	TShape *shA;
	TShape *shG;
	TShape *shK;
	TShape *shF;
	TShape *shM;
	TMainMenu *MainMenu;
	TMenuItem *miView;
	TMenuItem *miStarLife;
	TMenuItem *miProjections;
	TMenuItem *Hide1;
	TMenuItem *N1;
	TMenuItem *miFile;
	TMenuItem *miNew;
	TMenuItem *miOpen;
	TMenuItem *miSave;
	TMenuItem *miSaveAs;
	TMenuItem *miExit;
	TMenuItem *N2;
	TMenuItem *miHelp;
	TMenuItem *miAbout;
	TPanel *PanelLeft;
	TTreeView *TreeView;
	TMenuItem *miContent;
	TMenuItem *N3;
	TMenuItem *miTools;
	TMenuItem *miSettings;
	TMenuItem *miHide;
	TMenuItem *miShow;
	TMenuItem *N4;

	void __fastcall FormMouseWheel(TObject *Sender, TShiftState Shift,
		int WheelDelta, TPoint &MousePos, bool &Handled);
	void __fastcall ButtonStarsClick(TObject *Sender);
	void __fastcall GLSceneViewer1MouseDown(TObject *Sender,
		TMouseButton Button, TShiftState Shift, int X, int Y);
	void __fastcall GLSceneViewer1MouseMove(TObject *Sender, TShiftState Shift,
		int X, int Y);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall chbAllClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall chbOClick(TObject *Sender);
	void __fastcall miStarLifeClick(TObject *Sender);
	void __fastcall miProjectionsClick(TObject *Sender);
	void __fastcall miAboutClick(TObject *Sender);
private: // User declarations
	TGLPoints *Stars[1000];
	void MakeStars(TObject *Sender);

	int mx, my;

public: // User declarations
	__fastcall TFormBox(TComponent* Owner);
};

// ---------------------------------------------------------------------------
extern PACKAGE TFormBox *FormBox;
// ---------------------------------------------------------------------------
#endif
