object DataModuleConexao: TDataModuleConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 452
  Width = 519
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\HORUS - Sistemas de Informa'#231#227'o\4'#176' Semestre\Linguagem' +
        ' de Programa'#231#227'o II\PROJETOS\11 - Aula\1 - projeto Delphi\BD_Fire' +
        'bird_FUTEBOL_integrado.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 72
    Top = 256
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 
      'D:\HORUS - Sistemas de Informa'#231#227'o\4'#176' Semestre\Linguagem de Progr' +
      'ama'#231#227'o II\PROJETOS\11 - Aula\1 - projeto Delphi\Log\Log.txt'
    FileAppend = True
    FileColumns = [tiRefNo, tiTime, tiThreadID, tiClassName, tiObjID, tiMsgText]
    Tracing = True
    Left = 224
    Top = 40
  end
  object FDFBNBackup1: TFDFBNBackup
    DriverLink = FDPhysFBDriverLink1
    UserName = 'sysdba'
    Password = 'masterkey'
    Database = 
      'D:\HORUS - Sistemas de Informa'#231#227'o\4'#176' Semestre\Linguagem de Progr' +
      'ama'#231#227'o II\PROJETOS\11 - Aula\1 - projeto Delphi\BD_Firebird_FUTE' +
      'BOL_integrado.FDB'
    BackupFile = 'C:\Users\X\Desktop\BD_Firebird_FUTEBOL_integrado.FBK'
    Left = 224
    Top = 144
  end
  object FDFBNRestore1: TFDFBNRestore
    DriverLink = FDPhysFBDriverLink1
    UserName = 'sysdba'
    Password = 'masterkey'
    Database = 
      'D:\HORUS - Sistemas de Informa'#231#227'o\4'#176' Semestre\Linguagem de Progr' +
      'ama'#231#227'o II\PROJETOS\11 - Aula\1 - projeto Delphi\BD_Firebird_FUTE' +
      'BOL_integrado.FDB'
    BackupFiles.Strings = (
      'C:\Users\X\Desktop\BD_Firebird_FUTEBOL_integrado.FBK')
    Left = 224
    Top = 256
  end
end
