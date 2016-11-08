object DmConsulta: TDmConsulta
  OldCreateOrder = False
  Height = 428
  Width = 579
  object QryCltaJogador: TFDQuery
    Connection = DataModuleConexao.FDConnection1
    SQL.Strings = (
      'SELECT jogador.jog_numero,'
      '       jogador.pai_codigo,'
      '       pais.pai_nome,'
      '       jogador.clb_codigo,'
      '       clube.clb_nome,'
      '       jogador.jog_nome,'
      '       jogador.jog_posicao,'
      '       jogador.jog_idade,'
      '       jogador.jog_lado,'
      '       jogador.jog_titular,'
      '       jogador.jog_caracteristica'
      'FROM jogador'
      'INNER JOIN pais ON (jogador.pai_codigo = pais.pai_codigo)'
      'INNER JOIN clube ON (jogador.clb_codigo = clube.clb_codigo)')
    Left = 48
    Top = 40
    object QryCltaJogadorJOG_NUMERO: TIntegerField
      FieldName = 'JOG_NUMERO'
      Origin = 'JOG_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaJogadorPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      Required = True
    end
    object QryCltaJogadorPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QryCltaJogadorCLB_CODIGO: TIntegerField
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaJogadorCLB_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLB_NOME'
      Origin = 'CLB_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QryCltaJogadorJOG_NOME: TStringField
      FieldName = 'JOG_NOME'
      Origin = 'JOG_NOME'
      Required = True
      Size = 60
    end
    object QryCltaJogadorJOG_POSICAO: TStringField
      FieldName = 'JOG_POSICAO'
      Origin = 'JOG_POSICAO'
      Required = True
      Size = 30
    end
    object QryCltaJogadorJOG_IDADE: TIntegerField
      FieldName = 'JOG_IDADE'
      Origin = 'JOG_IDADE'
      Required = True
    end
    object QryCltaJogadorJOG_LADO: TStringField
      FieldName = 'JOG_LADO'
      Origin = 'JOG_LADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryCltaJogadorJOG_TITULAR: TStringField
      FieldName = 'JOG_TITULAR'
      Origin = 'JOG_TITULAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryCltaJogadorJOG_CARACTERISTICA: TStringField
      FieldName = 'JOG_CARACTERISTICA'
      Origin = 'JOG_CARACTERISTICA'
      Size = 100
    end
  end
  object QryCltaTecnico: TFDQuery
    Connection = DataModuleConexao.FDConnection1
    SQL.Strings = (
      'SELECT tecnico.tec_codigo,'
      '       tecnico.tec_nome,'
      #9'   pais.pai_nome      '
      'FROM tecnico'
      'INNER JOIN pais ON (tecnico.pai_codigo = pais.pai_codigo)')
    Left = 144
    Top = 40
    object QryCltaTecnicoTEC_CODIGO: TIntegerField
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaTecnicoTEC_NOME: TStringField
      FieldName = 'TEC_NOME'
      Origin = 'TEC_NOME'
      Required = True
      Size = 60
    end
    object QryCltaTecnicoPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object QryCltaClube: TFDQuery
    Connection = DataModuleConexao.FDConnection1
    SQL.Strings = (
      'SELECT clube.clb_codigo,'
      '       clube.clb_nome,'
      '       clube.clb_estadio,'
      '       clube.clb_dtfundacao,'
      '       tatica.tat_esquema,'
      '       tecnico.tec_nome,'
      '       pais.pai_nome'#9'   '
      'FROM clube'
      'INNER JOIN tatica ON (clube.tat_codigo = tatica.tat_codigo)'
      'INNER JOIN tecnico ON (clube.tec_codigo = tecnico.tec_codigo)'
      'INNER JOIN pais ON (clube.pai_codigo = pais.pai_codigo)')
    Left = 240
    Top = 40
    object QryCltaClubeCLB_CODIGO: TIntegerField
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaClubeCLB_NOME: TStringField
      FieldName = 'CLB_NOME'
      Origin = 'CLB_NOME'
      Required = True
      Size = 60
    end
    object QryCltaClubeCLB_ESTADIO: TStringField
      FieldName = 'CLB_ESTADIO'
      Origin = 'CLB_ESTADIO'
      Size = 60
    end
    object QryCltaClubeCLB_DTFUNDACAO: TDateField
      FieldName = 'CLB_DTFUNDACAO'
      Origin = 'CLB_DTFUNDACAO'
    end
    object QryCltaClubeTAT_ESQUEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAT_ESQUEMA'
      Origin = 'TAT_ESQUEMA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QryCltaClubeTEC_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TEC_NOME'
      Origin = 'TEC_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QryCltaClubePAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object QryCltaTatica: TFDQuery
    Connection = DataModuleConexao.FDConnection1
    SQL.Strings = (
      'SELECT tatica.tat_codigo,'
      #9'   tatica.tat_descricao,'
      '       tatica.tat_esquema'#9'   '
      'FROM tatica')
    Left = 344
    Top = 40
    object QryCltaTaticaTAT_CODIGO: TIntegerField
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaTaticaTAT_DESCRICAO: TStringField
      FieldName = 'TAT_DESCRICAO'
      Origin = 'TAT_DESCRICAO'
      Required = True
      Size = 60
    end
    object QryCltaTaticaTAT_ESQUEMA: TStringField
      FieldName = 'TAT_ESQUEMA'
      Origin = 'TAT_ESQUEMA'
      Required = True
      Size = 5
    end
  end
  object QryCltaPais: TFDQuery
    Connection = DataModuleConexao.FDConnection1
    SQL.Strings = (
      'SELECT pais.pai_codigo,'
      #9'   pais.pai_nome      '
      'FROM pais')
    Left = 456
    Top = 40
    object QryCltaPaisPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCltaPaisPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      Required = True
      Size = 60
    end
  end
end
