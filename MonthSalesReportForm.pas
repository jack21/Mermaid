unit MonthSalesReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBClient, SimpleDS;

type
  TFormMonthSalesReport = class(TForm)
    MonthSalesReport: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    TitleLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    MonthSalesDataSet: TSimpleDataSet;
    MonthSalesDataSetName: TWideStringField;
    MonthSalesDataSetUnit: TWideStringField;
    MonthSalesDataSetType: TWideStringField;
    MonthSalesDataSetTypeStr: TStringField;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    MonthSalesDataSetTotal: TFloatField;
    procedure MonthSalesDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintMonthReport(Date: TDateTime);
  end;

var
  FormMonthSalesReport: TFormMonthSalesReport;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormMonthSalesReport.MonthSalesDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('TypeStr').AsString := DM.GetFoodTypeName(DataSet.FieldByName('Type').AsString);
end;


procedure TFormMonthSalesReport.PrintMonthReport(Date: TDateTime);
begin
  MonthSalesDataSet.Close;
  MonthSalesDataSet.DataSet.ParamByName('Month').AsString := FormatDateTime('yyyy/mm', Date);
  MonthSalesDataSet.Open;

  TitleLabel.Caption := FormatDateTime('yyyy年m月銷售報表', Date);

  if DM.IsPrintPreview then
    MonthSalesReport.PreviewModal
  else
    MonthSalesReport.Print;
end;

end.
