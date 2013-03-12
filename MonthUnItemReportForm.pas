unit MonthUnItemReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBClient, SimpleDS, QRCtrls;

type
  TFormMonthUnItemReport = class(TForm)
    MonthUnItemReport: TQuickRep;
    ItemDataSet: TSimpleDataSet;
    QRBand1: TQRBand;
    TitleLabel: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    ItemDataSetCount: TFloatField;
    ItemDataSetBuildTime: TSQLTimeStampField;
    ItemDataSetName: TWideStringField;
    ItemDataSetDailySerial: TIntegerField;
    ItemDataSetIsReturn: TWideStringField;
    ItemDataSetBuildTimeStr: TStringField;
    ItemDataSetState: TStringField;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ItemDataSetUnit: TWideStringField;
    procedure ItemDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintMonthReport(Date: TDateTime);
  end;

var
  FormMonthUnItemReport: TFormMonthUnItemReport;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormMonthUnItemReport.ItemDataSetCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('Count').AsFloat < 0) then
  begin
    DataSet.FieldByName('State').AsString := '刪';
  end;
  if (DataSet.FieldByName('IsReturn').AsString = '01') then
  begin
    DataSet.FieldByName('State').AsString := '退';
  end;

  DataSet.FieldByName('BuildTimeStr').AsString := FormatDateTime('yyyy/mm/dd', DataSet.FieldByName('BuildTime').AsDateTime);
end;


procedure TFormMonthUnItemReport.PrintMonthReport(Date: TDateTime);
begin
  ItemDataSet.Close;
  ItemDataSet.DataSet.ParamByName('Month').AsString := FormatDateTime('yyyy/mm', Date);
  ItemDataSet.Open;

  TitleLabel.Caption := FormatDateTime('yyyy 年 m 月刪、退品報表', Date);

  if DM.IsPrintPreview then
    MonthUnItemReport.PreviewModal
  else
    MonthUnItemReport.Print;
end;


end.
