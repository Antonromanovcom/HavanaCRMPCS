object StatusesForm: TStatusesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1090#1072#1090#1091#1089#1099
  ClientHeight = 310
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AllStatusesGrid: TDBGridEh
    Left = 8
    Top = 8
    Width = 629
    Height = 169
    DataSource = statusesUDS
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'id'
        Footers = <>
        Width = 61
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Code'
        Footers = <>
        LookupParams.KeyFieldNames = 'Code'
        LookupParams.LookupDataSet = UniTable1
        LookupParams.LookupDisplayFieldName = 'myLookup'
        LookupParams.LookupKeyFieldNames = 'myLookup'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object statusesUDS: TUniDataSource
    DataSet = UniQuery1
    Left = 8
    Top = 232
  end
  object UniQuery1: TUniQuery
    Connection = Form1.UniConnection1
    SQL.Strings = (
      'select * from order_status')
    Left = 8
    Top = 184
  end
  object codesUQ: TUniQuery
    Connection = Form1.UniConnection1
    SQL.Strings = (
      'select * from "dct_ImmutableSalesFunnelStatuses";')
    MasterSource = Form1.UniDataSource1
    Left = 600
    Top = 184
  end
  object codeUDS: TUniDataSource
    DataSet = codesUQ
    Left = 608
    Top = 248
  end
  object UniTable1: TUniTable
    TableName = '"dct_ImmutableSalesFunnelStatuses"'
    Connection = Form1.UniConnection1
    MasterSource = codeUDS
    Left = 560
    Top = 248
    object UniTable1myLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'myLookup'
      LookupDataSet = codesUQ
      LookupKeyFields = 'Status'
      LookupResultField = 'id'
      KeyFields = 'id'
      Size = 128
      Lookup = True
    end
  end
end
