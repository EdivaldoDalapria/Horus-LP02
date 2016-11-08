unit Frm.ConsultaTatica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsultaTatica = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CmbCampos: TComboBox;
    RgTipo: TRadioGroup;
    EdtValor: TEdit;
    BtnConsulta: TButton;
    GrdConsulta: TDBGrid;
    DsConsultaTaticas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaTatica: TFrmConsultaTatica;

implementation

{$R *.dfm}

uses Dm.Consulta;

procedure TFrmConsultaTatica.BtnConsultaClick(Sender: TObject);
begin
  DmConsulta.ConsultarTatica(
  TField(CmbCampos.Items.Objects[CmbCampos.ItemIndex]).FieldName,
  TTipoConsulta(RgTipo.ItemIndex),
  EdtValor.Text
  );
  if DmConsulta.QryCltaTatica.IsEmpty then
    ShowMessage('Nenhuma tática foi localizada');
end;


procedure TFrmConsultaTatica.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CmbCampos.Items.Clear; //Limpa se houver itens no combobox.
  for I := 0 to DmConsulta.QryCltaTatica.FieldCount - 1 do //Percore os fields do TFDQuery e adiciona ao combobox.
    CmbCampos.Items.AddObject(DmConsulta.QryCltaTatica.Fields[I].DisplayLabel, DmConsulta.QryCltaTatica.Fields[I]);
  CmbCampos.ItemIndex := 0;
  RgTipo.ItemIndex := 0;
end;


procedure TFrmConsultaTatica.FormDestroy(Sender: TObject);
begin
  DmConsulta.QryCltaTatica.Close;
end;

end.
