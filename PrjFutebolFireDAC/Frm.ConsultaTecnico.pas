unit Frm.ConsultaTecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmConsultaTecnico = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RgTipo: TRadioGroup;
    EdtValor: TEdit;
    BtnConsulta: TButton;
    Label2: TLabel;
    GrdConsulta: TDBGrid;
    DsConsultaTecnicos: TDataSource;
    CmbCampos: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaTecnico: TFrmConsultaTecnico;

implementation

{$R *.dfm}

uses Dm.Consulta;

procedure TFrmConsultaTecnico.BtnConsultaClick(Sender: TObject);
begin
  DmConsulta.ConsultarTecnico(
  TField(CmbCampos.Items.Objects[CmbCampos.ItemIndex]).FieldName,
  TTipoConsulta(RgTipo.ItemIndex),
  EdtValor.Text
  );
  if DmConsulta.QryCltaTecnico.IsEmpty then
    ShowMessage('Nenhum Tecnico foi localizado');
end;

procedure TFrmConsultaTecnico.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CmbCampos.Items.Clear; //Limpa se houver itens no combobox.
  for I := 0 to DmConsulta.QryCltaTecnico.FieldCount - 1 do //Percore os fields do TFDQuery e adiciona ao combobox.
    CmbCampos.Items.AddObject(DmConsulta.QryCltaTecnico.Fields[I].DisplayLabel, DmConsulta.QryCltaTecnico.Fields[I]);
  CmbCampos.ItemIndex := 0;
  RgTipo.ItemIndex := 0;
end;

procedure TFrmConsultaTecnico.FormDestroy(Sender: TObject);
begin
  DmConsulta.QryCltaTecnico.Close;
end;

end.
