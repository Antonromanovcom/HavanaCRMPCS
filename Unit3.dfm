object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 463
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 4
    Top = 3
    Width = 521
    Height = 406
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
  end
  object orderTypes_UQ: TUniQuery
    Left = 24
    Top = 424
  end
  object orderTypes_UDS: TUniDataSource
    DataSet = orderTypes_UQ
    Top = 424
  end
  object orderSubTypes_UQ: TUniQuery
    Connection = Form1.UniConnection1
    SQL.Strings = (
      'SELECT * FROM subtype s WHERE s.parent_type_id = 13;')
    Left = 64
    Top = 424
  end
  object orderPlans_UQ: TUniQuery
    Connection = Form1.UniConnection1
    Left = 96
    Top = 424
  end
end
