object Kullanicilar: TKullanicilar
  Left = 0
  Top = 0
  Caption = 'Kullanicilar'
  ClientHeight = 535
  ClientWidth = 787
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 44
    Top = 330
    Width = 62
    Height = 13
    Caption = 'User Name : '
  end
  object Label2: TLabel
    Left = 29
    Top = 357
    Width = 77
    Height = 13
    Caption = 'User Surname : '
  end
  object Label3: TLabel
    Left = 74
    Top = 384
    Width = 32
    Height = 13
    Caption = 'Pass : '
  end
  object Label4: TLabel
    Left = 78
    Top = 411
    Width = 28
    Height = 13
    Caption = 'Mail : '
  end
  object Label5: TLabel
    Left = 77
    Top = 438
    Width = 29
    Height = 13
    Caption = 'TCK : '
  end
  object Label6: TLabel
    Left = 82
    Top = 465
    Width = 24
    Height = 13
    Caption = 'Tel : '
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 657
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 271
    Width = 610
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 322
    Width = 121
    Height = 21
    DataField = 'usr_name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 349
    Width = 121
    Height = 21
    DataField = 'usr_sname'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 376
    Width = 121
    Height = 21
    DataField = 'pass'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 403
    Width = 121
    Height = 21
    DataField = 'usr_mail'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 112
    Top = 430
    Width = 121
    Height = 21
    DataField = 'usr_tck'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 112
    Top = 457
    Width = 121
    Height = 21
    DataField = 'usr_tel'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Button1: TButton
    Left = 29
    Top = 484
    Width = 121
    Height = 37
    Caption = 'Yeni Kay'#305't Ekle'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 156
    Top = 484
    Width = 125
    Height = 37
    Caption = 'De'#287'i'#351'iklikleri Kaydet'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 671
    Top = 24
    Width = 106
    Height = 41
    Caption = #304'lk Kayda D'#246'n'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 671
    Top = 71
    Width = 106
    Height = 41
    Caption = #214'nceki Kay'#305'da D'#246'n'
    TabOrder = 11
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=burgerkingkong_db;Data Source=DESKTOP-Q' +
      'I26NP9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 360
    Top = 312
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '[user]'
    Left = 360
    Top = 360
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 360
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 360
    Top = 472
  end
end
