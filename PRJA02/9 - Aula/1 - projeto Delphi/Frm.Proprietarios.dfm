object FrmProprietarios: TFrmProprietarios
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Proprietarios'
  ClientHeight = 493
  ClientWidth = 757
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
    Left = 16
    Top = 59
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 16
    Top = 106
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 156
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 0
    Width = 550
    Height = 33
    DataSource = DsProprietarios
    TabOrder = 0
  end
  object DBGrid_Lista_Proprietarios: TDBGrid
    Left = 16
    Top = 208
    Width = 721
    Height = 241
    DataSource = DsProprietarios
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_NOME'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_ENDERECO'
        Width = 420
        Visible = True
      end>
  end
  object DBEdt_Codigo: TDBEdit
    Left = 16
    Top = 75
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsProprietarios
    TabOrder = 2
  end
  object DBEdt_Nome: TDBEdit
    Left = 16
    Top = 121
    Width = 577
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DsProprietarios
    TabOrder = 3
  end
  object DBEdt_Endereco: TDBEdit
    Left = 16
    Top = 171
    Width = 721
    Height = 21
    DataField = 'PRP_ENDERECO'
    DataSource = DsProprietarios
    TabOrder = 4
  end
  object DsProprietarios: TDataSource
    DataSet = DM.QryProprietario
    Left = 648
    Top = 24
  end
end
