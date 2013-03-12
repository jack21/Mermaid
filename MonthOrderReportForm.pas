unit MonthOrderReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBClient, SimpleDS, QRCtrls;

type
  TFormMonthOrderReport = class(TForm)
    MonthOrderReport: TQuickRep;
    OrderDataSet: TSimpleDataSet;
    QRBand1: TQRBand;
    TitleQRLabel: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand5: TQRBand;
    PageExpr: TQRExpr;
    SumPageLabel: TQRLabel;
    OrderDataSetBuildTime: TWideStringField;
    OrderDataSetFullFoodFee: TFloatField;
    OrderDataSetFullSideDishesFee: TFloatField;
    OrderDataSetFullDrinkFee: TFloatField;
    OrderDataSetFullOtherFee: TFloatField;
    OrderDataSetServiceFee: TFloatField;
    OrderDataSetCashPay: TFloatField;
    OrderDataSetFreeFee: TFloatField;
    OrderDataSetDiscount: TFloatField;
    OrderDataSetDeposit: TFloatField;
    OrderDataSetDebtPay: TFloatField;
    OrderDataSetCreditCardPay: TFloatField;
    OrderDataSetFullTotalFee: TFloatField;
    OrderDataSetFullTotalPay: TFloatField;
    procedure OrderDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintMonthOrder(Date: TDateTime);
  end;

var
  FormMonthOrderReport: TFormMonthOrderReport;

implementation

uses DataModule;

{$R *.dfm}


procedure TFormMonthOrderReport.OrderDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('FullTotalFee').AsFloat :=
    DataSet.FieldByName('FullFoodFee').AsFloat +
    DataSet.FieldByName('FullSideDishesFee').AsFloat +
    DataSet.FieldByName('FullDrinkFee').AsFloat +
    DataSet.FieldByName('FullOtherFee').AsFloat +
    DataSet.FieldByName('ServiceFee').AsFloat;

  DataSet.FieldByName('FullTotalPay').AsFloat :=
    DataSet.FieldByName('CashPay').AsFloat +
    DataSet.FieldByName('CreditCardPay').AsFloat +
    DataSet.FieldByName('DebtPay').AsFloat +
    DataSet.FieldByName('Discount').AsFloat +
    DataSet.FieldByName('FreeFee').AsFloat +
    DataSet.FieldByName('Deposit').AsFloat;

end;

procedure TFormMonthOrderReport.PrintMonthOrder(Date: TDateTime);
begin
  OrderDataSet.Close;
  OrderDataSet.DataSet.ParamByName('Month').AsString := FormatDateTime('yyyy/mm', Date);
  OrderDataSet.Open;

  TitleQRLabel.Caption := FormatDateTime('yyyy/m 月報表', Date);
  MonthOrderReport.Prepare;
  SumPageLabel.Caption := '頁 / 共' + IntToStr(MonthOrderReport.QRPrinter.PageCount) + '頁';

  if DM.IsPrintPreview then
    MonthOrderReport.PreviewModal
  else
    MonthOrderReport.Print;
end;


end.
