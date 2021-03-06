unit Dm.Consulta;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
TTipoConsulta = (tpIniciando, tpContendo, tpIgual);
  TDmConsulta = class(TDataModule)
    QryCltaJogador: TFDQuery;
    QryCltaJogadorJOG_NUMERO: TIntegerField;
    QryCltaJogadorPAI_CODIGO: TIntegerField;
    QryCltaJogadorPAI_NOME: TStringField;
    QryCltaJogadorCLB_CODIGO: TIntegerField;
    QryCltaJogadorCLB_NOME: TStringField;
    QryCltaJogadorJOG_NOME: TStringField;
    QryCltaJogadorJOG_POSICAO: TStringField;
    QryCltaJogadorJOG_IDADE: TIntegerField;
    QryCltaJogadorJOG_LADO: TStringField;
    QryCltaJogadorJOG_TITULAR: TStringField;
    QryCltaJogadorJOG_CARACTERISTICA: TStringField;
    QryCltaTecnico: TFDQuery;
    QryCltaClube: TFDQuery;
    QryCltaTatica: TFDQuery;
    QryCltaPais: TFDQuery;
    QryCltaTecnicoTEC_CODIGO: TIntegerField;
    QryCltaTecnicoTEC_NOME: TStringField;
    QryCltaTecnicoPAI_NOME: TStringField;
    QryCltaClubeCLB_CODIGO: TIntegerField;
    QryCltaClubeCLB_NOME: TStringField;
    QryCltaClubeCLB_ESTADIO: TStringField;
    QryCltaClubeCLB_DTFUNDACAO: TDateField;
    QryCltaClubeTAT_ESQUEMA: TStringField;
    QryCltaClubeTEC_NOME: TStringField;
    QryCltaClubePAI_NOME: TStringField;
    QryCltaTaticaTAT_CODIGO: TIntegerField;
    QryCltaTaticaTAT_DESCRICAO: TStringField;
    QryCltaTaticaTAT_ESQUEMA: TStringField;
    QryCltaPaisPAI_CODIGO: TIntegerField;
    QryCltaPaisPAI_NOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultarJogador(const pCampoNome: string; const pTipo: TTipoConsulta; const pValor: string);
    procedure ConsultarTecnico(const pCampoNome: string; const pTipo: TTipoConsulta; const pValor: string);
    procedure ConsultarClube(const pCampoNome: string; const pTipo: TTipoConsulta; const pValor: string);
    procedure ConsultarTatica(const pCampoNome: string; const pTipo: TTipoConsulta; const pValor: string);
    procedure ConsultarPais(const pCampoNome: string; const pTipo: TTipoConsulta; const pValor: string);

  end;

var
  DmConsulta: TDmConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Data_Module_Conexao;

{$R *.dfm}

{ TDmConsulta }

procedure TDmConsulta.ConsultarClube(const pCampoNome: string;
  const pTipo: TTipoConsulta; const pValor: string);
begin
  QryCltaClube.Close;
  QryCltaClube.SQL.Clear;
  QryCltaClube.SQL.Add('SELECT clube.clb_codigo,');
  QryCltaClube.SQL.Add('       clube.clb_nome,');
  QryCltaClube.SQL.Add('       clube.clb_estadio,');
  QryCltaClube.SQL.Add('       clube.clb_dtfundacao,');
  QryCltaClube.SQL.Add('       tatica.tat_esquema,');
  QryCltaClube.SQL.Add('       tecnico.tec_nome,');
  QryCltaClube.SQL.Add('       pais.pai_nome');
  QryCltaClube.SQL.Add('FROM clube');
  QryCltaClube.SQL.Add('INNER JOIN tatica ON (clube.tat_codigo = tatica.tat_codigo)');
  QryCltaClube.SQL.Add('INNER JOIN tecnico ON (clube.tec_codigo = tecnico.tec_codigo)');
  QryCltaClube.SQL.Add('INNER JOIN pais ON (clube.pai_codigo = pais.pai_codigo)');
  case Ptipo of
     tpIniciando:
     begin
       QryCltaClube.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr(pValor + '%'));
     end;
     tpContendo:
     begin
       QryCltaClube.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr('%' + pValor + '%'));
     end;
     tpIgual:
     begin
       QryCltaClube.SQL.Add('WHERE ' + pCampoNome + ' = ' + QuotedStr(pValor));
     end;
  end;
  QryCltaClube.Open();
end;

procedure TDmConsulta.ConsultarJogador(const pCampoNome: string;
  const pTipo: TTipoConsulta; const pValor: string);
