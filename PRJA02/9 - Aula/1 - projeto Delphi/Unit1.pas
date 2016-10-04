unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    btn_Proprietarios: TButton;
    btn_VeiculosMultas: TButton;
    procedure btn_ProprietariosClick(Sender: TObject);
    procedure btn_VeiculosMultasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
   Frm.Proprietarios, Frm.VeiculoMultas.pas;

{$R *.dfm}

procedure TFrmPrincipal.btn_ProprietariosClick(Sender: TObject);
var
  vFrmProprietarios: TFrmProprietarios;
begin
   vFrmProprietarios := TFrmProprietarios.Create(nil);
   try
     vFrmProprietarios.ShowModal;
   finally
     FreeAndNil(vFrmProprietarios);
   end;
end;

procedure TFrmPrincipal.btn_VeiculosMultasClick(Sender: TObject);
var
  vFrmVeiculosMultas: TFrmVeiculoMultas;
begin
   vFrmVeiculosMultas := TFrmVeiculoMultas.Create(nil);
   try
     vFrmVeiculosMultas.ShowModal;
   finally
     FreeAndNil(vFrmVeiculosMultas);
   end;
end;

end.