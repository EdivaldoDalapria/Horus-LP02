object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 479
  Width = 714
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=D:\HORUS - Sistemas de Informa'#231#227'o\4'#176' Semestre\Linguagem' +
        ' de Programa'#231#227'o II\PROJETOS\9 - Aula\1 - Projeto Firebird\FIREDA' +
        'C_CADASTRO_VEICULAR.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 56
    Top = 248
  end
  object QryProprietario: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT PROPRIETARIO.PRP_CODIGO,'
      'PROPRIETARIO.PRP_NOME,'
      'PROPRIETARIO.PRP_ENDERECO'
      'FROM PROPRIETARIO')
    Left = 48
    Top = 352
    object QryProprietarioPRP_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProprietarioPRP_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PRP_NOME'
      Origin = 'PRP_NOME'
      Required = True
      Size = 60
    end
    object QryProprietarioPRP_ENDERECO: TStringField
      DisplayLabel = 'ENDERECO'
      FieldName = 'PRP_ENDERECO'
      Origin = 'PRP_ENDERECO'
      Size = 100
    end
  end
  object QryVeiculo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT VEICULO.VEI_CODIGO,'
      'VEICULO.VEI_PLACA,'
      'VEICULO.VEI_MARCA,'
      'VEICULO.VEI_MODELO,'
      'VEICULO.VEI_ANO,'
      'VEICULO.PRP_CODIGO'
      'FROM VEICULO')
    Left = 184
    Top = 40
    object QryVeiculoVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoVEI_PLACA: TStringField
      DisplayLabel = 'PLACA'
      FieldName = 'VEI_PLACA'
      Origin = 'VEI_PLACA'
      Required = True
      Size = 10
    end
    object QryVeiculoVEI_MARCA: TStringField
      DisplayLabel = 'MARCA'
      FieldName = 'VEI_MARCA'
      Origin = 'VEI_MARCA'
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_MODELO: TStringField
      DisplayLabel = 'MODELO'
      FieldName = 'VEI_MODELO'
      Origin = 'VEI_MODELO'
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_ANO: TIntegerField
      DisplayLabel = 'ANO'
      FieldName = 'VEI_ANO'
      Origin = 'VEI_ANO'
      Required = True
    end
    object QryVeiculoPRP_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      Required = True
    end
  end
  object QryMultas: TFDQuery
    AfterInsert = QryMultasAfterInsert
    MasterSource = DsMestreVeiculo
    MasterFields = 'VEI_CODIGO'
    Connection = FDConnection
    SQL.Strings = (
      'SELECT MULTAS.VEI_CODIGO,'
      'MULTAS.MLT_ITEM,'
      'MULTAS.MLT_DATA,'
      'MULTAS.MLT_HORA,'
      'MULTAS.MLT_VALOR,'
      'MULTAS.MLT_LOCAL'
      'FROM MULTAS'
      'WHERE'
      '(MULTAS.VEI_CODIGO = :VEI_CODIGO)')
    Left = 184
    Top = 144
    ParamData = <
      item
        Name = 'VEI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryMultasVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMultasMLT_ITEM: TIntegerField
      DisplayLabel = 'ITEM'
      FieldName = 'MLT_ITEM'
      Origin = 'MLT_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMultasMLT_DATA: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'MLT_DATA'
      Origin = 'MLT_DATA'
      Required = True
    end
    object QryMultasMLT_HORA: TTimeField
      DisplayLabel = 'HORA'
      FieldName = 'MLT_HORA'
      Origin = 'MLT_HORA'
    end
    object QryMultasMLT_VALOR: TBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'MLT_VALOR'
      Origin = 'MLT_VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryMultasMLT_LOCAL: TStringField
      DisplayLabel = 'LOCAL'
      FieldName = 'MLT_LOCAL'
      Origin = 'MLT_LOCAL'
      Size = 100
    end
  end
  object DsMestreVeiculo: TDataSource
    DataSet = QryVeiculo
    Left = 184
    Top = 248
  end
end
