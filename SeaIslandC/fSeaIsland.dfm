object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'GLScene Archipelago'
  ClientHeight = 421
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object GLSceneViewer: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 560
    Height = 421
    Camera = GLCamera
    BeforeRender = GLSceneViewerBeforeRender
    Buffer.FogEnvironment.FogColor.Color = {0000803F0000803F0000803F0000803F}
    Buffer.FogEnvironment.FogStart = 500.000000000000000000
    Buffer.FogEnvironment.FogEnd = 1000.000000000000000000
    Buffer.FogEnvironment.FogDistance = fdEyeRadial
    Buffer.BackgroundColor = clGray
    Buffer.ContextOptions = [roDoubleBuffer, roStencilBuffer, roRenderToWindow]
    Buffer.FogEnable = True
    FieldOfView = 140.778594970703100000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object PAProgress: TPanel
    Left = 200
    Top = 168
    Width = 185
    Height = 49
    BorderWidth = 6
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 7
      Top = 7
      Width = 171
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Loading && compressing textures'
      ExplicitLeft = 6
      ExplicitTop = 6
      ExplicitWidth = 173
    end
    object ProgressBar: TProgressBar
      Left = 7
      Top = 27
      Width = 171
      Height = 15
      Align = alClient
      Max = 16
      TabOrder = 0
    end
  end
  object GLScene1: TGLScene
    ObjectsSorting = osNone
    Left = 40
    Top = 32
    object GLWolf: TGLActor
      Material.FrontProperties.Emission.Color = {0000803F0000803F0000803F0000803F}
      Material.Texture.MinFilter = miLinear
      Material.Texture.Disabled = False
      Direction.Coordinates = {2EBD3B330000803F831DA32700000000}
      PitchAngle = 90.000000000000000000
      Position.Coordinates = {000070C300000CC200002A430000803F}
      Scale.Coordinates = {00002041000020410000204100000000}
      TurnAngle = -90.000000000000000000
      Up.Coordinates = {0000803F2FBD3BB3F404B53300000000}
      AnimationMode = aamLoop
      Interval = 100
    end
    object SkyDome: TGLSkyDome
      Direction.Coordinates = {000000000000803F0000000000000000}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Bands = <
        item
          StartColor.Color = {0000803F0000803F0000803F0000803F}
          StopAngle = 25.000000000000000000
          Slices = 9
        end
        item
          StartAngle = 25.000000000000000000
          StopAngle = 90.000000000000000000
          StopColor.Color = {938C0C3E938C0C3E938E0E3F0000803F}
          Slices = 9
          Stacks = 4
        end>
      Stars = <>
      Options = [sdoTwinkle]
    end
    object TerrainRenderer: TGLTerrainRenderer
      Direction.Coordinates = {000000000000803F0000000000000000}
      Scale.Coordinates = {00002040000020400000003F00000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      HeightDataSource = GLCustomHDS1
      TileSize = 32
      TilesPerTexture = 1.000000000000000000
      MaterialLibrary = MaterialLibrary
      CLODPrecision = 5
      OnHeightDataPostRender = TerrainRendererHeightDataPostRender
      ContourWidth = 0
    end
    object DOWake: TGLDirectOpenGL
      OnProgress = DOWakeProgress
      UseBuildList = False
      OnRender = DOWakeRender
      Blend = False
    end
    object LSSun: TGLLightSource
      Ambient.Color = {9A99993E9A99993E9A99993E0000803F}
      ConstAttenuation = 1.000000000000000000
      Diffuse.Color = {CDCC4C3FCDCC4C3FCDCC4C3F0000803F}
      LightStyle = lsParallel
      Specular.Color = {00000000000000000000000000000000}
      SpotCutOff = 180.000000000000000000
      SpotDirection.Coordinates = {0000803F0000803F0000003F00000000}
    end
    object HTHelp: TGLHUDText
      Up.Coordinates = {4CB7F8BE05C45F3F0000000000000000}
      BitmapFont = BFLarge
      Rotation = 0.000000000000000000
    end
    object GLDummyCube1: TGLDummyCube
      Position.Coordinates = {000096C3000050410000C8C20000803F}
      CubeSize = 1.000000000000000000
      object FFSailBoat: TGLFreeForm
        Scale.Coordinates = {8FC2753C8FC2753C8FC2753C00000000}
        Up.Coordinates = {FFFF7FBF000000000000000000000000}
        MaterialLibrary = MLSailBoat
      end
    end
    object DCCamera: TGLDummyCube
      Direction.Coordinates = {0000000000000000000080BF00000000}
      Position.Coordinates = {000070C300000000000016C30000803F}
      CubeSize = 1.000000000000000000
      object GLCamera: TGLCamera
        DepthOfView = 1000.000000000000000000
        FocalLength = 75.000000000000000000
        TargetObject = DCCamera
        Position.Coordinates = {000000000000803F000040400000803F}
        Left = 264
        Top = 160
      end
    end
    object GLHouse: TGLFreeForm
      Material.Texture.Disabled = False
      Direction.Coordinates = {0000803F000000002EBD3BB300000000}
      Position.Coordinates = {000087C3000088C1000087430000803F}
      TurnAngle = 90.000000000000000000
    end
    object GLDummyTrees: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLTree: TGLFreeForm
        Material.Texture.Disabled = False
        Direction.Coordinates = {2EBDBBB300000000000080BF00000000}
        Position.Coordinates = {000066C3000088C1000070430000803F}
        Scale.Coordinates = {0000A0410000A0410000A04100000000}
        TurnAngle = 180.000000000000000000
      end
    end
    object GLShark1: TGLActor
      Material.FrontProperties.Emission.Color = {0000803F0000803F0000803F0000803F}
      Material.Texture.MinFilter = miLinear
      Material.Texture.Disabled = False
      Direction.Coordinates = {0000803FFAFFFFA7400757B100000000}
      Position.Coordinates = {000048C3000030C20000C8420000803F}
      Scale.Coordinates = {00002041000020410000204100000000}
      TurnAngle = 90.000000000000000000
      Up.Coordinates = {FEFF7F270000803F4112C1A600000000}
      AnimationMode = aamLoop
      Interval = 100
    end
    object GLShark2: TGLActor
      Material.FrontProperties.Emission.Color = {0000803F0000803F0000803F0000803F}
      Material.Texture.MinFilter = miLinear
      Material.Texture.Disabled = False
      Direction.Coordinates = {000080BF2CA2001DF404B5B300000000}
      Position.Coordinates = {0000FAC3000030C2000082420000803F}
      Scale.Coordinates = {00002041000020410000204100000000}
      TurnAngle = -90.000000000000000000
      Up.Coordinates = {FDFF7F270000803F4212C1A600000000}
      AnimationMode = aamLoop
      Interval = 100
    end
  end
  object Timer1: TTimer
    Left = 376
    Top = 96
  end
  object GLCadencer: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencerProgress
    Left = 112
    Top = 32
  end
  object MaterialLibrary: TGLMaterialLibrary
    Materials = <
      item
        Name = 'detail'
        Tag = 0
        Material.Texture.ImageClassName = 'TGLPicFileImage'
        Material.Texture.Image.PictureFileName = 'detail.jpg'
        Material.Texture.TextureMode = tmModulate
        Material.Texture.TextureFormat = tfLuminance
        Material.Texture.Compression = tcStandard
        Material.Texture.Disabled = False
        TextureScale.Coordinates = {00008042000080420000804200000000}
        Texture2Name = 'detail'
      end
      item
        Name = 'water'
        Tag = 0
        Material.BlendingMode = bmTransparency
        Material.Texture.ImageClassName = 'TGLPicFileImage'
        Material.Texture.Image.PictureFileName = '035eau.jpg'
        Material.Texture.TextureMode = tmModulate
        Material.Texture.MappingSCoordinates.Coordinates = {CDCC4C3D000000000000000000000000}
        Material.Texture.MappingTCoordinates.Coordinates = {00000000CDCC4C3D0000000000000000}
        Material.Texture.Disabled = False
        Texture2Name = 'water'
      end
      item
        Name = 'wake'
        Tag = 0
        Material.Texture.ImageClassName = 'TGLPicFileImage'
        Material.Texture.Image.PictureFileName = 'wake.bmp'
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Texture2Name = 'wake'
      end>
    Left = 40
    Top = 96
  end
  object GLHeightTileFileHDS1: TGLHeightTileFileHDS
    HTFFileName = 'Data\\Islands.htf'
    InfiniteWrap = False
    MaxPoolSize = 0
    Left = 200
    Top = 32
  end
  object BFSmall: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 296
    Top = 96
  end
  object GLCustomHDS1: TGLCustomHDS
    MaxPoolSize = 0
    OnStartPreparingData = GLCustomHDS1StartPreparingData
    OnMarkDirtyEvent = GLCustomHDS1MarkDirtyEvent
    Left = 200
    Top = 96
  end
  object MLSailBoat: TGLMaterialLibrary
    TexturePaths = '..\\Data'
    Left = 112
    Top = 96
  end
  object BFLarge: TGLWindowsBitmapFont
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    Left = 296
    Top = 32
  end
end
