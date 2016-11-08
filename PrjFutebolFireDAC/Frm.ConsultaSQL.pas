unit Frm.ConsultaSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsultaSQL = class(TForm)
    Panel1: TPanel;
    MmoSQL: TMemo;
    DBGridSQL: TDBGrid;
    Cancelar_Consulta_SQL: TSpeedButton;
    DsConsultaSQL: TDataSource;
    QryConsultaSQL: TFDQuery;
    Executar_Consulta_SQL: TSpeedButton;
    procedure Cancelar_Consulta_SQLClick(Sender: TObject);
    procedure Executar_Consulta_SQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaSQL: TFrmConsultaSQL;

implementation

{$R *.dfm}

uses Data_Module_Conexao;

procedure TFrmConsultaSQL.Cancelar_Consulta_SQLClick(Sender: TObject);
begin
  QryConsultaSQL.Close;// Fecha o componente se o mesmo estiver conectado.
  MmoSQL.Lines.Clear;// Limpa o SQL do Memo.
end;

procedure TFrmConsultaSQL.Executar_Consulta_SQLClick(Sender: TObject);
begin
  QryConsultaSQL.Close;// Fecha o componente se o mesmo estiver conectado.
  QryConsultaSQL.SQL.Clear;// Limpa qualquer SQL que ele tenha.
  QryConsultaSQL.SQL.Add(MmoSql.Lines.Text);// Adiciona o SQL digitado no Memo.
  QryConsultaSQL.Prepare;// Prepara o comando SQL.
  QryConsultaSQL.Open;// Abre a Query e retorna o dados se houver.
end;

end.
