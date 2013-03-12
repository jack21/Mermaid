unit BillForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, SimpleDS, QRCtrls, QuickRpt, IniFiles, StrUtils;

type
  TFormBill = class(TForm)
    BillReport: TQuickRep;
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
    OrderDataSetTablesId_1: TIntegerField;
    OrderDataSetRestaurantId: TIntegerField;
    OrderDataSetName: TWideStringField;
    OrderDataSetLocation: TIntegerField;
    OrderDataSource: TDataSource;
    OrderItemDataSource: TDataSource;
    OrderItemDataSet: TSimpleDataSet;
    OrderItemDataSetCode: TWideStringField;
    OrderItemDataSetName: TWideStringField;
    OrderItemDataSetFee: TFloatField;
    OrderItemDataSetCount: TFloatField;
    OrderItemDataSetDiscountStr: TWideStringField;
    OrderItemDataSetDiscount: TWideStringField;
    OrderItemDataSetFoodOrderId: TIntegerField;
    OrderItemDataSetSumFee: TFloatField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    OrderItemDataSetUnit: TWideStringField;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    OrderItemDataSetNameStr: TWideStringField;
    QRBand4: TQRBand;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText18: TQRDBText;
    DiscountQRLabel: TQRLabel;
    DiscountQRDBText: TQRDBText;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText19: TQRDBText;
    OrderItemDataSetUnitSize: TWideStringField;
    OrderItemDataSetOrderItemId: TIntegerField;
    OrderItemDataSetFoodId: TIntegerField;
    OrderItemDataSetCookingNames: TWideStringField;
    OrderItemDataSetFoodId_1: TIntegerField;
    OrderItemDataSetType: TWideStringField;
    OrderItemDataSetLarge: TIntegerField;
    OrderItemDataSetMiddle: TIntegerField;
    OrderItemDataSetSmall: TIntegerField;
    OrderItemDataSetIsDelete: TWideStringField;
    OrderDataSetSumFoodFee: TFloatField;
    OrderItemDataSetNagItem: TStringField;
    QRDBText14: TQRDBText;
    QRLabel12: TQRLabel;
    OrderDataSetSubTotalFee: TFloatField;
    QRLabel18: TQRLabel;
    QRDBText20: TQRDBText;
    OrderItemDataSetIsReturnShow: TWideStringField;
    OrderItemDataSetIsReturn: TWideStringField;
    procedure OrderItemDataSetCalcFields(DataSet: TDataSet);
    procedure BillReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure OrderDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PrintContractOutBill(PrinterPort: String);
    procedure PrintContractOutBill2(PrinterPort: String);
    procedure PrintQRReportBill;
  public
    { Public declarations }
    procedure PreviewBill(FoodOrderId: Integer);
  end;

var
  FormBill: TFormBill;

implementation

uses DataModule, PosUtils;

{$R *.dfm}

{印帳單}
procedure TFormBill.PreviewBill(FoodOrderId: Integer);
var
  Discount: Double;
  ContractOutCode: String;
  PrinterPort: String;
begin
  // 設定 DataSet
  OrderDataSet.Close;
  OrderDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  OrderDataSet.Open;

  OrderItemDataSet.Close;
  OrderItemDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  OrderItemDataSet.Open;

  // 看用哪種方式印
  PrinterPort := DM.GetPrinterPort(DM.GetCheckoutContractOutCode);
  if PrinterPort = '' then
  begin // 古都的列印方式，印到某台印表機
    PrintQRReportBill;
  end
  else
  begin // 囍都的列印方式，印到某個 Port
    PrintContractOutBill2(PrinterPort);
  end;
end;

procedure TFormBill.BillReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//   with BillReport.PrinterSettings do
//      if PrinterIndex <> printer.printerIndex then
//         PrinterIndex := printer.printerIndex;
end;

procedure TFormBill.OrderDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('SumFoodFee').AsFloat := DataSet.FieldByName('FoodFee').AsFloat +
    DataSet.FieldByName('SideDishesFee').AsFloat;

  DataSet.FieldByName('SubTotalFee').AsFloat := DataSet.FieldByName('SumFoodFee').AsFloat +
    DataSet.FieldByName('DrinkFee').AsFloat + DataSet.FieldByName('OtherFee').AsFloat;
end;

