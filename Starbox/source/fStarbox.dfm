object FormBox: TFormBox
  Left = 264
  Top = 193
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Starbox'
  ClientHeight = 975
  ClientWidth = 1522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 168
  TextHeight = 24
  object Splitter1: TSplitter
    Left = 0
    Top = 969
    Width = 1522
    Height = 6
    Cursor = crVSplit
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    MinSize = 53
    ExplicitTop = 1013
    ExplicitWidth = 1685
  end
  object GLSceneViewer: TGLSceneViewer
    Left = 212
    Top = 0
    Width = 939
    Height = 969
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Camera = Camera
    Buffer.BackgroundColor = clBlack
    Buffer.ColorDepth = cd24bits
    FieldOfView = 167.842254638671900000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewerMouseDown
    TabOrder = 0
    ExplicitWidth = 917
  end
  object PanelRight: TPanel
    Left = 1151
    Top = 0
    Width = 371
    Height = 969
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 1324
    ExplicitTop = -4
    ExplicitHeight = 1013
    object ButtonStars: TButton
      Left = 38
      Top = 26
      Width = 172
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1074#1105#1079#1076
      TabOrder = 0
      OnClick = ButtonStarsClick
    end
    object gbStars: TGroupBox
      Left = 10
      Top = 253
      Width = 353
      Height = 474
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1050#1083#1072#1089#1089#1099' '#1079#1074#1105#1079#1076
      TabOrder = 1
      object shO: TShape
        Left = 84
        Top = 55
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clHotLight
        Pen.Width = 2
      end
      object shB: TShape
        Left = 84
        Top = 107
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clSkyBlue
        Pen.Width = 2
      end
      object shA: TShape
        Left = 84
        Top = 166
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clCream
        Pen.Width = 2
      end
      object shG: TShape
        Left = 84
        Top = 291
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clYellow
        Pen.Width = 2
      end
      object shK: TShape
        Left = 84
        Top = 349
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clOrange
        Pen.Width = 2
      end
      object shF: TShape
        Left = 84
        Top = 226
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clFuchsia
        Pen.Width = 2
      end
      object shM: TShape
        Left = 84
        Top = 406
        Width = 50
        Height = 42
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Brush.Color = clRed
        Pen.Width = 2
      end
      object Label1: TLabel
        Left = 188
        Top = 40
        Width = 15
        Height = 24
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = '%'
      end
      object Label2: TLabel
        Left = 280
        Top = 40
        Width = 53
        Height = 24
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = #1063#1080#1089#1083#1086
      end
      object chbO: TCheckBox
        Left = 14
        Top = 60
        Width = 60
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'O'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        OnClick = chbOClick
      end
      object chbB: TCheckBox
        Left = 14
        Top = 119
        Width = 60
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'B'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        OnClick = chbOClick
      end
      object chbA: TCheckBox
        Left = 14
        Top = 179
        Width = 60
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'A'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        OnClick = chbOClick
      end
      object chbF: TCheckBox
        Left = 14
        Top = 236
        Width = 60
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'F'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 3
        OnClick = chbOClick
      end
      object chbG: TCheckBox
        Left = 14
        Top = 296
        Width = 60
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'G'
        Checked = True
        Color = clYellow
        ParentColor = False
        State = cbChecked
        TabOrder = 4
        OnClick = chbOClick
      end
      object chbK: TCheckBox
        Left = 14
        Top = 355
        Width = 60
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'K'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 5
        OnClick = chbOClick
      end
      object chbM: TCheckBox
        Left = 14
        Top = 415
        Width = 60
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'M'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 6
        OnClick = chbOClick
      end
      object chbAll: TCheckBox
        Left = 154
        Top = 0
        Width = 116
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = #1042#1089#1077
        TabOrder = 7
        OnClick = chbAllClick
      end
      object nbO: TNumberBox
        Left = 154
        Top = 63
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 8
        Value = 0.100000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbB: TNumberBox
        Left = 154
        Top = 114
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 9
        Value = 0.400000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbA: TNumberBox
        Left = 154
        Top = 177
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 10
        Value = 0.500000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbF: TNumberBox
        Left = 154
        Top = 238
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 11
        Value = 3.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbG: TNumberBox
        Left = 154
        Top = 301
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 12
        Value = 8.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbK: TNumberBox
        Left = 154
        Top = 355
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 13
        Value = 12.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbM: TNumberBox
        Left = 154
        Top = 413
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 1
        Mode = nbmFloat
        MaxValue = 100.000000000000000000
        TabOrder = 14
        Value = 76.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbAn: TNumberBox
        Left = 268
        Top = 177
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 15
        Value = 5.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbMn: TNumberBox
        Left = 268
        Top = 413
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 16
        Value = 760.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbKn: TNumberBox
        Left = 268
        Top = 355
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 17
        Value = 120.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbGn: TNumberBox
        Left = 268
        Top = 301
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 18
        Value = 80.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbFn: TNumberBox
        Left = 268
        Top = 238
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 19
        Value = 30.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbBn: TNumberBox
        Left = 268
        Top = 118
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 20
        Value = 4.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
      object nbOn: TNumberBox
        Left = 268
        Top = 63
        Width = 80
        Height = 32
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taCenter
        Decimal = 0
        MaxValue = 10000.000000000000000000
        TabOrder = 21
        Value = 1.000000000000000000
        SpinButtonOptions.ButtonWidth = 30
      end
    end
    object SpinEdit: TSpinEdit
      Left = 238
      Top = 32
      Width = 99
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      MaxValue = 100000
      MinValue = 1000
      TabOrder = 2
      Value = 1000
      OnChange = SpinEditChange
    end
    object chbSmoothStars: TCheckBox
      Left = 56
      Top = 143
      Width = 197
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1050#1088#1091#1075#1083#1099#1077' '#1079#1074#1105#1079#1076#1099
      TabOrder = 3
    end
    object chbOnClasses: TCheckBox
      Left = 56
      Top = 196
      Width = 225
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1055#1086' '#1082#1083#1072#1089#1089#1072#1084
      TabOrder = 4
    end
    object ButtonClear: TButton
      Left = 112
      Top = 89
      Width = 131
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 5
      OnClick = ButtonClearClick
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 212
    Height = 969
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 1013
    object TreeView: TTreeView
      Left = 1
      Top = 1
      Width = 210
      Height = 967
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Images = VirtualImageList
      Indent = 33
      TabOrder = 0
      Items.NodeData = {
        070100000009540054007200650065004E006F00640065003100000000000000
        00000000FFFFFFFFFFFFFFFF0000000000000000000300000001091A043E043D
        044204350439043D0435044004000025000000000000000000000000000000FF
        FFFFFF0000000000000000000000000001031A04430431040000290000000100
        00000100000001000000FFFFFFFF000000000000000000000000000105210444
        0435044004300400002D000000020000000200000002000000FFFFFFFF000000
        000000000000000000000107260438043B0438043D0434044004}
      ExplicitHeight = 1011
    end
  end
  object GLScene: TGLScene
    Left = 408
    Top = 32
    object LightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000404000004040000000000000803F}
      SpotCutOff = 180.000000000000000000
    end
    object Camera: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = dcStarbox
      CameraStyle = csInfinitePerspective
      Position.Coordinates = {0000004000000000000000000000803F}
    end
    object dcStarbox: TGLDummyCube
      Direction.Coordinates = {000000000000803F0000000000000000}
      RollAngle = 30.000000000000000000
      Up.Coordinates = {000000BF00000000D7B35DBF00000000}
      CubeSize = 1.000000000000000000
      VisibleAtRunTime = True
    end
  end
  object GLSimpleNavigation: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer
    FormCaption = 'Starbox C - %FPS'
    KeyCombinations = <
      item
        ShiftState = [ssLeft, ssRight]
        Action = snaZoom
      end
      item
        ShiftState = [ssLeft]
        Action = snaMoveAroundTarget
      end
      item
        ShiftState = [ssRight]
        Action = snaMoveAroundTarget
      end>
    Left = 580
    Top = 30
  end
  object GLCadencer: TGLCadencer
    Left = 410
    Top = 176
  end
  object MatLibColors: TGLMaterialLibrary
    Materials = <
      item
        Name = 'ClassO'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Diffuse.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Emission.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Specular.Color = {00000000000000000000803F0000803F}
      end
      item
        Name = 'ClassB'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Diffuse.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Emission.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Specular.Color = {AE47613ED7A3303F52B85E3F0000803F}
      end
      item
        Name = 'ClassA'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Diffuse.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Emission.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Specular.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
      end
      item
        Name = 'ClassF'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Diffuse.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Emission.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Specular.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
      end
      item
        Name = 'ClassG'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Emission.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Specular.Color = {0000803F0000803F000000000000803F}
      end
      item
        Name = 'ClassK'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {0000803F0000003F000000000000803F}
      end
      item
        Name = 'ClassM'
        Tag = 0
      end>
    Left = 761
    Top = 35
  end
  object MainMenu: TMainMenu
    Left = 784
    Top = 178
    object miFile: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      object miNew: TMenuItem
        Caption = '&'#1053#1086#1074#1099#1081
      end
      object miOpen: TMenuItem
        Caption = '&'#1054#1090#1082#1088#1099#1090#1100'...'
      end
      object miSave: TMenuItem
        Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object miSaveAs: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' &'#1082#1072#1082'...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = '&'#1042#1099#1093#1086#1076
      end
    end
    object miView: TMenuItem
      Caption = '&'#1042#1080#1076
      object miProjections: TMenuItem
        Caption = '&'#1055#1088#1086#1077#1082#1094#1080#1080'...'
        OnClick = miProjectionsClick
      end
      object miStarLife: TMenuItem
        Caption = '&'#1042#1088#1077#1084#1103' '#1078#1080#1079#1085#1080'...'
        OnClick = miStarLifeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Hide1: TMenuItem
        Caption = '&'#1062#1074#1077#1090#1086#1074#1072#1103' '#1096#1082#1072#1083#1072'...'
      end
    end
    object miTools: TMenuItem
      Caption = '&'#1054#1087#1094#1080#1080
      object miSettings: TMenuItem
        Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miHide: TMenuItem
        Caption = '&'#1057#1082#1088#1099#1090#1100' '#1087#1072#1085#1077#1083#1080
      end
      object miShow: TMenuItem
        Caption = '&'#1055#1086#1082#1072#1079#1072#1090#1100'...'
      end
    end
    object miHelp: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object miContent: TMenuItem
        Caption = #1042#1080#1082#1080'...'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miAbout: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
        OnClick = miAboutClick
      end
    end
  end
  object VirtualImageList: TVirtualImageList
    Images = <>
    ImageCollection = ImageCollection
    Left = 408
    Top = 506
  end
  object ImageCollection: TImageCollection
    Images = <>
    Left = 406
    Top = 378
  end
end
