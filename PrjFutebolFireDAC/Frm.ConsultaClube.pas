unit Frm.ConsultaClube;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsultaClube = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CmbCampos: TComboBox;
    RgTipo: TRadioGroup;
    EdtValor: TEdit;
    BtnConsulta: TButton;
    GrdConsulta: TDBGrid;
    DsConsultaClubes: TDataSource;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaClube: TFrmConsultaClube;

implementation

{$R *.dfm}

uses Dm.Consulta;

procedure TFrmConsultaClube.BtnConsultaClick(Sender: TObject);
begin
  DmConsulta.ConsultarClube(
  TField(CmbCampos.Items.Objects[CmbCampos.ItemIndex]).FieldName,
  TTipoConsulta(RgTipo.ItemIndex),
  EdtValor.Text
  );
  if DmConsulta.QryCltaClube.IsEmpty then
    ShowMessage('Nenhum clube foi localizado');
end;


procedure TFrmConsultaClube.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CmbCampos.Items.Clear; //Limpa se houver itens no combobox.
  for I := 0 to DmConsulta.QryCltaClube.FieldCount - 1 do //Percore os fields do TFDQuery e adiciona ao combobox.
    CmbCampos.Items.AddObject(DmConsulta.QryCltaClube.Fields[I].DisplayLabel, DmConsulta.QryCltaClube.Fields[I]);
  CmbCampos.ItemIndex := 0;
  RgTipo.ItemIndex := 0;
end;


procedure TFrmConsultaClube.FormDestroy(Sender: TObject);
begin
  DmConsulta.QryCltaClube.Close;
end;

end.
