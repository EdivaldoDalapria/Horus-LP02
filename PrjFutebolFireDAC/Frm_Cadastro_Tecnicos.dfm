object Cadastro_Tecnicos: TCadastro_Tecnicos
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Cadastro Tecnicos'
  ClientHeight = 490
  ClientWidth = 769
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
    Left = 8
    Top = 71
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 119
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 165
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 550
    Height = 41
    DataSource = DataModuleQuerys.DsTecnicos
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 232
    Width = 681
    Height = 225
    DataSource = DataModuleQuerys.DsTecnicos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TEC_CODIGO'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_NOME'
        Width = 381
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Width = 196
        Visible = True
      end>
  end
  object DbedtCodigo: TDBEdit
    Left = 8
    Top = 90
    Width = 121
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DataModuleQuerys.DsTecnicos
    TabOrder = 2
  end
  object DbedtNome: TDBEdit
    Left = 8
    Top = 138
    Width = 233
    Height = 21
    DataField = 'TEC_NOME'
    DataSource = DataModuleQuerys.DsTecnicos
    TabOrder = 3
  end
  object TDBlcbPais: TDBLookupComboBox
    Left = 8
    Top = 184
    Width = 233
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsCadastroTecnicos
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsCadastroPaises
    TabOrder = 4
  end
  object DsCadastroTecnicos: TDataSource
    DataSet = DataModuleQuerys.QryTecnicos
    Left = 576
    Top = 320
  end
  object DsCadastroPaises: TDataSource
    DataSet = DataModuleQuerys.QryPaises
    Left = 448
    Top = 320
  end
end
