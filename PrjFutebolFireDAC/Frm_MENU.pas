unit Frm_MENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmMENU = class(TForm)
    MainMenu1: TMainMenu;
    CadastrodePases1: TMenuItem;
    Cadastro_de_Paises: TMenuItem;
    Cadastro_de_Taticas: TMenuItem;
    Cadastro_de_Tecnicos: TMenuItem;
    Cadastro_de_Clubes: TMenuItem;
    CONSULTAS2: TMenuItem;
    Jogadores1: TMenuItem;
    Tecnicos1: TMenuItem;
    Clubes1: TMenuItem;
    Taticas1: TMenuItem;
    Paises1: TMenuItem;
    BancodeDados1: TMenuItem;
    Backup1: TMenuItem;
    Restore1: TMenuItem;
    SQL1: TMenuItem;
    Image1: TImage;
    procedure Cadastro_de_PaisesClick(Sender: TObject);
    procedure Cadastro_de_TaticasClick(Sender: TObject);
    procedure Cadastro_de_TecnicosClick(Sender: TObject);
    procedure Cadastro_de_ClubesClick(Sender: TObject);
    procedure Jogadores1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Restore1Click(Sender: TObject);
    procedure SQL1Click(Sender: TObject);
    procedure Tecnicos1Click(Sender: TObject);
    procedure Clubes1Click(Sender: TObject);
    procedure Taticas1Click(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMENU: TFrmMENU;

implementation

{$R *.dfm}

uses Frm_Cadastro_Paises, Frm_Cadastro_Taticas, Frm_Cadastro_Tecnicos, Frm_Cadastro_Clubes,
  Data_Module_Conexao,
  Frm.ConsultaSQL, Frm.ConsultaJogador, Frm.ConsultaTecnico, Frm.ConsultaClube, Frm.ConsultaTatica, Frm.ConsultaPais;



procedure TFrmMENU.Backup1Click(Sender: TObject);
begin
  DataModuleConexao.FDFBNBackup1.Backup;
end;


procedure TFrmMENU.Cadastro_de_ClubesClick(Sender: TObject);
var
  vFrmCadastro_Clubes_Jogadores:TCadastro_Clubes_Jogadores; // Variavel do tipo do formul�rio do Cadastro_Clubes
begin
  vFrmCadastro_Clubes_Jogadores :=  TCadastro_Clubes_Jogadores.Create(nil); // Cria o formul�rio sem Clubes
  try
    vFrmCadastro_Clubes_Jogadores.ShowModal; // Mostra o formul�rio na tela
  finally
    FreeAndNil(vFrmCadastro_Clubes_Jogadores); // Destroi nosso formul�rio
  end;
end;


procedure TFrmMENU.Cadastro_de_PaisesClick(Sender: TObject);
var
  vFrmCadastro_Paises:TCadastro_Paises; // Variavel do tipo do formul�rio do Cadastro_Paises
begin
  vFrmCadastro_Paises :=  TCadastro_Paises.Create(nil); // Cria o formul�rio sem Paises
  try
    vFrmCadastro_Paises.ShowModal; // Mostra o formul�rio na tela
  finally
    FreeAndNil(vFrmCadastro_Paises); // Destroi nosso formul�rio
  end;
end;


procedure TFrmMENU.Cadastro_de_TaticasClick(Sender: TObject);
var
  vFrmCadastro_Taticas:TCadastro_Taticas; // Variavel do tipo do formul�rio do Cadastro_Taticas
begin
  vFrmCadastro_Taticas :=  TCadastro_Taticas.Create(nil); // Cria o formul�rio sem Taticas
  try
    vFrmCadastro_Taticas.ShowModal; // Mostra o formul�rio na tela
  finally
    FreeAndNil(vFrmCadastro_Taticas); // Destroi nosso formul�rio
  end;
end;


procedure TFrmMENU.Cadastro_de_TecnicosClick(Sender: TObject);
var
  vFrmCadastro_Tecnicos:TCadastro_Tecnicos; // Variavel do tipo do formul�rio do Cadastro_Tecnicos
begin
  vFrmCadastro_Tecnicos :=  TCadastro_Tecnicos.Create(nil); // Cria o formul�rio sem Tecnicos
  try
    vFrmCadastro_Tecnicos.ShowModal; // Mostra o formul�rio na tela
  finally
    FreeAndNil(vFrmCadastro_Tecnicos); // Destroi nosso formul�rio
  end;
end;


procedure TFrmMENU.Clubes1Click(Sender: TObject);
var
  vFrmCltaClube: TFrmConsultaClube;
begin
  vFrmCltaClube := TFrmConsultaClube.Create(nil);
  try
    vFrmCltaClube.ShowModal;
  finally
    FreeAndNil(vFrmCltaClube);
  end;
end;


procedure TFrmMENU.Jogadores1Click(Sender: TObject);
var
  vFrmCltaJogador: TFrmConsultaJogador;
begin
  vFrmCltaJogador := TFrmConsultaJogador.Create(nil);
  try
    vFrmCltaJogador.ShowModal;
  finally
    FreeAndNil(vFrmCltaJogador);
  end;
end;


procedure TFrmMENU.Paises1Click(Sender: TObject);
var
  vFrmCltaPais: TFrmConsultaPais;
begin
  vFrmCltaPais := TFrmConsultaPais.Create(nil);
  try
    vFrmCltaPais.ShowModal;
  finally
    FreeAndNil(vFrmCltaPais);
  end;
end;


procedure TFrmMENU.Restore1Click(Sender: TObject);
// ap�s executar um BKP optou-se em deletar o BD, pois para restaurar ocorre um erro que o BD j� existe.
begin
// fun��o encerrar a conex�o com BD.
DataModuleConexao.FDConnection1.Close;

// se o BD  existe ir� deletar ele.
if FileExists(DataModuleConexao.FDFBNRestore1.Database) then
 DeleteFile(DataModuleConexao.FDFBNRestore1.Database) ;
// executa a restaura��o.
DataModuleConexao.FDFBNRestore1.Restore;
// ap�s feito o BKP dever� abrir a conex�o com o BD, para voltar a funcionar.
DataModuleConexao.FDConnection1.Open;
end;


procedure TFrmMENU.SQL1Click(Sender: TObject);
var
  vFrmCltaSQL: TFrmConsultaSQL;
begin
  vFrmCltaSQL := TFrmConsultaSQL.Create(nil);
  try
    vFrmCltaSQL.ShowModal;
  finally
    FreeAndNil(vFrmCltaSQL);
  end;

end;


procedure TFrmMENU.Taticas1Click(Sender: TObject);
var
  vFrmCltaTatica: TFrmConsultaTatica;
begin
  vFrmCltaTatica := TFrmConsultaTatica.Create(nil);
  try
    vFrmCltaTatica.ShowModal;
  finally
    FreeAndNil(vFrmCltaTatica);
  end;
end;


procedure TFrmMENU.Tecnicos1Click(Sender: TObject);
var
  vFrmCltaTecnico: TFrmConsultaTecnico;
begin
  vFrmCltaTecnico := TFrmConsultaTecnico.Create(nil);
  try
    vFrmCltaTecnico.ShowModal;
  finally
    FreeAndNil(vFrmCltaTecnico);
  end;
end;

end.