procedure TFormBill.OrderItemDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('SumFee').AsFloat := DataSet.FieldByName('Fee').AsFloat * DataSet.FieldByName('Count').AsFloat;

//  if DataSet.FieldByName('UnitSize').AsString = '00' then
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(小)'
//  else if DataSet.FieldByName('UnitSize').AsString = '01' then
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(中)'
//  else if DataSet.FieldByName('UnitSize').AsString = '02' then
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(大)';

  if DataSet.FieldByName('CookingNames').IsNull then
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString
  else
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(' + DataSet.FieldByName('CookingNames').AsString + ')';

  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountStr').AsString := '招待';

  if DataSet.FieldByName('Count').AsInteger < 0 then
    DataSet.FieldByName('NagItem').AsString := '負項';

  if DataSet.FieldByName('IsReturn').AsString = '01' then
    DataSet.FieldByName('IsReturnShow').AsString := '退';
end;

{用 QRReport 印帳單}
procedure TFormBill.PrintQRReportBill;
var
  IniFile: TIniFile;
begin
  if OrderDataSet.FieldByName('Discount').AsInteger = 0 then
  begin
    DiscountQRLabel.Caption := '';
    DiscountQRDBText.DataField := '';
  end
  else
  begin
    DiscountQRLabel.Caption := '折讓';
    DiscountQRDBText.DataField := 'Discount';
  end;

  IniFile := DM.GetConfigIni;
  BillReport.Page.LeftMargin := IniFile.ReadInteger('BillReport', 'Left', 50);
  BillReport.Page.TopMargin := IniFile.ReadInteger('BillReport', 'Top', 10);
  IniFile.Free;

  if DM.IsPrintPreview then
  begin
    BillReport.Preview;
//    BillReport.Prepare;
  end
  else
  begin
//  BillReport.PrinterSettings.PrinterIndex
//    with BillReport.PrinterSettings do
//    begin
//      if PrinterIndex <> printer.printerIndex then
//         PrinterIndex := printer.printerIndex;
//    end;
//    BillReport.PrinterSettings.PrinterIndex := 0;
    BillReport.PrinterSettings.FirstPage := 0;
    BillReport.PrinterSettings.LastPage := 0;
//    BillReport.Prepare;
    BillReport.Print;
  end;
end;

{用出單機列印帳單(古都)}
procedure TFormBill.PrintContractOutBill2(PrinterPort: String);
var
  TotalWidth, HalfTotalWidth, NameWidth, CountWidth, FeeWidth, SumFeeWidth, DiscountWidth, ReturnWidth: Integer;
  p: TPos;
