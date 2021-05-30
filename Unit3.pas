﻿unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,Unit4,Unit5, Data.DB, Data.Win.ADODB;

type
  TForm3 = class(TForm)
    ADPanel1: TPanel;
    Panel3: TPanel;
    Button13: TButton;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image8: TImage;
    Image11: TImage;
    Image7: TImage;
    Image9: TImage;
    Image10: TImage;
    Image12: TImage;
    Button5: TButton;
    User: TButton;
    Spr: TButton;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    ListBox2: TListBox;
    Button17: TButton;
    Label1: TLabel;
    Button18: TButton;
    KKBEdit1: TEdit;
    KKBEdit2: TEdit;
    ADOQuery1: TADOQuery;
    procedure UserClick(Sender: TObject);
    procedure SprClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button10Click(Sender: TObject);
begin
ListBox1.Items.Add('King Kong Boy Soğan Halkası');
ListBox2.Items.Add('18');
KKBEdit1.Text:='King Kong Boy Soğan Halkası';
KKBEdit2.Text:= IntToStr(18);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Frice').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
ListBox1.Items.Add('King Kong Burger');
ListBox2.Items.Add('25');
KKBEdit1.Text:='King Kong Burger';
KKBEdit2.Text:= IntToStr(25);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Burger').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
ListBox1.Items.Add('Kong Menu');
ListBox2.Items.Add('33');
KKBEdit1.Text:='Kong Menu';
KKBEdit2.Text:= IntToStr(33);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Menu').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button13Click(Sender: TObject);
begin
ShowMessage('Siparişiniz alınmıştır.');
ListBox1.Items.Clear;
ListBox2.Items.Clear;
Label1.Caption:='Toplam Tutar';
end;

procedure TForm3.Button14Click(Sender: TObject);
begin
ListBox1.Items.Add('Little Kong Menu ');
ListBox2.Items.Add('22');
KKBEdit1.Text:='Little Kong Menu';
KKBEdit2.Text:= IntToStr(22);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Menu').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button15Click(Sender: TObject);
begin
ListBox1.Items.Add('Manhattan Menu');
ListBox2.Items.Add('44');
KKBEdit1.Text:='Manhattan Menu';
KKBEdit2.Text:= IntToStr(44);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Menu').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button17Click(Sender: TObject);
var i:integer;
toplam:Currency;
begin
toplam :=0;
for i := 0 to ListBox2.Items.Count - 1 do
toplam :=Toplam + StrToFloat(ListBox2.Items[i]);
Label1.Caption:=FloatToStr(Toplam);

end;

procedure TForm3.Button18Click(Sender: TObject);
begin
ListBox1.Items.Clear;
ListBox2.Items.Clear;
Label1.Caption:='Toplam Tutar';
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
ListBox1.Items.Add('Kong Burger');
ListBox2.Items.Add('21');
KKBEdit1.Text:='Kong Burger';
KKBEdit2.Text:= IntToStr(21);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Burger').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
ListBox1.Items.Add('Little Kong Burger');
ListBox2.Items.Add('18');
KKBEdit1.Text:='Little Kong Burger';
KKBEdit2.Text:= IntToStr(18);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Burger').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
ListBox1.Items.Add('Manhattan Burger ');
ListBox2.Items.Add('35');
KKBEdit1.Text:='Manhattan Burger';
KKBEdit2.Text:= IntToStr(35);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Burger').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
ListBox1.Items.Add('Kong Boy İçecek');
ListBox2.Items.Add('12');
KKBEdit1.Text:='Kong Boy İçecek';
KKBEdit2.Text:= IntToStr(12);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Icecek').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
ListBox1.Items.Add('King Kong Burger');
ListBox2.Items.Add('25');
KKBEdit1.Text:='King Kong Burger';
KKBEdit2.Text:= IntToStr(25);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger,)';
ADOQuery1.Parameters.ParamByName('Burger').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
ListBox1.Items.Add('King Kong Boy İçecek');
ListBox2.Items.Add('18');
KKBEdit1.Text:='King Kong Boy İçecek';
KKBEdit2.Text:= IntToStr(18);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Icecek').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
ListBox1.Items.Add('Kong Boy Patates Cipsi');
ListBox2.Items.Add('12');
KKBEdit1.Text:='Kong Boy Patates Cipsi';
KKBEdit2.Text:= IntToStr(12);

ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Frice').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
ListBox1.Items.Add('King Kong Boy Patates Cipsi');
ListBox2.Items.Add('18');
KKBEdit1.Text:='King Kong Boy Patates Cipsi';
KKBEdit2.Text:= IntToStr(18);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Frice').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
ListBox1.Items.Add('Kong Boy Soğan Halkası');
ListBox2.Items.Add('18');
KKBEdit1.Text:='Kong Boy Soğan Halkası';
KKBEdit2.Text:= IntToStr(18);
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [siparis](spr_fiyat,menu_name,frice_name,icecek_name,burger_name) values (:Siparis,:Menu,:Frice,:Icecek,:Burger)';
ADOQuery1.Parameters.ParamByName('Frice').Value:= KKBEdit1.Text;
ADOQuery1.Parameters.ParamByName('Siparis').Value:=KKBEdit2.Text;

KKBEdit1.Clear;
KKBEdit2.Clear;
end;

procedure TForm3.SprClick(Sender: TObject);
begin
Siparisler.Show;
end;

procedure TForm3.UserClick(Sender: TObject);
begin
Kullanicilar.Show;
end;

end.
