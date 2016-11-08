unit Frm_Cadastro_Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TCadastro_Paises = class(TForm)
    DBNavigator1: TDBNavigator;
    DsCadastroPaises: TDataSource;
    DBGrid1: TDBGrid;
    DbedtCodigo: TDBEdit;
    Label1: TLabel;
    DbedtNome: TDBEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Paises: TCadastro_Paises;

implementation

{$R *.dfm}

uses Data_Module_Querys;

procedure TCadastro_Paises.FormCreate(Sender: TObject);
begin
  DataModuleQuerys.QryPaises.Open;
end;

procedure TCadastro_Paises.FormDestroy(Sender: TObject);
begin
   DataModuleQuerys.QryPaises.Close;
end;

end.