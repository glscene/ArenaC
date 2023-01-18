inherited FormDialog: TFormDialog
  BorderIcons = [biSystemMenu]
  Caption = 'Dialog'
  ClientHeight = 362
  ClientWidth = 484
  ExplicitWidth = 502
  ExplicitHeight = 409
  TextHeight = 16
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 35
    Align = alTop
    TabOrder = 0
  end
  object PanelMiddle: TPanel
    Left = 0
    Top = 35
    Width = 484
    Height = 286
    Align = alClient
    TabOrder = 1
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 321
    Width = 484
    Height = 41
    Align = alBottom
    TabOrder = 2
    object ButtonOK: TButton
      Left = 144
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object ButtonCancel: TButton
      Left = 256
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object ButtonHelp: TButton
      Left = 360
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Help'
      TabOrder = 2
      OnClick = ButtonHelpClick
    end
  end
end
