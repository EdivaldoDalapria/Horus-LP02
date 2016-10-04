object FrmVeiculoMultas: TFrmVeiculoMultas
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Veiculos e Multas'
  ClientHeight = 543
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 39
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 24
    Top = 79
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Label3: TLabel
    Left = 216
    Top = 79
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label4: TLabel
    Left = 400
    Top = 79
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label5: TLabel
    Left = 581
    Top = 79
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label6: TLabel
    Left = 24
    Top = 120
    Width = 56
    Height = 13
    Caption = 'Propriet'#225'rio'
  end
  object Label7: TLabel
    Left = 24
    Top = 327
    Width = 22
    Height = 13
    Caption = 'Item'
  end
  object Label8: TLabel
    Left = 216
    Top = 327
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label9: TLabel
    Left = 400
    Top = 327
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label10: TLabel
    Left = 580
    Top = 327
    Width = 40
    Height = 13
    Caption = 'R$ Valor'
  end
  object Label11: TLabel
    Left = 24
    Top = 367
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 0
    Width = 550
    Height = 33
    DataSource = DsVeiculo
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 151
    Width = 713
    Height = 122
    DataSource = DsVeiculo
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Width = 79
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 408
    Width = 713
    Height = 137
    DataSource = DsMultas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Width = 303
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 24
    Top = 292
    Width = 550
    Height = 33
    DataSource = DsMultas
    TabOrder = 3
  end
  object TDBedtCodigo: TDBEdit
    Left = 24
    Top = 54
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DM.DsMestreVeiculo
    TabOrder = 4
  end
  object TDBlcbProprietario: TDBLookupComboBox
    Left = 24
    Top = 134
    Width = 713
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DsProprietarios
    TabOrder = 5
  end
  object TDBedtPlaca: TDBEdit
    Left = 24
    Top = 93
    Width = 161
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculo
    TabOrder = 6
  end
  object TDBedtMarca: TDBEdit
    Left = 216
    Top = 93
    Width = 157
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculo
    TabOrder = 7
  end
  object TDBedtModelo: TDBEdit
    Left = 400
    Top = 93
    Width = 157
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculo
    TabOrder = 8
  end
  object TDBedtAno: TDBEdit
    Left = 581
    Top = 93
    Width = 156
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculo
    TabOrder = 9
  end
  object TDBedtItem: TDBEdit
    Left = 24
    Top = 341
    Width = 161
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 10
  end
  object TDBedtData: TDBEdit
    Left = 216
    Top = 341
    Width = 157
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 11
  end
  object TDBedtHora: TDBEdit
    Left = 400
    Top = 341
    Width = 157
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 12
  end
  object TDBedtValor: TDBEdit
    Left = 581
    Top = 341
    Width = 156
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 13
  end
  object TDBedtLocal: TDBEdit
    Left = 24
    Top = 381
    Width = 713
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 14
  end
  object DsVeiculo: TDataSource
    DataSet = DM.QryVeiculo
    Left = 600
    Top = 8
  end
  object DsMultas: TDataSource
    DataSet = DM.QryMultas
    Left = 656
    Top = 8
  end
  object DsProprietarios: TDataSource
    DataSet = DM.QryProprietario
    Left = 720
    Top = 8
  end
end
