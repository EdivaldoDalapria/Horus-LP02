unit Frm_Cadastro_Tecnicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.ExtCtrls;

type
  TCadastro_Tecnicos = class(TForm)
    DBNavigator1: TDBNavigator;
    DsCadastroTecnicos: TDataSource;
    DBGrid1: TDBGrid;
    DbedtCodigo: TDBEdit;
    Label1: TLabel;
    DbedtNome: TDBEdit;
    Label2: TLabel;
    TDBlcbPais: TDBLookupComboBox;
    Label3: TLabel;
    DsCadastroPaises: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Tecnicos: TCadastro_Tecnicos;

implementation

{$R *.dfm}

uses Data_Module_Querys;

procedure TCadastro_Tecnicos.FormCreate(Sender: TObject);
begin
    DataModuleQuerys.QryTecnicos.Open;
    DataModuleQuerys.QryPaises.Open;
end;

procedure TCadastro_Tecnicos.FormDestroy(Sender: TObject);
begin
    DataModuleQuerys.QryTecnicos.Close;
    DataModuleQuerys.QryPaises.Close;
end;

end.
