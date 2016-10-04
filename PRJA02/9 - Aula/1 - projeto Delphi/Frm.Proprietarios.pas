unit Frm.Proprietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.ExtCtrls;

type
  TFrmProprietarios = class(TForm)
    DBNavigator1: TDBNavigator;
    DsProprietarios: TDataSource;
    DBGrid_Lista_Proprietarios: TDBGrid;
    DBEdt_Codigo: TDBEdit;
    DBEdt_Nome: TDBEdit;
    DBEdt_Endereco: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietarios: TFrmProprietarios;

implementation

{$R *.dfm}

uses DATA_MODULE_FIREDAC_CADASTRO_VEICULAR;


procedure TFrmProprietarios.FormCreate(Sender: TObject);
begin
  DM.QryProprietario.Open;
end;

procedure TFrmProprietarios.FormDestroy(Sender: TObject);
begin
   DM.QryProprietario.Close;
end;

end.
