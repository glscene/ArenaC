object FormAbout: TFormAbout
  Left = 0
  Top = 0
  Caption = 'About'
  ClientHeight = 283
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Memo1: TMemo
    Left = 120
    Top = 56
    Width = 241
    Height = 89
    Alignment = taCenter
    Lines.Strings = (
      'Developers and Contributors')
    TabOrder = 0
  end
  object ButtonClose: TButton
    Left = 200
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = ButtonCloseClick
  end
end
