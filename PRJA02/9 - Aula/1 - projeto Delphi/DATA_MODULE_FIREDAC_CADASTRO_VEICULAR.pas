unit DATA_MODULE_FIREDAC_CADASTRO_VEICULAR;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QryProprietario: TFDQuery;
    QryProprietarioPRP_CODIGO: TIntegerField;
    QryProprietarioPRP_NOME: TStringField;
    QryProprietarioPRP_ENDERECO: TStringField;
    QryVeiculo: TFDQuery;
    QryMultas: TFDQuery;
    DsMestreVeiculo: TDataSource;
    QryVeiculoVEI_CODIGO: TIntegerField;
    QryVeiculoVEI_PLACA: TStringField;
    QryVeiculoVEI_MARCA: TStringField;
    QryVeiculoVEI_MODELO: TStringField;
    QryVeiculoVEI_ANO: TIntegerField;
    QryVeiculoPRP_CODIGO: TIntegerField;
    QryMultasVEI_CODIGO: TIntegerField;
    QryMultasMLT_ITEM: TIntegerField;
    QryMultasMLT_DATA: TDateField;
    QryMultasMLT_HORA: TTimeField;
    QryMultasMLT_VALOR: TBCDField;
    QryMultasMLT_LOCAL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryMultasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
   FDConnection.Connected:= true;
end;

procedure TDM.QryMultasAfterInsert(DataSet: TDataSet);
begin
   QryMultasVEI_CODIGO.AsInteger := QryVeiculoVEI_CODIGO.AsInteger;
end;

end.
