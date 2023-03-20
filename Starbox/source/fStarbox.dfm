object FormBox: TFormBox
  Left = 264
  Top = 193
  Caption = 'Starbox'
  ClientHeight = 582
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 579
    Width = 963
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 339
    ExplicitWidth = 502
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 121
    Top = 0
    Width = 630
    Height = 579
    Camera = Camera
    Buffer.BackgroundColor = clGray
    Buffer.ColorDepth = cd24bits
    FieldOfView = 160.402053833007800000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 751
    Top = 0
    Width = 212
    Height = 579
    Align = alRight
    TabOrder = 1
    object ButtonStars: TButton
      Left = 23
      Top = 15
      Width = 91
      Height = 25
      Caption = 'Add Stars'
      TabOrder = 0
      OnClick = ButtonStarsClick
    end
    object gbStars: TGroupBox
      Left = 6
      Top = 194
      Width = 202
      Height = 271
      Caption = 'Stars'
      TabOrder = 1
      object shO: TShape
        Left = 134
        Top = 28
        Width = 40
        Height = 24
      end
      object shB: TShape
        Left = 134
        Top = 61
        Width = 40
        Height = 24
      end
      object shA: TShape
        Left = 134
        Top = 95
        Width = 40
        Height = 24
      end
      object shG: TShape
        Left = 134
        Top = 162
        Width = 40
        Height = 24
      end
      object shK: TShape
        Left = 134
        Top = 196
        Width = 40
        Height = 24
      end
      object shF: TShape
        Left = 134
        Top = 129
        Width = 40
        Height = 24
      end
      object shM: TShape
        Left = 134
        Top = 230
        Width = 40
        Height = 24
      end
      object Panel2: TPanel
        Left = 70
        Top = 29
        Width = 40
        Height = 24
        Color = clHotLight
        ParentBackground = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 70
        Top = 62
        Width = 40
        Height = 24
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 70
        Top = 96
        Width = 40
        Height = 24
        Color = clCream
        ParentBackground = False
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 70
        Top = 130
        Width = 40
        Height = 24
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 3
      end
      object chbO: TCheckBox
        Left = 16
        Top = 34
        Width = 34
        Height = 17
        Caption = 'O'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
        OnClick = chbOClick
      end
      object chbB: TCheckBox
        Left = 16
        Top = 68
        Width = 34
        Height = 17
        Caption = 'B'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 5
        OnClick = chbOClick
      end
      object chbA: TCheckBox
        Left = 16
        Top = 102
        Width = 34
        Height = 17
        Caption = 'A'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 6
        OnClick = chbOClick
      end
      object chbF: TCheckBox
        Left = 16
        Top = 135
        Width = 34
        Height = 17
        Caption = 'F'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 7
        OnClick = chbOClick
      end
      object chbG: TCheckBox
        Left = 16
        Top = 169
        Width = 34
        Height = 17
        Caption = 'G'
        Checked = True
        Color = clYellow
        ParentColor = False
        State = cbChecked
        TabOrder = 8
        OnClick = chbOClick
      end
      object chbK: TCheckBox
        Left = 16
        Top = 203
        Width = 34
        Height = 17
        Caption = 'K'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 9
        OnClick = chbOClick
      end
      object chbM: TCheckBox
        Left = 16
        Top = 237
        Width = 34
        Height = 17
        Caption = 'M'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 10
        OnClick = chbOClick
      end
      object Panel6: TPanel
        Left = 70
        Top = 163
        Width = 40
        Height = 24
        Color = clYellow
        ParentBackground = False
        TabOrder = 11
      end
      object Panel7: TPanel
        Left = 70
        Top = 197
        Width = 40
        Height = 24
        Color = clFuchsia
        ParentBackground = False
        TabOrder = 12
      end
      object Panel8: TPanel
        Left = 70
        Top = 231
        Width = 40
        Height = 24
        Color = clMaroon
        ParentBackground = False
        TabOrder = 13
      end
      object chbAll: TCheckBox
        Left = 72
        Top = 0
        Width = 41
        Height = 17
        Caption = 'All'
        TabOrder = 14
        OnClick = chbAllClick
      end
    end
    object SpinEdit: TSpinEdit
      Left = 136
      Top = 17
      Width = 63
      Height = 22
      MaxValue = 100000
      MinValue = 1000
      TabOrder = 2
      Value = 1000
    end
    object rgStyle: TRadioGroup
      Left = 6
      Top = 58
      Width = 195
      Height = 90
      Caption = 'Star Show'
      ItemIndex = 0
      Items.Strings = (
        'Square'
        'Smooth')
      TabOrder = 3
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 121
    Height = 579
    Align = alLeft
    TabOrder = 2
    object TreeView: TTreeView
      Left = 1
      Top = 1
      Width = 119
      Height = 577
      Align = alClient
      Indent = 19
      TabOrder = 0
      Items.NodeData = {
        0301000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        000300000001054D006F00640065006C002A0000000000000000000000FFFFFF
        FFFFFFFFFF000000000000000000000000010653007000680065007200650026
        0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
        044300750062006500260000000000000000000000FFFFFFFFFFFFFFFF000000
        00000000000000000001044400690073006300}
    end
  end
  object GLScene: TGLScene
    Left = 128
    Top = 18
    object LightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000004000000000000000000000803F}
      SpotCutOff = 180.000000000000000000
    end
    object dcStarbox: TGLDummyCube
      Direction.Coordinates = {000000000000803F0000000000000000}
      RollAngle = 30.000000000000000000
      ShowAxes = True
      Up.Coordinates = {000000BF00000000D7B35DBF00000000}
      CubeSize = 1.000000000000000000
      VisibleAtRunTime = True
    end
    object Camera: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = dcStarbox
      Position.Coordinates = {0000004000000000000000000000803F}
    end
  end
  object GLSimpleNavigation: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
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
    Left = 174
    Top = 58
  end
  object GLCadencer: TGLCadencer
    Left = 32
    Top = 64
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
    Left = 243
    Top = 21
  end
  object MainMenu: TMainMenu
    Left = 392
    Top = 24
    object miFile: TMenuItem
      Caption = '&File'
      object miNew: TMenuItem
        Caption = '&New'
      end
      object miOpen: TMenuItem
        Caption = '&Open...'
      end
      object miSave: TMenuItem
        Caption = '&Save'
      end
      object miSaveAs: TMenuItem
        Caption = 'Save &As...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'E&xit'
      end
    end
    object miView: TMenuItem
      Caption = '&View'
      object miProjections: TMenuItem
        Caption = '&Projections...'
        OnClick = miProjectionsClick
      end
      object miStarLife: TMenuItem
        Caption = '&Star Life...'
        OnClick = miStarLifeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Hide1: TMenuItem
        Caption = '&Color Scales...'
      end
    end
    object miTools: TMenuItem
      Caption = '&Tools'
      object miSettings: TMenuItem
        Caption = '&Settings...'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miHide: TMenuItem
        Caption = '&Hide'
      end
      object miShow: TMenuItem
        Caption = '&Show...'
      end
    end
    object miHelp: TMenuItem
      Caption = '&Help'
      object miContent: TMenuItem
        Caption = 'Content...'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miAbout: TMenuItem
        Caption = '&About...'
        OnClick = miAboutClick
      end
    end
  end
end
