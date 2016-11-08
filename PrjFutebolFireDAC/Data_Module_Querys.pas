unit Data_Module_Querys;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModuleQuerys = class(TDataModule)
    QryPaises: TFDQuery;
    DsPaises: TDataSource;
    QryTaticas: TFDQuery;
    QryTecnicos: TFDQuery;
    QryClubes: TFDQuery;
    QryJogadores: TFDQuery;
    DsTaticas: TDataSource;
    DsTecnicos: TDataSource;
    DsClubes: TDataSource;
    DsJogadores: TDataSource;
    QryTaticasTAT_CODIGO: TIntegerField;
    QryTaticasTAT_DESCRICAO: TStringField;
    QryTaticasTAT_ESQUEMA: TStringField;
    QryTecnicosTEC_CODIGO: TIntegerField;
    QryTecnicosPAI_CODIGO: TIntegerField;
    QryTecnicosTEC_NOME: TStringField;
    QryJogadoresCLB_CODIGO: TIntegerField;
    QryJogadoresJOG_NUMERO: TIntegerField;
    QryJogadoresPAI_CODIGO: TIntegerField;
    QryJogadoresJOG_NOME: TStringField;
    QryJogadoresJOG_POSICAO: TStringField;
    QryJogadoresJOG_IDADE: TIntegerField;
    QryJogadoresJOG_LADO: TStringField;
    QryJogadoresJOG_TITULAR: TStringField;
    QryJogadoresJOG_CARACTERISTICA: TStringField;
    QryPaisesPAI_CODIGO: TIntegerField;
    QryPaisesPAI_NOME: TStringField;
    QryClubesCLB_CODIGO: TIntegerField;
    QryClubesTAT_CODIGO: TIntegerField;
    QryClubesTEC_CODIGO: TIntegerField;
    QryClubesPAI_CODIGO: TIntegerField;
    QryClubesCLB_NOME: TStringField;
    QryClubesCLB_ESTADIO: TStringField;
    QryClubesCLB_DTFUNDACAO: TDateField;
    procedure QryJogadoresAfterInsert(DataSet: TDataSet);
    procedure QryPaisesAfterInsert(DataSet: TDataSet);
    procedure QryTaticasAfterInsert(DataSet: TDataSet);
    procedure QryTecnicosAfterInsert(DataSet: TDataSet);
    procedure QryPaisesUpdateError(ASender: TDataSet; AException: EFDException;
      ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
  private
    { Private declarations }
    function GerarCodigo(const pNomeSeq:String): Integer;
  public
    { Public declarations }
  end;

var
  DataModuleQuerys: TDataModuleQuerys;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Data_Module_Conexao;

{$R *.dfm}

function TDataModuleQuerys.GerarCodigo(const PNomeSeq: string): Integer;
var
  vQuery: TFDQuery;
begin
  vQuery := TFDQuery.Create(nil);
   try
     vQuery.Connection := DataModuleConexao.FDConnection1;
     vQuery.SQL.Add('SELECT NEXT VALUE FOR ' + PNomeSeq + ' FROM RDB$DATABASE');
     vQuery.Open();
     Result := vQuery.Fields[0].AsInteger;
   finally
      FreeAndNil(vQuery);
   end;
end;

procedure TDataModuleQuerys.QryJogadoresAfterInsert(DataSet: TDataSet);
begin
   QryJogadoresCLB_CODIGO.AsInteger := QryClubesCLB_CODIGO.AsInteger;
end;

procedure TDataModuleQuerys.QryPaisesAfterInsert(DataSet: TDataSet);
begin
  QryPaisesPAI_CODIGO.AsInteger := GerarCodigo('SEQ_PAI_CODIGO');
end;

procedure TDataModuleQuerys.QryPaisesUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
   if AException is EFDDBEngineException then
   begin
     if (EFDDBEngineException(AException).Kind =
       TFDCommandExceptionKind.ekUKViolated) then
     begin
       raise Exception.Create('O c�digo do Pa�s j� esta Cadastrado');
     end;

   end;

end;

procedure TDataModuleQuerys.QryTaticasAfterInsert(DataSet: TDataSet);
begin
  QryTaticasTAT_CODIGO.AsInteger := GerarCodigo('SEQ_TAT_CODIGO');
end;

procedure TDataModuleQuerys.QryTecnicosAfterInsert(DataSet: TDataSet);
begin
  QryTecnicosTEC_CODIGO.AsInteger := GerarCodigo('SEQ_TEC_CODIGO');
end;

end.
