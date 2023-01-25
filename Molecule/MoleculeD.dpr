program MoleculeD;

uses
  Forms,
  fMoleculeD in 'fMoleculeD.pas' {FormMolecules};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMolecules, FormMolecules);
  Application.Run;
end.
