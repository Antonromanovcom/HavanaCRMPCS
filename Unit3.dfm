object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1080#1087#1099' '#1047#1072#1082#1072#1079#1086#1074
  ClientHeight = 465
  ClientWidth = 541
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
    Width = 531
    Height = 406
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
    OnDblClick = TreeView1DblClick
  end
  object addOrderTypeButton: TButton
    Left = 4
    Top = 415
    Width = 157
    Height = 42
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Enabled = False
    TabOrder = 1
  end
  object deleteOrderTypeButton: TButton
    Left = 167
    Top = 415
    Width = 178
    Height = 42
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    TabOrder = 2
  end
  object findOrderTypeButton: TButton
    Left = 351
    Top = 415
    Width = 184
    Height = 42
    Caption = #1053#1072#1081#1090#1080
    Enabled = False
    TabOrder = 3
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
