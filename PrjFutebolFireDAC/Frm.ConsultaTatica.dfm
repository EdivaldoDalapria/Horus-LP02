object FrmConsultaTatica: TFrmConsultaTatica
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Consulta T'#225'tica'
  ClientHeight = 479
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 233
    Height = 337
    Caption = 'Op'#231#245'es de Consulta'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object Label2: TLabel
      Left = 16
      Top = 226
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object CmbCampos: TComboBox
      Left = 16
      Top = 43
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object RgTipo: TRadioGroup
      Left = 16
      Top = 80
      Width = 193
      Height = 129
      Caption = 'Tipo'
      Items.Strings = (
        'Iniciando'
        'Contendo'
        'Igual')
      TabOrder = 1
    end
    object EdtValor: TEdit
      Left = 16
      Top = 245
      Width = 193
      Height = 21
      TabOrder = 2
    end
    object BtnConsulta: TButton
      Left = 16
      Top = 272
      Width = 193
      Height = 25
      Caption = 'Executar Consulta'
      TabOrder = 3
      OnClick = BtnConsultaClick
    end
  end
  object GrdConsulta: TDBGrid
    Left = 245
    Top = 8
    Width = 538
    Height = 337
    DataSource = DsConsultaTaticas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TAT_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_DESCRICAO'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_ESQUEMA'
        Width = 89
        Visible = True
      end>
  end
  object DsConsultaTaticas: TDataSource
    DataSet = DmConsulta.QryCltaTatica
    Left = 648
    Top = 192
  end
end
