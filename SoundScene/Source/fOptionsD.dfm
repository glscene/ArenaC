inherited FormOptions: TFormOptions
  Caption = 'Options'
  ClientHeight = 476
  ClientWidth = 821
  OnDestroy = FormDestroy
  ExplicitWidth = 839
  ExplicitHeight = 523
  TextHeight = 16
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 121
    Height = 476
    Align = alLeft
    Indent = 19
    TabOrder = 0
    OnChange = TreeView1Change
    Items.NodeData = {
      0305000000260000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001045400610062003100260000000000000000000000FFFFFFFFFF
      FFFFFF0000000000000000000000000104540061006200320026000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001045400610062
      003300260000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      00000001045400610062003400260000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001045400610062003500}
  end
  object PageControl1: TPageControl
    Left = 121
    Top = 0
    Width = 700
    Height = 476
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 346
        Top = 50
        Width = 41
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Label1'
      end
      object Label2: TLabel
        Left = 346
        Top = 102
        Width = 41
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Label2'
      end
      object Label3: TLabel
        Left = 346
        Top = 156
        Width = 41
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Label3'
      end
      object Button1: TButton
        Left = 14
        Top = 232
        Width = 94
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
      object ListBox1: TListBox
        Left = 4
        Top = 11
        Width = 289
        Height = 189
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 1
      end
      object Button2: TButton
        Left = 132
        Top = 232
        Width = 94
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Button2'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 450
        Top = 46
        Width = 151
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 3
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 450
        Top = 90
        Width = 151
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 4
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 450
        Top = 144
        Width = 151
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 5
        Text = 'Edit3'
      end
      object Button3: TButton
        Left = 328
        Top = 232
        Width = 94
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'TabSheet'
        TabOrder = 6
        OnClick = Button3Click
      end
      object Edit4: TEdit
        Left = 450
        Top = 235
        Width = 151
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 7
        Text = 'Edit4'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
    end
  end
end
