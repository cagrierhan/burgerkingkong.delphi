object Siparisler: TSiparisler
  Left = 0
  Top = 0
  Caption = 'Siparisler'
  ClientHeight = 605
  ClientWidth = 521
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 605
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'burger_name'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menu_name'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icecek_name'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'frice_name'
        Width = 136
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 544
    Width = 490
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=burgerkingkong_db;Data Source=DESKTOP-Q' +
      'I26NP9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 800
    Top = 576
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 768
    Top = 576
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '[siparis]'
    Left = 832
    Top = 576
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 864
    Top = 576
  end
end
