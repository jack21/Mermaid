unit ReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DB, DBClient, SimpleDS, ExtCtrls;

type
  TFormReport = class(TForm)
    DayOrderCalendar: TMonthCalendar;
    DayGrid: TDBGrid;
    OrderGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CashLabel: TLabel;
    DebtLabel: TLabel;
    CreditCardLabel: TLabel;
    PrintOrderButton: TButton;
    DaySerialEdit: TEdit;
    SearchButton: TButton;
    OrderDataSet: TSimpleDataSet;
    OrderDataSource: TDataSource;
    OrderDataSetBuildTimeStr: TStringField;
    OrderDataSetCheckoutTimeStr: TStringField;
    OrderDataSetDiscount: TFloatField;
    OrderItemDataSource: TDataSource;
    OrderItemDataSet: TSimpleDataSet;
    OrderDataSetFoodOrderId: TIntegerField;
    OrderItemDataSetCode: TWideStringField;
    OrderItemDataSetName: TWideStringField;
    OrderItemDataSetFee: TFloatField;
    OrderItemDataSetCount: TFloatField;
    OrderItemDataSetDiscount: TWideStringField;
    OrderItemDataSetFoodOrderId: TIntegerField;
    OrderItemDataSetSumFee: TFloatField;
    OrderItemDataSetDiscountStr: TWideStringField;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PrintReportButton: TButton;
    DaySalesCalendar: TMonthCalendar;
    OrderItemDataSetUnitSizeShow: TStringField;
    OrderItemDataSetUnitSize: TWideStringField;
    Top1Panel: TPanel;
    MiddlePanel: TPanel;
    BottomPanel: TPanel;
    Splitter1: TSplitter;
    OrderDataSetEmployeeName: TWideStringField;
    ExitButton: TButton;
    TabSheet3: TTabSheet;
    MonthSalesCalendar: TMonthCalendar;
    StringGrid01: TStringGrid;
    StringGrid02: TStringGrid;
    StringGrid03: TStringGrid;
    StringGrid04: TStringGrid;
    StringGrid08: TStringGrid;
    StringGrid07: TStringGrid;
    StringGrid06: TStringGrid;
    StringGrid05: TStringGrid;
    StringGrid12: TStringGrid;
    StringGrid11: TStringGrid;
    StringGrid10: TStringGrid;
    StringGrid09: TStringGrid;
    StringGrid90: TStringGrid;
    MonthSalesDataSet: TSimpleDataSet;
    MonthSalesDataSetName: TWideStringField;
    MonthSalesDataSetTotal: TFloatField;
    MonthSalesDataSetUnit: TWideStringField;
    MonthSalesDataSetType: TWideStringField;
    MonthSalesReportButton: TButton;
    DayGrid01: TStringGrid;
    DayGrid02: TStringGrid;
    DayGrid03: TStringGrid;
    DayGrid04: TStringGrid;
    DayGrid08: TStringGrid;
    DayGrid07: TStringGrid;
    DayGrid06: TStringGrid;
    DayGrid05: TStringGrid;
    DayGrid09: TStringGrid;
    DayGrid10: TStringGrid;
    DayGrid11: TStringGrid;
    DayGrid12: TStringGrid;
    DayGrid90: TStringGrid;
    DaySalesDataSet: TSimpleDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DailyOrderButton: TButton;
    DayGrid13: TStringGrid;
    DayGrid14: TStringGrid;
    DayGrid70: TStringGrid;
    DayGrid80: TStringGrid;
    StringGrid13: TStringGrid;
    StringGrid14: TStringGrid;
    StringGrid70: TStringGrid;
    StringGrid80: TStringGrid;
    ClockLabel: TLabel;
    ClockTimer: TTimer;
    DayGrid60: TStringGrid;
    StringGrid60: TStringGrid;
    DaySalesDataSetTotal: TFloatField;
    OrderDataSetFreeFee: TFloatField;
    OrderDataSetFullFoodFee: TFloatField;
    OrderDataSetFullDrinkFee: TFloatField;
    OrderDataSetFullSideDishesFee: TFloatField;
    OrderDataSetFullOtherFee: TFloatField;
    OrderDataSetFullTotalFee: TFloatField;
    OrderDataSetFullTotalPay: TFloatField;
    OrderItemDataSetIsReturn: TWideStringField;
    OrderItemDataSetIsReturnShow: TWideStringField;
    TabSheet4: TTabSheet;
    MonthOrderCalendar: TMonthCalendar;
    MonthOrderReportBtn: TButton;
    TabSheet5: TTabSheet;
    MonthUnItemCalendar: TMonthCalendar;
    UnItemReportBtn: TButton;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Splitter2: TSplitter;
    Panel3: TPanel;
    PrintDebtOrderButton: TButton;
    DebtOrderButton: TButton;
    DebtOrderDataSet: TSimpleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    WideStringField4: TWideStringField;
    IntegerField6: TIntegerField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    DebtOrderDataSource: TDataSource;
    DebtOrderItemDataSource: TDataSource;
    DebtOrderItemDataSet: TSimpleDataSet;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField7: TIntegerField;
    FloatField23: TFloatField;
    StringField3: TStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    DeleteButton: TButton;
    DebtOrderDataSetVisible: TWideStringField;
    procedure DayOrderCalendarClick(Sender: TObject);
    procedure OrderDataSetCalcFields(DataSet: TDataSet);
    procedure OrderItemDataSetCalcFields(DataSet: TDataSet);
    procedure SearchButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrintOrderButtonClick(Sender: TObject);
    procedure PrintReportButtonClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MonthSalesCalendarClick(Sender: TObject);
    procedure StringGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure MonthSalesReportButtonClick(Sender: TObject);
    procedure DaySalesCalendarClick(Sender: TObject);
    procedure DailyOrderButtonClick(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
    procedure MonthOrderReportBtnClick(Sender: TObject);
    procedure UnItemReportBtnClick(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure DebtOrderButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowDayOrder(Date: TDateTime);
    procedure ShowMonthSales(Date: TDateTime);
    procedure ShowDaySales(Date: TDateTime);
    procedure AddRank(Grid: TStringGrid; FirstCell: String; SecondCell: String);
    Function GetMonthGrid(FoodType: String): TStringGrid;
    Function GetDayGrid(FoodType: String): TStringGrid;
    procedure InitCell(Grid: TStringGrid);
  public
    { Public declarations }
  end;

var
  FormReport: TFormReport;

implementation

uses DataModule, BillForm, DailyReportForm, MonthSalesReportForm,
  DailyOrderReportForm, DailyFoodItemForm, MonthOrderReportForm,
  MonthUnItemReportForm, DelDebtConfirmForm;

{$R *.dfm}

procedure TFormReport.FormShow(Sender: TObject);
begin
  DayOrderCalendar.Date := Now;
  DaySalesCalendar.Date := Now;
  MonthSalesCalendar.Date := Now;
  MonthOrderCalendar.Date := Now;
  MonthUnItemCalendar.Date := Now;
  ShowDayOrder(DayOrderCalendar.Date);
  ShowDaySales(DaySalesCalendar.Date);

  PageControl1.ActivePageIndex := 0;
  // 月租報表要有權限才能看
  if (DM.LoginQuery.FieldByName('MonthReport').AsString <> '01') then
  begin
    TabSheet3.TabVisible := false;
    TabSheet4.TabVisible := false;
    TabSheet5.TabVisible := false;
  end
  else
  begin
    TabSheet3.TabVisible := true;
    TabSheet4.TabVisible := true;
    TabSheet5.TabVisible := true;
    ShowMonthSales(MonthSalesCalendar.Date);
  end;

  PageControl1.ActivePageIndex := 0;
end;

procedure TFormReport.ClockTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '時間:' + TimeToStr(now);
end;

procedure TFormReport.DebtOrderButtonClick(Sender: TObject);
begin
  FormDailyOrderReport.OrderDataSet.DataSet.CommandText := DebtOrderDataSet.DataSet.CommandText;
  FormDailyOrderReport.PrintDebtOrder()
end;

procedure TFormReport.DailyOrderButtonClick(Sender: TObject);
begin
  FormDailyOrderReport.OrderDataSet.DataSet.CommandText := OrderDataSet.DataSet.CommandText;
  FormDailyOrderReport.PrintDailyOrder(DayOrderCalendar.Date);
end;

procedure TFormReport.DayOrderCalendarClick(Sender: TObject);
begin
  ShowDayOrder(DayOrderCalendar.Date);
end;

procedure TFormReport.DaySalesCalendarClick(Sender: TObject);
begin
  ShowDaySales(DaySalesCalendar.Date);
end;

procedure TFormReport.DeleteButtonClick(Sender: TObject);
begin
  if (DebtOrderDataSet.FieldByName('Visible').AsString = '01') then
  begin
    FormDelDebtConfirm.HintLabel.Caption := '只有刪除過的訂單才可使用此功能刪除';
    FormDelDebtConfirm.ShowModal;
  end
  else
  begin
    FormDelDebtConfirm.HintLabel.Caption := '確定刪除嗎？';
    if FormDelDebtConfirm.ShowModal <> mrOK then exit;
    DM.GuduConnection.ExecuteDirect('UPDATE FoodOrder SET DebtPay = 0 WHERE FoodOrderId = ' + IntToStr(DebtOrderDataSet.FieldByName('FoodOrderId').AsInteger));
    DebtOrderDataSet.Refresh;
  end;
end;

{顯示日銷售報表}
procedure TFormReport.ShowDaySales(Date: TDateTime);
var
  FoodType: String;
  I: Integer;
  Grid: TStringGrid;
begin
  DaySalesDataSet.Close;
  DaySalesDataSet.DataSet.ParamByName('Day').AsString := FormatDateTime('yyyy/mm/dd', Date);
  DaySalesDataSet.Open;

  for I := 0 to 100 - 1 do
  begin
    if I < 10 then
      FoodType := '0' + IntToStr(I)
    else
      FoodType := IntToStr(I);

    Grid := GetDayGrid(FoodType);
    if Grid = nil then continue;

    InitCell(Grid);
    AddRank(Grid, DM.GetFoodTypeName(FoodType), '數量');
  end;

  with DaySalesDataSet do
  begin
    while not Eof do
    begin
      AddRank(GetDayGrid(FieldByName('Type').AsString), FieldByName('Name').AsString, FieldByName('Total').AsString);
      Next;
    end;
  end;
end;

{顯示日記帳}
procedure TFormReport.ShowDayOrder(Date: TDateTime);
var
  CashTotal: Integer;
  DebtTotal: Integer;
  CreditCardTotal: Integer;
begin
  OrderItemDataSet.Close;

  OrderDataSet.Close;
  OrderDataSet.DataSet.ParamByName('Day').AsString := FormatDateTime('yyyy/mm/dd', Date);
  OrderDataSet.Open;

  OrderDataSet.First;
  CashTotal := 0;
  DebtTotal := 0;
  CreditCardTotal := 0;
  while not OrderDataSet.Eof do
  begin
    CashTotal := CashTotal + OrderDataSet.FieldByName('CashPay').AsInteger;
    DebtTotal := DebtTotal + OrderDataSet.FieldByName('DebtPay').AsInteger;
    CreditCardTotal := CreditCardTotal + OrderDataSet.FieldByName('CreditCardPay').AsInteger;

    OrderDataSet.Next;
  end;
  OrderDataSet.First;
  CashLabel.Caption := IntToStr(CashTotal);
  DebtLabel.Caption := IntToStr(DebtTotal);
  CreditCardLabel.Caption := IntToStr(CreditCardTotal);

  OrderItemDataSet.Open;
end;

{顯示月銷售報表}
procedure TFormReport.ShowMonthSales(Date: TDateTime);
var
  FoodType: String;
  I: Integer;
  Grid: TStringGrid;
begin
  MonthSalesDataSet.Close;
  MonthSalesDataSet.DataSet.ParamByName('Month').AsString := FormatDateTime('yyyy/mm', Date);
  MonthSalesDataSet.Open;

  for I := 0 to 100 - 1 do
  begin
    if I < 10 then
      FoodType := '0' + IntToStr(I)
    else
      FoodType := IntToStr(I);

    Grid := GetMonthGrid(FoodType);
    if Grid = nil then continue;

    InitCell(Grid);
    AddRank(Grid, DM.GetFoodTypeName(FoodType), '數量');
  end;

  with MonthSalesDataSet do
  begin
    while not Eof do
    begin
      AddRank(GetMonthGrid(FieldByName('Type').AsString), FieldByName('Name').AsString, FieldByName('Total').AsString);
      Next;
    end;
  end;
end;

procedure TFormReport.StringGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
//  CanSelect := false;
end;


Function TFormReport.GetDayGrid(FoodType: String): TStringGrid;
begin
  if FoodType = '01' then
    result := DayGrid01
  else if FoodType = '02' then
    result := DayGrid02
  else if FoodType = '03' then
    result := DayGrid03
  else if FoodType = '04' then
    result := DayGrid04
  else if FoodType = '05' then
    result := DayGrid05
  else if FoodType = '06' then
    result := DayGrid06
  else if FoodType = '07' then
    result := DayGrid07
  else if FoodType = '08' then
    result := DayGrid08
  else if FoodType = '09' then
    result := DayGrid09
  else if FoodType = '10' then
    result := DayGrid10
  else if FoodType = '11' then
    result := DayGrid11
  else if FoodType = '12' then
    result := DayGrid12
  else if FoodType = '13' then
    result := DayGrid13
  else if FoodType = '14' then
    result := DayGrid14
  else if FoodType = '60' then
    result := DayGrid60
  else if FoodType = '70' then
    result := DayGrid70
  else if FoodType = '80' then
    result := DayGrid80
  else if FoodType = '90' then
    result := DayGrid90
  else
    result := nil;
end;


Function TFormReport.GetMonthGrid(FoodType: String): TStringGrid;
begin
  if FoodType = '01' then
    result := StringGrid01
  else if FoodType = '02' then
    result := StringGrid02
  else if FoodType = '03' then
    result := StringGrid03
  else if FoodType = '04' then
    result := StringGrid04
  else if FoodType = '05' then
    result := StringGrid05
  else if FoodType = '06' then
    result := StringGrid06
  else if FoodType = '07' then
    result := StringGrid07
  else if FoodType = '08' then
    result := StringGrid08
  else if FoodType = '09' then
    result := StringGrid09
  else if FoodType = '10' then
    result := StringGrid10
  else if FoodType = '11' then
    result := StringGrid11
  else if FoodType = '12' then
    result := StringGrid12
  else if FoodType = '13' then
    result := StringGrid13
  else if FoodType = '14' then
    result := StringGrid14
  else if FoodType = '60' then
    result := StringGrid60
  else if FoodType = '70' then
    result := StringGrid70
  else if FoodType = '80' then
    result := StringGrid80
  else if FoodType = '90' then
    result := StringGrid90
  else
    result := nil;
end;

procedure TFormReport.InitCell(Grid: TStringGrid);
var
  I: Integer;
  J: Integer;
begin
  Grid.DefaultRowHeight := 24;

  Grid.ColWidths[0] := 30;
  Grid.ColWidths[1] := 140;
  Grid.ColWidths[2] := 48;

  for I := 0 to Grid.RowCount - 1 do
  begin
    for J := 0 to Grid.ColCount - 1 do
    begin
      Grid.Cells[J, I] := '';
    end;
  end;

  Grid.RowCount := 2;
end;

procedure TFormReport.MonthOrderReportBtnClick(Sender: TObject);
begin
  FormMonthOrderReport.PrintMonthOrder(MonthOrderCalendar.Date);
end;

procedure TFormReport.MonthSalesCalendarClick(Sender: TObject);
begin
  ShowMonthSales(MonthSalesCalendar.Date);
end;

procedure TFormReport.MonthSalesReportButtonClick(Sender: TObject);
begin
  FormMonthSalesReport.PrintMonthReport(MonthSalesCalendar.Date);
end;

procedure TFormReport.AddRank(Grid: TStringGrid; FirstCell: String; SecondCell: String);
var
  I: Integer;
begin
  for I := 0 to 100 do
  begin
    if Grid.RowCount <= I then
      Grid.RowCount := Grid.RowCount + 1;

    if Grid.Cells[0, I] = '' then
    begin
      if I = 0 then
        Grid.Cells[0, I] := 'No'
      else
        Grid.Cells[0, I] := IntToStr(I);

      Grid.Cells[1, I] := FirstCell;
      Grid.Cells[2, I] := SecondCell;
      exit;
    end;
  end;
end;

procedure TFormReport.TabSheet1Show(Sender: TObject);
begin
  ShowDayOrder(Now);
end;

procedure TFormReport.TabSheet6Show(Sender: TObject);
begin
  DebtOrderDataSet.Close;
  DebtOrderDataSet.Open;
  DebtOrderItemDataSet.Close;
  DebtOrderItemDataSet.Open;
end;

procedure TFormReport.UnItemReportBtnClick(Sender: TObject);
begin
  FormMonthUnItemReport.PrintMonthReport(MonthUnItemCalendar.Date);
end;

procedure TFormReport.OrderDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('BuildTimeStr').AsString := FormatDateTime('hh:nn', DataSet.FieldByName('BuildTime').AsDateTime);

  if not DataSet.FieldByName('CheckoutTime').IsNull then
  begin
    DataSet.FieldByName('CheckoutTimeStr').AsString := FormatDateTime('hh:nn', DataSet.FieldByName('CheckoutTime').AsDateTime);
  end;


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

procedure TFormReport.OrderItemDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('SumFee').AsInteger := DataSet.FieldByName('Fee').AsInteger * DataSet.FieldByName('Count').AsInteger;

  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountStr').AsString := 'V';

  if DataSet.FieldByName('IsReturn').AsString = '01' then
    DataSet.FieldByName('IsReturnShow').AsString := 'V';

  if DataSet.FieldByName('UnitSize').AsString = '00' then
    DataSet.FieldByName('UnitSizeShow').AsString := '小'
  else if DataSet.FieldByName('UnitSize').AsString = '01' then
    DataSet.FieldByName('UnitSizeShow').AsString := '中'
  else if DataSet.FieldByName('UnitSize').AsString = '02' then
    DataSet.FieldByName('UnitSizeShow').AsString := '大';

end;

procedure TFormReport.PrintOrderButtonClick(Sender: TObject);
begin
  FormBill.PreviewBill(OrderDataSet.FieldByName('FoodOrderId').AsInteger);
end;

procedure TFormReport.PrintReportButtonClick(Sender: TObject);
begin
  // 跳視窗讓用戶選
  if not (FormDailyFoodItem.ShowModal = mrOK) then exit;

  FormDailyReport.PrintDailyReport(DaySalesCalendar.Date, FormDailyFoodItem.FoodTypeList);
end;

procedure TFormReport.SearchButtonClick(Sender: TObject);
begin
  OrderDataSet.Locate('DailySerial', DaySerialEdit.Text, []);
end;

end.
