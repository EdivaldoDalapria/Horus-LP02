unit Frm_Cadastro_Taticas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TCadastro_Taticas = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DsCadastroTaticas: TDataSource;
    DbedtCodigo: TDBEdit;
    DbedtDescricao: TDBEdit;
    DbedtEsquema: TDBEdit;
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
  Cadastro_Taticas: TCadastro_Taticas;

implementation

{$R *.dfm}

uses Data_Module_Querys;

procedure TCadastro_Taticas.FormCreate(Sender: TObject);
begin
   DataModuleQuerys.QryTaticas.Open;
end;

procedure TCadastro_Taticas.FormDestroy(Sender: TObject);
begin
   DataModuleQuerys.QryTaticas.Close;
end;

end.
