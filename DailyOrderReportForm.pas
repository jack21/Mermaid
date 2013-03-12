unit DailyOrderReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBClient, SimpleDS;

type
  TFormDailyOrderReport = class(TForm)
    DailyOrderReport: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    TitleQRLabel: TQRLabel;
    OrderDataSet: TSimpleDataSet;
    OrderDataSetBuildTimeStr: TStringField;
    OrderDataSetCheckoutTimeStr: TStringField;
    OrderDataSetDiscount: TFloatField;
    OrderDataSetFoodOrderId: TIntegerField;
    OrderDataSetTablesId: TIntegerField;
    OrderDataSetEmployeeId: TIntegerField;
    OrderDataSetDailySerial: TIntegerField;
    OrderDataSetCustomerCount: TIntegerField;
    OrderDataSetFoodFee: TFloatField;
    OrderDataSetSideDishesFee: TFloatField;
    OrderDataSetDrinkFee: TFloatField;
    OrderDataSetOtherFee: TFloatField;
    OrderDataSetServiceFee: TFloatField;
    OrderDataSetTotalFee: TFloatField;
    OrderDataSetServiceRate: TFloatField;
    OrderDataSetDeposit: TFloatField;
    OrderDataSetCashPay: TFloatField;
    OrderDataSetCreditCardPay: TFloatField;
    OrderDataSetDebtPay: TFloatField;
    OrderDataSetTotalPay: TFloatField;
    OrderDataSetCheckOutTime: TSQLTimeStampField;
    OrderDataSetBuildTime: TSQLTimeStampField;
    OrderDataSetName: TWideStringField;
    OrderDataSetLocation: TIntegerField;
    OrderDataSetEmployeeName: TWideStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
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
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRExpr1: TQRExpr;
    QRDBText15: TQRDBText;
    OrderDataSetFreeFee: TFloatField;
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
    OrderDataSetFullFoodFee: TFloatField;
    OrderDataSetFullDrinkFee: TFloatField;
    OrderDataSetFullSideDishesFee: TFloatField;
    OrderDataSetFullOtherFee: TFloatField;
    OrderDataSetFullTotalFee: TFloatField;
    OrderDataSetFullTotalPay: TFloatField;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr2: TQRExpr;
    QRBand5: TQRBand;
    PageExpr: TQRExpr;
    SumPageLabel: TQRLabel;
    procedure OrderDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintDailyOrder(Date: TDateTime);
    procedure PrintDebtOrder();
  end;

var
  FormDailyOrderReport: TFormDailyOrderReport;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormDailyOrderReport.OrderDataSetCalcFields(DataSet: TDataSet);
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

procedure TFormDailyOrderReport.PrintDailyOrder(Date: TDateTime);
begin
  OrderDataSet.Close;
  OrderDataSet.DataSet.ParamByName('Day').AsString := FormatDateTime('yyyy/mm/dd', Date);
  OrderDataSet.Open;

  TitleQRLabel.Caption := FormatDateTime('yyyy/m/d日報表', Date);
  DailyOrderReport.Prepare;
  SumPageLabel.Caption := '頁 / 共' + IntToStr(DailyOrderReport.QRPrinter.PageCount) + '頁';

  if DM.IsPrintPreview then
    DailyOrderReport.PreviewModal
  else
    DailyOrderReport.Print;
end;

procedure TFormDailyOrderReport.PrintDebtOrder();
begin
  OrderDataSet.Close;
  OrderDataSet.Open;

  TitleQRLabel.Caption := '簽單報表';
  DailyOrderReport.Prepare;
  SumPageLabel.Caption := '頁 / 共' + IntToStr(DailyOrderReport.QRPrinter.PageCount) + '頁';

  if DM.IsPrintPreview then
    DailyOrderReport.PreviewModal
  else
    DailyOrderReport.Print;
end;

end.
