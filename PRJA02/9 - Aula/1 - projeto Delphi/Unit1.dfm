object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 459
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_Proprietarios: TButton
    Left = 48
    Top = 48
    Width = 105
    Height = 33
    Caption = 'Proprietarios'
    TabOrder = 0
    OnClick = btn_ProprietariosClick
  end
  object btn_VeiculosMultas: TButton
    Left = 48
    Top = 144
    Width = 105
    Height = 33
    Caption = 'Ve'#237'culos e Multas'
    TabOrder = 1
    OnClick = btn_VeiculosMultasClick
  end
end
