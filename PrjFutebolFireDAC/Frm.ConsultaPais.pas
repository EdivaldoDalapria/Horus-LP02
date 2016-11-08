unit Frm.ConsultaPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsultaPais = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CmbCampos: TComboBox;
    RgTipo: TRadioGroup;
    EdtValor: TEdit;
    BtnConsulta: TButton;
    GrdConsulta: TDBGrid;
    DsConsultaPaises: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaPais: TFrmConsultaPais;

implementation

{$R *.dfm}

uses Dm.Consulta;

procedure TFrmConsultaPais.BtnConsultaClick(Sender: TObject);
begin
  DmConsulta.ConsultarPais(
  TField(CmbCampos.Items.Objects[CmbCampos.ItemIndex]).FieldName,
  TTipoConsulta(RgTipo.ItemIndex),
  EdtValor.Text
  );
  if DmConsulta.QryCltaPais.IsEmpty then
    ShowMessage('Nenhum País foi localizado');
end;


procedure TFrmConsultaPais.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CmbCampos.Items.Clear; //Limpa se houver itens no combobox.
  for I := 0 to DmConsulta.QryCltaPais.FieldCount - 1 do //Percore os fields do TFDQuery e adiciona ao combobox.
    CmbCampos.Items.AddObject(DmConsulta.QryCltaPais.Fields[I].DisplayLabel, DmConsulta.QryCltaPais.Fields[I]);
  CmbCampos.ItemIndex := 0;
  RgTipo.ItemIndex := 0;
end;


procedure TFrmConsultaPais.FormDestroy(Sender: TObject);
begin
  DmConsulta.QryCltaPais.Close;
end;

end.
