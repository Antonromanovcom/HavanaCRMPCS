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
    Left = 132
    Top = 115
    Width = 183
    Height = 124
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
  end
  object orderTypes_UQ: TUniQuery
  end
  object orderTypes_UDS: TUniDataSource
    DataSet = orderTypes_UQ
    Top = 48
  end
end
