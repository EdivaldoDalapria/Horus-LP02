object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 511
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 511
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    object grp2: TGroupBox
      Left = 1
      Top = 71
      Width = 777
      Height = 325
      Caption = 'Controle de Navega'#231#227'o e Edi'#231#227'o'
      TabOrder = 0
      object dbnvgr1: TDBNavigator
        Left = 264
        Top = 8
        Width = 510
        Height = 33
        TabOrder = 0
      end
      object dbgrd1: TDBGrid
        Left = 3
        Top = 41
        Width = 771
        Height = 281
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object btn1: TButton
      Left = 17
      Top = 402
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 1
    end
    object btn2: TButton
      Left = 17
      Top = 433
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 2
    end
    object btn3: TButton
      Left = 17
      Top = 464
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 3
    end
    object grp3: TGroupBox
      Left = 113
      Top = 399
      Width = 136
      Height = 94
      Caption = 'grp3'
      TabOrder = 4
    end
    object grp4: TGroupBox
      Left = 265
      Top = 399
      Width = 136
      Height = 94
      Caption = 'grp3'
      TabOrder = 5
    end
    object grp5: TGroupBox
      Left = 415
      Top = 399
      Width = 136
      Height = 94
      Caption = 'grp3'
      TabOrder = 6
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 511
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 1
    object lbl6: TLabel
      Left = 608
      Top = 407
      Width = 145
      Height = 13
      Caption = 'Total dos Produtos Agregados'
    end
    object grp6: TGroupBox
      Left = 1
      Top = 1
      Width = 777
      Height = 48
      Align = alTop
      Caption = 'Filtro'
      TabOrder = 0
      object lbl2: TLabel
        Left = 16
        Top = 17
        Width = 66
        Height = 13
        Caption = 'Valor do Filtro'
      end
      object edtValorDoFiltro: TEdit
        Left = 88
        Top = 14
        Width = 281
        Height = 21
        TabOrder = 0
      end
      object btnAdicionarFiltro: TButton
        Left = 384
        Top = 12
        Width = 113
        Height = 25
        Caption = 'Adicionar Filtro'
        TabOrder = 1
      end
      object btnRemoverFiltro: TButton
        Left = 503
        Top = 12
        Width = 113
        Height = 26
        Caption = 'Remover Filtro'
        TabOrder = 2
      end
    end
    object grp7: TGroupBox
      Left = 1
      Top = 71
      Width = 777
      Height = 325
      Caption = 'Controle de Navega'#231#227'o e Edi'#231#227'o'
      TabOrder = 1
      object tdbNavigator: TDBNavigator
        Left = 264
        Top = 8
        Width = 510
        Height = 33
        TabOrder = 0
      end
      object tdbGrid: TDBGrid
        Left = 3
        Top = 41
        Width = 771
        Height = 281
        DataSource = ds2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object btnLimparDados: TButton
      Left = 17
      Top = 409
      Width = 107
      Height = 25
      Caption = 'Limpar Dados'
      TabOrder = 2
    end
    object btnIndexarPorID: TButton
      Left = 17
      Top = 440
      Width = 107
      Height = 25
      Caption = 'Indexar Por ID'
      TabOrder = 3
    end
    object btnIndexarPorNome: TButton
      Left = 17
      Top = 471
      Width = 107
      Height = 25
      Caption = 'Indexar Por Nome'
      TabOrder = 4
    end
    object grp8: TGroupBox
      Left = 138
      Top = 402
      Width = 136
      Height = 94
      Caption = 'Percorrer e Localizar'
      TabOrder = 5
      object lbl3: TLabel
        Left = 14
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object edtPercorrer: TEdit
        Left = 12
        Top = 32
        Width = 113
        Height = 21
        TabOrder = 0
      end
      object btnPercorrer: TButton
        Left = 12
        Top = 59
        Width = 114
        Height = 25
        Caption = 'Percorrer'
        TabOrder = 1
      end
    end
    object grpLocate: TGroupBox
      Left = 290
      Top = 402
      Width = 136
      Height = 94
      Caption = 'Locate'
      TabOrder = 6
      object lbl4: TLabel
        Left = 14
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object edtLocate: TEdit
        Left = 13
        Top = 32
        Width = 112
        Height = 21
        TabOrder = 0
      end
      object btnLocate: TButton
        Left = 15
        Top = 59
        Width = 111
        Height = 25
        Caption = 'Locate'
        TabOrder = 1
      end
    end
    object grp10: TGroupBox
      Left = 440
      Top = 402
      Width = 136
      Height = 94
      Caption = 'FindKey'
      TabOrder = 7
      object lbl5: TLabel
        Left = 13
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object btnFindKey: TButton
        Left = 13
        Top = 59
        Width = 114
        Height = 25
        Caption = 'FindKey'
        TabOrder = 0
      end
      object edtFindKey: TEdit
        Left = 12
        Top = 32
        Width = 115
        Height = 21
        TabOrder = 1
      end
    end
    object edtTotaldosProdutosAgregados: TEdit
      Left = 608
      Top = 423
      Width = 145
      Height = 21
      TabOrder = 8
    end
  end
  object ds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 456
    object intgrfldds1Id: TIntegerField
      FieldName = 'Id'
    end
    object ds1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ds1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object ds1Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ds1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ds1ProdutosTotal: TAggregateField
      FieldName = 'ProdutosTotal'
      DisplayName = ''
    end
  end
  object ds2: TDataSource
    DataSet = ds1
    Left = 696
    Top = 456
  end
end
