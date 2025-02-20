﻿unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    EditAdS: TEdit;
    EditKAdi: TEdit;
    EditMail: TEdit;
    EditTCK: TEdit;
    EditTel: TEdit;
    EditPass: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Text:='insert into [user](usr_name,usr_sname,usr_mail,usr_tck,usr_tel,pass) values (:username,:userRname,:usermail,:usertc,:usertel,:userpass)';
ADOQuery1.Parameters.ParamByName('username').Value:= EditKAdi.Text;
ADOQuery1.Parameters.ParamByName('userRname').Value:= EditAdS.Text;
ADOQuery1.Parameters.ParamByName('usermail').Value:= EditMail.Text;
ADOQuery1.Parameters.ParamByName('usertc').Value:= EditTCK.Text;
ADOQuery1.Parameters.ParamByName('usertel').Value:= EditTel.Text;
ADOQuery1.Parameters.ParamByName('userpass').Value:= EditPass.Text;
ShowMessage('Kayıt Başarıyla Eklendi!!');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
