//
(*  Sound Scene 4D based on GLScene https://github.com/glscene *)
//
unit fDialogD;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,

  GLS.Cadencer,

  fInitialD;

type
  TFormDialog = class(TFormInitial)
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonOK: TButton;
    ButtonCancel: TButton;
    ButtonHelp: TButton;
    procedure ButtonHelpClick(Sender: TObject);
  public
    function Execute: boolean; virtual;
    procedure ReadIniFile; override;
    procedure WriteIniFile; override;
  private

  end;

var
  FormDialog: TFormDialog;

implementation

{$R *.dfm}

procedure TFormDialog.ButtonHelpClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

function TFormDialog.Execute: boolean;
begin
  Result := ShowModal = mrOk;
end;

procedure TFormDialog.ReadIniFile;
begin
  inherited;
  //
end;

procedure TFormDialog.WriteIniFile;
begin
  //
  inherited;
end;

end.