begin
  QryCltaJogador.Close;
  QryCltaJogador.SQL.Clear;
  QryCltaJogador.SQL.Add('SELECT jogador.jog_numero,');
  QryCltaJogador.SQL.Add('       jogador.pai_codigo,');
  QryCltaJogador.SQL.Add('       pais.pai_nome,');
  QryCltaJogador.SQL.Add('       jogador.clb_codigo,');
  QryCltaJogador.SQL.Add('       clube.clb_nome,');
  QryCltaJogador.SQL.Add('       jogador.jog_nome,');
  QryCltaJogador.SQL.Add('       jogador.jog_posicao,');
  QryCltaJogador.SQL.Add('       jogador.jog_idade,');
  QryCltaJogador.SQL.Add('       jogador.jog_lado,');
  QryCltaJogador.SQL.Add('       jogador.jog_titular,');
  QryCltaJogador.SQL.Add('       jogador.JOG_CARACTERISTICA');
  QryCltaJogador.SQL.Add('FROM jogador');
  QryCltaJogador.SQL.Add('INNER JOIN pais ON (jogador.pai_codigo = pais.pai_codigo)');
  QryCltaJogador.SQL.Add('INNER JOIN clube ON (jogador.clb_codigo = clube.clb_codigo)');
  case Ptipo of
     tpIniciando:
     begin
       QryCltaJogador.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr(pValor + '%'));
     end;
     tpContendo:
     begin
       QryCltaJogador.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr('%' + pValor + '%'));
     end;
     tpIgual:
     begin
       QryCltaJogador.SQL.Add('WHERE ' + pCampoNome + ' = ' + QuotedStr(pValor));
     end;
  end;
  QryCltaJogador.Open();
end;

procedure TDmConsulta.ConsultarPais(const pCampoNome: string;
  const pTipo: TTipoConsulta; const pValor: string);
begin
  QryCltaPais.Close;
  QryCltaPais.SQL.Clear;
  QryCltaPais.SQL.Add('SELECT pais.pai_codigo,');
  QryCltaPais.SQL.Add('       pais.pai_nome');
  QryCltaPais.SQL.Add('FROM pais');
  case Ptipo of
     tpIniciando:
     begin
       QryCltaPais.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr(pValor + '%'));
     end;
     tpContendo:
     begin
       QryCltaPais.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr('%' + pValor + '%'));
     end;
     tpIgual:
     begin
       QryCltaPais.SQL.Add('WHERE ' + pCampoNome + ' = ' + QuotedStr(pValor));
     end;
  end;
  QryCltaPais.Open();
end;

procedure TDmConsulta.ConsultarTatica(const pCampoNome: string;
  const pTipo: TTipoConsulta; const pValor: string);
begin
  QryCltaTatica.Close;
  QryCltaTatica.SQL.Clear;
  QryCltaTatica.SQL.Add('SELECT tatica.tat_codigo,');
  QryCltaTatica.SQL.Add('       tatica.tat_descricao,');
  QryCltaTatica.SQL.Add('       tatica.tat_esquema');
  QryCltaTatica.SQL.Add('FROM tatica');
  case Ptipo of
     tpIniciando:
     begin
       QryCltaTatica.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr(pValor + '%'));
     end;
     tpContendo:
     begin
       QryCltaTatica.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr('%' + pValor + '%'));
     end;
     tpIgual:
     begin
       QryCltaTatica.SQL.Add('WHERE ' + pCampoNome + ' = ' + QuotedStr(pValor));
     end;
  end;
  QryCltaTatica.Open();
end;

procedure TDmConsulta.ConsultarTecnico(const pCampoNome: string;
  const pTipo: TTipoConsulta; const pValor: string);
begin
  QryCltaTecnico.Close;
  QryCltaTecnico.SQL.Clear;
  QryCltaTecnico.SQL.Add('SELECT tecnico.tec_codigo,');
  QryCltaTecnico.SQL.Add('       tecnico.tec_nome,');
  QryCltaTecnico.SQL.Add('       pais.pai_nome');
  QryCltaTecnico.SQL.Add('FROM tecnico');
  QryCltaTecnico.SQL.Add('INNER JOIN pais ON (tecnico.pai_codigo = pais.pai_codigo)');
  case Ptipo of
     tpIniciando:
     begin
       QryCltaTecnico.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr(pValor + '%'));
     end;
     tpContendo:
     begin
       QryCltaTecnico.SQL.Add('WHERE ' + pCampoNome + ' LIKE ' + QuotedStr('%' + pValor + '%'));
     end;
     tpIgual:
     begin
       QryCltaTecnico.SQL.Add('WHERE ' + pCampoNome + ' = ' + QuotedStr(pValor));
     end;
  end;
  QryCltaTecnico.Open();
end;

end.
