unit Frm.VeiculoMultas.pas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmVeiculoMultas = class(TForm)
    DBNavigator1: TDBNavigator;
    DsVeiculo: TDataSource;
    DsMultas: TDataSource;
    DsProprietarios: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    TDBedtCodigo: TDBEdit;
    Label1: TLabel;
    TDBlcbProprietario: TDBLookupComboBox;
    TDBedtPlaca: TDBEdit;
    TDBedtMarca: TDBEdit;
    TDBedtModelo: TDBEdit;
    TDBedtAno: TDBEdit;
    TDBedtItem: TDBEdit;
    TDBedtData: TDBEdit;
    TDBedtHora: TDBEdit;
    TDBedtValor: TDBEdit;
    TDBedtLocal: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculoMultas: TFrmVeiculoMultas;

implementation

{$R *.dfm}

uses DATA_MODULE_FIREDAC_CADASTRO_VEICULAR;


procedure TFrmVeiculoMultas.FormCreate(Sender: TObject);
begin
   DM.QryVeiculo.Open;
   DM.QryMultas.Open;
end;

procedure TFrmVeiculoMultas.FormDestroy(Sender: TObject);
begin
   DM.QryVeiculo.Close;
   DM.QryMultas.Close;
end;

end.
