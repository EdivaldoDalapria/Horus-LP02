object FrmConsultaTecnico: TFrmConsultaTecnico
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Consulta T'#233'cnico'
  ClientHeight = 460
  ClientWidth = 785
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
      Top = 33
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object Label2: TLabel
      Left = 16
      Top = 234
      Width = 24
      Height = 13
      Caption = 'Valor'
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
      TabOrder = 0
    end
    object EdtValor: TEdit
      Left = 16
      Top = 253
      Width = 193
      Height = 21
      TabOrder = 1
    end
    object BtnConsulta: TButton
      Left = 16
      Top = 280
      Width = 193
      Height = 25
      Caption = 'Executar Consulta'
      TabOrder = 2
      OnClick = BtnConsultaClick
    end
    object CmbCampos: TComboBox
      Left = 16
      Top = 52
      Width = 193
      Height = 21
      TabOrder = 3
    end
  end
  object GrdConsulta: TDBGrid
    Left = 256
    Top = 8
    Width = 489
    Height = 337
    DataSource = DsConsultaTecnicos
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
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_NOME'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DsConsultaTecnicos: TDataSource
    DataSet = DmConsulta.QryCltaTecnico
    Left = 648
    Top = 184
  end
end