begin
  NameWidth := 20;
  CountWidth := 5;
  FeeWidth := 7;
  SumFeeWidth := 8;
  DiscountWidth := 5;
  ReturnWidth := 3;
  TotalWidth := NameWidth + CountWidth + FeeWidth + SumFeeWidth + DiscountWidth + ReturnWidth; // 48
  HalfTotalWidth := Round(TotalWidth / 2);

  p := TPos.Create;

  try
    P.Initial(PrinterPort);
    p.FontSize(1);
    p.WriteRightPad('桌號:' + OrderDataSet.FieldByName('Name').AsString, HalfTotalWidth);
    p.WriteRightPad('人數:' + OrderDataSet.FieldByName('CustomerCount').AsString, HalfTotalWidth);
    p.WriteLine();
    p.WriteRightPad('帳單號:' + OrderDataSet.FieldByName('DailySerial').AsString, HalfTotalWidth);
    p.WriteRightPad(FormatDateTime('yyyy/mm/dd hh:mm', OrderDataSet.FieldByName('BuildTime').AsDateTime), HalfTotalWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // 菜名             數量   單價    金額
    p.WriteRightPad('菜名', NameWidth);
    p.WriteLeftPad('數量', CountWidth);
    p.WriteLeftPad('單價', FeeWidth);
    p.WriteLeftPad('金額', SumFeeWidth);
    p.WriteLeftPad('招待', DiscountWidth);
    p.WriteLeftPad('退', ReturnWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    OrderItemDataSet.First;
    while Not OrderItemDataSet.Eof do
    begin
      p.WriteRightPad(OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('Fee').AsFloat), FeeWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('SumFee').AsFloat), SumFeeWidth);
      if (OrderItemDataSet.FieldByName('Discount').AsString = '01') then
        p.WriteLeftPad('V', DiscountWidth)
      else
        p.WriteLeftPad('', DiscountWidth);
      if (OrderItemDataSet.FieldByName('IsReturn').AsString = '01') then
        p.WriteLeftPad('V', ReturnWidth)
      else
        p.WriteLeftPad('', ReturnWidth);
      p.WriteLine();
      OrderItemDataSet.Next;
    end;
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //
    p.WriteRightPad('餐食金額:' + OrderDataSet.FieldByName('SumFoodFee').AsString, HalfTotalWidth);
    p.WriteRightPad('酒水金額:' + OrderDataSet.FieldByName('DrinkFee').AsString, HalfTotalWidth);
    p.WriteLine();
    //
    p.WriteRightPad('其他金額:' + OrderDataSet.FieldByName('OtherFee').AsString, HalfTotalWidth);
    p.WriteRightPad('小計金額:' + OrderDataSet.FieldByName('SubTotalFee').AsString, HalfTotalWidth);
    p.WriteLine();
    //                          服務費+    ????
    p.WriteText('服 務 費:' + FloatToStr(OrderDataSet.FieldByName('ServiceFee').AsFloat));
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //
    p.WriteText('應收金額:' + OrderDataSet.FieldByName('TotalFee').AsString);
    p.WriteLine();
    //
    p.WriteRightPad('訂    金:' + OrderDataSet.FieldByName('Deposit').AsString, HalfTotalWidth);
    if OrderDataSet.FieldByName('Discount').AsInteger > 0 then
    begin
      p.WriteRightPad('折    讓:' + OrderDataSet.FieldByName('Discount').AsString, HalfTotalWidth);
    end;
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          合  計=    ????
    p.WriteText('實收金額:' + FloatToStr(OrderDataSet.FieldByName('TotalPay').AsFloat));
    p.WriteLine();
  finally
    p.PaperFeed;
    p.Cut;
    p.Close();
    p.Free;
  end;
end;


{用出單機列印帳單}
procedure TFormBill.PrintContractOutBill(PrinterPort: String);
var
  TotalWidth, NameWidth, CountWidth, FeeWidth, SumFeeWidth: Integer;
  p: TPos;
begin
  NameWidth := 28;
  CountWidth := 5;
  FeeWidth := 7;
  SumFeeWidth := 8;
  TotalWidth := NameWidth + CountWidth + FeeWidth + SumFeeWidth;

  p := TPos.Create;

  try
    P.Initial(PrinterPort);
    P.FontSize(2);
    p.WriteLnCenter('囍都國際宴會餐廳');
    p.FontSize(1);
    p.WriteLnCenter('結帳單');
    p.FontSize(2);
    p.WriteLine('桌號:' + OrderDataSet.FieldByName('Name').AsString);
    p.FontSize(1);
    p.WriteLine('日期:' + FormatDateTime('yyyy/mm/dd hh:mm', OrderDataSet.FieldByName('BuildTime').AsDateTime));
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // 餐品名稱             數量   單價    金額
    p.WriteRightPad('餐品名稱', NameWidth);
    p.WriteLeftPad('數量', CountWidth);
    p.WriteLeftPad('單價', FeeWidth);
    p.WriteLeftPad('金額', SumFeeWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    OrderItemDataSet.First;
    while Not OrderItemDataSet.Eof do
    begin
      p.WriteRightPad(OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('Fee').AsFloat), FeeWidth);
      p.WriteLeftPad(FloatToStr(OrderItemDataSet.FieldByName('SumFee').AsFloat), SumFeeWidth);
      p.WriteLine();
      OrderItemDataSet.Next;
    end;
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          小  計=    ????
    p.WriteLeftPad('小  計=', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(OrderDataSet.FieldByName('SubTotalFee').AsFloat), 10);
    p.WriteLine();
    //                          服務費+    ????
    p.WriteLeftPad('服務費+', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(OrderDataSet.FieldByName('ServiceFee').AsFloat), 10);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          合  計=    ????
    p.WriteLeftPad('合  計=', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(OrderDataSet.FieldByName('TotalPay').AsFloat), 10);
    p.WriteLine();
  finally
    p.PaperFeed;
    p.Cut;
    p.Close();
    p.Free;
  end;
end;

end.
