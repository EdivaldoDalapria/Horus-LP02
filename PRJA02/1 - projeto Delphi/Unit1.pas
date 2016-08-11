unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ds1: TClientDataSet;
    ds2: TDataSource;
    pnl2: TPanel;
    grp2: TGroupBox;
    dbnvgr1: TDBNavigator;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    grp3: TGroupBox;
    grp4: TGroupBox;
    grp5: TGroupBox;
    pnl1: TPanel;
    grp6: TGroupBox;
    lbl2: TLabel;
    edtValorDoFiltro: TEdit;
    btnAdicionarFiltro: TButton;
    btnRemoverFiltro: TButton;
    grp7: TGroupBox;
    tdbNavigator: TDBNavigator;
    tdbGrid: TDBGrid;
    btnLimparDados: TButton;
    btnIndexarPorID: TButton;
    btnIndexarPorNome: TButton;
    grp8: TGroupBox;
    grpLocate: TGroupBox;
    grp10: TGroupBox;
    edtPercorrer: TEdit;
    edtLocate: TEdit;
    btnPercorrer: TButton;
    btnLocate: TButton;
    btnFindKey: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtTotaldosProdutosAgregados: TEdit;
    lbl6: TLabel;
    edtFindKey: TEdit;
    intgrfldds1Id: TIntegerField;
    ds1Nome: TStringField;
    ds1Valor: TCurrencyField;
    ds1Quantidade: TFloatField;
    ds1Total: TCurrencyField;
    ds1ProdutosTotal: TAggregateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.