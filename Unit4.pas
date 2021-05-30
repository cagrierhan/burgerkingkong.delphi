﻿unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask;

type
  TKullanicilar = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kullanicilar: TKullanicilar;

implementation

{$R *.dfm}

procedure TKullanicilar.Button1Click(Sender: TObject);
begin
AdoTable1.Insert;
DBEdit1.SetFocus;
end;

procedure TKullanicilar.Button2Click(Sender: TObject);
begin
ADOTable1.Post;
end;

procedure TKullanicilar.Button3Click(Sender: TObject);
begin
ADOTable1.First;
end;

procedure TKullanicilar.Button4Click(Sender: TObject);
begin
if not ADOTable1.Bof then
 ADOTable1.Prior;
end;

end.
