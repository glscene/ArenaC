object FormLife: TFormLife
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = #1069#1082#1086#1083#1102#1094#1080#1103' '#1089#1082#1086#1087#1083#1077#1085#1080#1103' '#1079#1074#1105#1079#1076
  ClientHeight = 1155
  ClientWidth = 1675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 168
  TextHeight = 23
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 1321
    Height = 1155
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Camera = GLCamera1
    Buffer.BackgroundColor = clBlack
    FieldOfView = 160.352142333984400000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 1321
    Top = 0
    Width = 354
    Height = 1155
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alRight
    TabOrder = 1
    object Label1: TLabel
      Left = 33
      Top = 133
      Width = 125
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1042#1088#1077#1084#1103': m.y.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ShapeO: TShape
      Left = 261
      Top = 277
      Width = 72
      Height = 43
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clBlue
      Pen.Width = 2
      OnMouseDown = ShapeOMouseDown
    end
    object ShapeB: TShape
      Left = 261
      Top = 324
      Width = 72
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clSkyBlue
      Pen.Width = 2
      OnMouseDown = ShapeBMouseDown
    end
    object ShapeA: TShape
      Left = 261
      Top = 371
      Width = 72
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Pen.Width = 2
      OnMouseDown = ShapeAMouseDown
    end
    object ShapeF: TShape
      Left = 261
      Top = 418
      Width = 72
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clMoneyGreen
      Pen.Width = 2
      OnMouseDown = ShapeFMouseDown
    end
    object ShapeG: TShape
      Left = 261
      Top = 466
      Width = 72
      Height = 43
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clYellow
      Pen.Width = 2
      OnMouseDown = ShapeGMouseDown
    end
    object ShapeK: TShape
      Left = 261
      Top = 513
      Width = 72
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clFuchsia
      Pen.Width = 2
      OnMouseDown = ShapeKMouseDown
    end
    object ShapeM: TShape
      Left = 261
      Top = 560
      Width = 72
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Brush.Color = clRed
      Pen.Width = 2
      OnMouseDown = ShapeMMouseDown
    end
    object Label2: TLabel
      Left = 11
      Top = 231
      Width = 61
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1050#1083#1072#1089#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 123
      Top = 231
      Width = 22
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnStart: TButton
      Left = 89
      Top = 32
      Width = 181
      Height = 57
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1057#1090#1072#1088#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnStartClick
    end
    object chbSpeed10: TCheckBox
      Left = 252
      Top = 135
      Width = 100
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'x 10 '
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = chbSpeed10Click
    end
    object stColor: TStaticText
      Left = 266
      Top = 231
      Width = 55
      Height = 32
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = #1062#1074#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object chbO: TCheckBox
      Left = 28
      Top = 287
      Width = 184
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'O       0.1'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = chbOClick
    end
    object chbB: TCheckBox
      Left = 28
      Top = 334
      Width = 169
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'B       0.4'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object chbA: TCheckBox
      Left = 28
      Top = 382
      Width = 184
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'A       0.5'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object chbF: TCheckBox
      Left = 28
      Top = 429
      Width = 184
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'F       3'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object chbK: TCheckBox
      Left = 28
      Top = 529
      Width = 184
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'K       12'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object chbG: TCheckBox
      Left = 28
      Top = 478
      Width = 184
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'G       8'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object chbM: TCheckBox
      Left = 28
      Top = 576
      Width = 184
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'M       76'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
      OnClick = chbMClick
    end
  end
  object GLScene1: TGLScene
    Left = 792
    Top = 44
    object GLSkyDome1: TGLSkyDome
      Bands = <
        item
          StartColor.Color = {0000803F0000803F0000803F0000803F}
          StopAngle = 15.000000000000000000
        end
        item
          StartAngle = 15.000000000000000000
          StopAngle = 90.000000000000000000
          StopColor.Color = {938C0C3E938C0C3E938E0E3F0000803F}
          Stacks = 4
        end>
      Stars = <
        item
          Color = clWhite
        end>
    end
    object GLCamera1: TGLCamera
      DepthOfView = 10000000000.000000000000000000
      FocalLength = 100.000000000000000000
      TargetObject = dcStarbox
      Position.Coordinates = {0080BB4400007A440080BB440000803F}
      object GLLightSource1: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        SpotCutOff = 180.000000000000000000
      end
    end
    object dcStarbox: TGLDummyCube
      CubeSize = 1000.000000000000000000
      VisibleAtRunTime = True
      object StarsO: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmoothAdditive
      end
      object StarsB: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
      object StarsA: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
      object StarsF: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
      object StarsG: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
      object StarsK: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
      object StarsM: TGLPoints
        Visible = False
        NoZWrite = False
        Static = False
        Style = psSmooth
      end
    end
    object GLLensFlare1: TGLLensFlare
      Seed = 1465
      NumStreaks = 10
      NumSecs = 10
      Resolution = 10
      FlareIsNotOccluded = False
      Position.Coordinates = {000080C4000080C4000000000000803F}
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 334
    Top = 20
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = #1069#1082#1086#1083#1102#1094#1080#1103' '#1089#1082#1086#1087#1083#1077#1085#1080#1103' '#1079#1074#1105#1079#1076' - %FPS'
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
    Left = 476
    Top = 20
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 597
    Top = 236
  end
  object ColorDialog1: TColorDialog
    Left = 218
    Top = 113
  end
end
