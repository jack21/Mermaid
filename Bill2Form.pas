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

{�L�b��}
procedure TFormBill.PreviewBill(FoodOrderId: Integer);
var
  Discount: Double;
  ContractOutCode: String;
  PrinterPort: String;
begin
  // �]�w DataSet
  OrderDataSet.Close;
  OrderDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  OrderDataSet.Open;

  OrderItemDataSet.Close;
  OrderItemDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  OrderItemDataSet.Open;

  // �ݥέ��ؤ覡�L
  PrinterPort := DM.GetPrinterPort(DM.GetCheckoutContractOutCode);
  if PrinterPort = '' then
  begin // �j�����C�L�覡�A�L��Y�x�L���
    PrintQRReportBill;
  end
  else
  begin // �������C�L�覡�A�L��Y�� Port
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
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(�p)'
//  else if DataSet.FieldByName('UnitSize').AsString = '01' then
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(��)'
//  else if DataSet.FieldByName('UnitSize').AsString = '02' then
//    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(�j)';

  if DataSet.FieldByName('CookingNames').IsNull then
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString
  else
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(' + DataSet.FieldByName('CookingNames').AsString + ')';

  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountStr').AsString := '�۫�';

  if DataSet.FieldByName('Count').AsInteger < 0 then
    DataSet.FieldByName('NagItem').AsString := '�t��';

  if DataSet.FieldByName('IsReturn').AsString = '01' then
    DataSet.FieldByName('IsReturnShow').AsString := '�h';
end;

{�� QRReport �L�b��}
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
    DiscountQRLabel.Caption := '����';
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

{�ΥX����C�L�b��(�j��)}
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
    p.WriteRightPad('�ู:' + OrderDataSet.FieldByName('Name').AsString, HalfTotalWidth);
    p.WriteRightPad('�H��:' + OrderDataSet.FieldByName('CustomerCount').AsString, HalfTotalWidth);
    p.WriteLine();
    p.WriteRightPad('�b�渹:' + OrderDataSet.FieldByName('DailySerial').AsString, HalfTotalWidth);
    p.WriteRightPad(FormatDateTime('yyyy/mm/dd hh:mm', OrderDataSet.FieldByName('BuildTime').AsDateTime), HalfTotalWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // ��W             �ƶq   ���    ���B
    p.WriteRightPad('��W', NameWidth);
    p.WriteLeftPad('�ƶq', CountWidth);
    p.WriteLeftPad('���', FeeWidth);
    p.WriteLeftPad('���B', SumFeeWidth);
    p.WriteLeftPad('�۫�', DiscountWidth);
    p.WriteLeftPad('�h', ReturnWidth);
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
    p.WriteRightPad('�\�����B:' + OrderDataSet.FieldByName('SumFoodFee').AsString, HalfTotalWidth);
    p.WriteRightPad('�s�����B:' + OrderDataSet.FieldByName('DrinkFee').AsString, HalfTotalWidth);
    p.WriteLine();
    //
    p.WriteRightPad('��L���B:' + OrderDataSet.FieldByName('OtherFee').AsString, HalfTotalWidth);
    p.WriteRightPad('�p�p���B:' + OrderDataSet.FieldByName('SubTotalFee').AsString, HalfTotalWidth);
    p.WriteLine();
    //                          �A�ȶO+    ????
    p.WriteText('�A �� �O:' + FloatToStr(OrderDataSet.FieldByName('ServiceFee').AsFloat));
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //
    p.WriteText('�������B:' + OrderDataSet.FieldByName('TotalFee').AsString);
    p.WriteLine();
    //
    p.WriteRightPad('�q    ��:' + OrderDataSet.FieldByName('Deposit').AsString, HalfTotalWidth);
    if OrderDataSet.FieldByName('Discount').AsInteger > 0 then
    begin
      p.WriteRightPad('��    ��:' + OrderDataSet.FieldByName('Discount').AsString, HalfTotalWidth);
    end;
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          �X  �p=    ????
    p.WriteText('�ꦬ���B:' + FloatToStr(OrderDataSet.FieldByName('TotalPay').AsFloat));
    p.WriteLine();
  finally
    p.PaperFeed;
    p.Cut;
    p.Close();
    p.Free;
  end;
end;


{�ΥX����C�L�b��}
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
    p.WriteLnCenter('������ڮb�|�\�U');
    p.FontSize(1);
    p.WriteLnCenter('���b��');
    p.FontSize(2);
    p.WriteLine('�ู:' + OrderDataSet.FieldByName('Name').AsString);
    p.FontSize(1);
    p.WriteLine('���:' + FormatDateTime('yyyy/mm/dd hh:mm', OrderDataSet.FieldByName('BuildTime').AsDateTime));
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // �\�~�W��             �ƶq   ���    ���B
    p.WriteRightPad('�\�~�W��', NameWidth);
    p.WriteLeftPad('�ƶq', CountWidth);
    p.WriteLeftPad('���', FeeWidth);
    p.WriteLeftPad('���B', SumFeeWidth);
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
    //                          �p  �p=    ????
    p.WriteLeftPad('�p  �p=', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(OrderDataSet.FieldByName('SubTotalFee').AsFloat), 10);
    p.WriteLine();
    //                          �A�ȶO+    ????
    p.WriteLeftPad('�A�ȶO+', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(OrderDataSet.FieldByName('ServiceFee').AsFloat), 10);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          �X  �p=    ????
    p.WriteLeftPad('�X  �p=', TotalWidth - 10);
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
