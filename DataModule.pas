unit DataModule;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, DB, SqlExpr, Provider, FMTBcd, StrUtils,
  DBClient, SimpleDS, IniFiles, Math, ImgList, Controls, MIDASLIB, Graphics, Variants;

type
  TDM = class(TDataModule)
    GuduConnection: TSQLConnection;
    CurrentOrderSQLDataSet: TSQLDataSet;
    OrderItemDataSource: TDataSource;
    FoodOrderDataSource: TDataSource;
    DaySerialQuery: TSQLQuery;
    FoodOrderSimpleDataSet: TSimpleDataSet;
    CurrentOrderSimpleDataSet: TSimpleDataSet;
    FoodFeeQuery: TSQLQuery;
    FoodOrderDataSet: TSimpleDataSet;
    DrinkFeeQuery: TSQLQuery;
    CheckoutQuery: TSQLQuery;
    LoginQuery: TSQLQuery;
    SideDishesFeeQuery: TSQLQuery;
    OtherFeeQuery: TSQLQuery;
    ImageList: TImageList;
    FoodOrderDataSetFoodOrderId: TIntegerField;
    FoodOrderDataSetTablesId: TIntegerField;
    FoodOrderDataSetEmployeeId: TIntegerField;
    FoodOrderDataSetDailySerial: TIntegerField;
    FoodOrderDataSetCustomerCount: TIntegerField;
    FoodOrderDataSetFoodFee: TFloatField;
    FoodOrderDataSetSideDishesFee: TFloatField;
    FoodOrderDataSetDrinkFee: TFloatField;
    FoodOrderDataSetOtherFee: TFloatField;
    FoodOrderDataSetServiceFee: TFloatField;
    FoodOrderDataSetTotalFee: TFloatField;
    FoodOrderDataSetServiceRate: TFloatField;
    FoodOrderDataSetDeposit: TFloatField;
    FoodOrderDataSetDiscount: TFloatField;
    FoodOrderDataSetCashPay: TFloatField;
    FoodOrderDataSetCreditCardPay: TFloatField;
    FoodOrderDataSetDebtPay: TFloatField;
    FoodOrderDataSetTotalPay: TFloatField;
    FoodOrderDataSetCheckOutTime: TSQLTimeStampField;
    FoodOrderDataSetBuildTime: TSQLTimeStampField;
    CurrentOrderSQLDataSetTablesId: TIntegerField;
    CurrentOrderSQLDataSetRestaurantId: TIntegerField;
    CurrentOrderSQLDataSetName: TWideStringField;
    CurrentOrderSQLDataSetLocation: TIntegerField;
    CurrentOrderSQLDataSetFoodOrderId: TIntegerField;
    CurrentOrderSQLDataSetTablesId_1: TIntegerField;
    CurrentOrderSQLDataSetEmployeeId: TIntegerField;
    CurrentOrderSQLDataSetDailySerial: TIntegerField;
    CurrentOrderSQLDataSetCustomerCount: TIntegerField;
    CurrentOrderSQLDataSetCheckOutTime: TSQLTimeStampField;
    CurrentOrderSQLDataSetBuildTime: TSQLTimeStampField;
    FoodOrderDataSetRealFee: TFloatField;
    TableDataSet: TSimpleDataSet;
    TableDataSetTablesId: TIntegerField;
    TableDataSetRestaurantId: TIntegerField;
    TableDataSetName: TWideStringField;
    TableDataSetLocation: TIntegerField;
    FoodOrderDataSetTableName: TStringField;
    FreeFeeQuery: TSQLQuery;
    FoodOrderDataSetFreeFee: TFloatField;
    CurrentOrderSQLDataSetFoodFee: TFloatField;
    CurrentOrderSQLDataSetSideDishesFee: TFloatField;
    CurrentOrderSQLDataSetDrinkFee: TFloatField;
    CurrentOrderSQLDataSetOtherFee: TFloatField;
    CurrentOrderSQLDataSetServiceFee: TFloatField;
    CurrentOrderSQLDataSetTotalFee: TFloatField;
    CurrentOrderSQLDataSetFreeFee: TFloatField;
    CurrentOrderSQLDataSetServiceRate: TFloatField;
    CurrentOrderSQLDataSetDeposit: TFloatField;
    CurrentOrderSQLDataSetDiscount: TFloatField;
    CurrentOrderSQLDataSetCashPay: TFloatField;
    CurrentOrderSQLDataSetCreditCardPay: TFloatField;
    CurrentOrderSQLDataSetDebtPay: TFloatField;
    CurrentOrderSQLDataSetTotalPay: TFloatField;
    CurrentOrderSQLDataSetRealFee: TFloatField;
    FullOtherFeeQuery: TSQLQuery;
    FullSideDishesFeeQuery: TSQLQuery;
    FullDrinkFeeQuery: TSQLQuery;
    FullFoodFeeQuery: TSQLQuery;
    FoodOrderDataSetFullFoodFee: TFloatField;
    FoodOrderDataSetFullDrinkFee: TFloatField;
    FoodOrderDataSetFullSideDishesFee: TFloatField;
    FoodOrderDataSetFullOtherFee: TFloatField;
    OrderItemDataSet: TSimpleDataSet;
    OrderItemDataSetOrderItemId: TIntegerField;
    OrderItemDataSetFoodId: TIntegerField;
    OrderItemDataSetFoodOrderId: TIntegerField;
    OrderItemDataSetUnitSize: TWideStringField;
    OrderItemDataSetDiscount: TWideStringField;
    OrderItemDataSetCount: TFloatField;
    OrderItemDataSetFee: TFloatField;
    OrderItemDataSetCookingNames: TWideStringField;
    OrderItemDataSetIsReturn: TWideStringField;
    OrderItemDataSetName: TWideStringField;
    OrderItemDataSetType: TWideStringField;
    OrderItemDataSetCode: TWideStringField;
    OrderItemDataSetUnit: TWideStringField;
    OrderItemDataSetLarge: TIntegerField;
    OrderItemDataSetMiddle: TIntegerField;
    OrderItemDataSetSmall: TIntegerField;
    OrderItemDataSetIsDelete: TWideStringField;
    OrderItemDataSetUnitSizeShow: TWideStringField;
    OrderItemDataSetDiscountShow: TWideStringField;
    OrderItemDataSetIsReturnShow: TWideStringField;
    PrinterDS: TDataSource;
    PrinterDataSet: TSimpleDataSet;
    PrinterDataSetPrinterId: TIntegerField;
    PrinterDataSetPrinterName: TWideStringField;
    PrinterDataSetNote: TWideStringField;
    PrinterDataSetIsDelete: TWideStringField;
    OrderItemDataSetIsContractOUt: TWideStringField;
    ContractOutDataSet: TSimpleDataSet;
    ContractOutDataSetContractOutId: TIntegerField;
    ContractOutDataSetContractOutCode: TWideStringField;
    ContractOutDataSetPrinterId: TIntegerField;
    ContractOutDataSetNote: TWideStringField;
    ItemCookingDataSet: TSimpleDataSet;
    CookingDataSet: TSimpleDataSet;
    ItemCookingDataSetItemCookingId: TIntegerField;
    ItemCookingDataSetOrderItemId: TIntegerField;
    ItemCookingDataSetCookingId: TIntegerField;
    ItemCookingDataSetCookingName: TWideStringField;
    ContractOutDataSetPrinterName: TStringField;
    PrinterDataSetPort: TWideStringField;
    ContractOutDataSetPort: TStringField;
    OrderItemDataSetSumFee: TFloatField;
    OrderItemDataSetNameStr: TStringField;
    GlobalPropDataSet: TSimpleDataSet;
    GlobalPropDataSetGlobalPropId: TIntegerField;
    GlobalPropDataSetPropName: TWideStringField;
    GlobalPropDataSetPropValue: TWideStringField;
    FoodOrderDataSetVisible: TWideStringField;
    FoodOrderIdQuery: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure OrderItemClientDataSetCalcFields(DataSet: TDataSet);
    procedure CurrentOrderSQLDataSetCalcFields(DataSet: TDataSet);
    procedure FoodOrderDataSetCalcFields(DataSet: TDataSet);
    procedure FoodOrderDataSetNewRecord(DataSet: TDataSet);
    procedure OrderItemDataSetCalcFields(DataSet: TDataSet);
    procedure OrderItemDataSetAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
//    ServiceRate: Double;
    PrintPreview: boolean;
    function GetNextDailySerial: Integer;
    function CalcFoodFee(FoodOrderId: Integer): Double;
    function CalcDrinkFee(FoodOrderId: Integer): Double;
    function CalcSideDishesFee(FoodOrderId: Integer): Double;
    function CalcOtherFee(FoodOrderId: Integer): Double;
    function CalcFullFoodFee(FoodOrderId: Integer): Double;
    function CalcFullDrinkFee(FoodOrderId: Integer): Double;
    function CalcFullSideDishesFee(FoodOrderId: Integer): Double;
    function CalcFullOtherFee(FoodOrderId: Integer): Double;
    function CalcFreeFee(FoodOrderId: Integer): Double;
    procedure UpdateOrderFee(UpdateType: String); overload;
    procedure V10ToV11(); // 1.0 升級到 1.1 要跑的程式
    procedure V12ToV13(); // 1.2 升級到 1.3 要跑的程式
    procedure V16ToV17(); // 1.6 升級到 1.7 要跑的程式
    procedure V18ToV19(); // 1.8 升級到 1.9 要跑的程式
    procedure V19ToV110(); // 1.9 升級到 1.10 要跑的程式
    procedure V119ToV120(); // 1.19 升級到 1.20 要跑的程式
    procedure V123ToV124(); // 1.23 升級到 1.24 要跑的程式
    procedure V124ToV125(); // 1.24 升級到 1.25 要跑的程式
    procedure MakeFoodTypeList(Value: String; Name: String);
    function RoundEx(const Value: Real): integer;
  public
    { Public declarations }
    FoodTypeValueList: TStringList;
    FoodTypeNameList: TStringList;
    function NewOrder(TablesId: Integer): Integer;
    function GetFoodOrderLeft: Double;
    function IsPrintPreview: boolean;
    procedure UpdateOrderFee; overload;
    procedure UpdateOrderFeeTotalPayFirst;
    procedure CheckoutOrder;
    procedure Login(EmployeeId: Integer); // 登入
    procedure DefaultServiceRate; // 服務費費率恢復預設值
    procedure ServiceRateZero; // 服務費費率歸零
    procedure DiscountZero; // 折讓歸零
    procedure SetServiceRate(Rate: Double); // 更新服務費%
    function GetServiceRate: Double;
    function GetFoodTypeName(FoodType: String): String; // 轉換食物類型代碼跟名稱
    procedure ChangeTable(NewTableId: Integer); // 換桌
    procedure OpenOrder(FoodOrderId: Integer); // 打開訂單
    function GetConfigIni: TIniFile;
    procedure DeleteOrderItem(OrderItemId: Integer);
    procedure SwitchOrderItemReturnState;
    procedure SwitchOrderItemMinusState;
    function GetEmptyTableBgColor: Integer;
    function GetTableBgColor: Integer;
    procedure SetEmptyTableBgColor(Color: TColor);
    procedure SetTableBgColor(Color: TColor);
    function GetFoodContractOutCode(FoodId: Integer): String;
    function GetCookingContractOutCode(FoodId: Integer): String;
    function GetCheckoutContractOutCode(): String;
    function GetCustomerContractOutCode(): String;
    function GetOrderContractOutCode(): String;
    function GetReceiptContractOutCode(): String;
    function GetPrinterPort(ContractOutCode: String): String;
    function IsSeaFoodType(FoodType: String): boolean; // 是否是海鮮類
    procedure SetProp(Name: String; Value: String);
    function GetProp(Name: String): String;
  end;

var
  DM: TDM;

const
  ReceiptTitle: String = 'ReceiptTitle';
  ServiceRate: String = 'ServiceRate';

implementation

uses OrderForm;

{$R *.dfm}

{刪除菜}
procedure TDM.DeleteOrderItem(OrderItemId: Integer);
begin
  GuduConnection.ExecuteDirect('DELETE FROM ItemCooking WHERE OrderItemId = ' + IntToStr(OrderItemId));
  GuduConnection.ExecuteDirect('DELETE FROM OrderItem WHERE OrderItemId = ' + IntToStr(OrderItemId));
end;

{更新菜退或不退}
procedure TDM.SwitchOrderItemReturnState;
begin
  if not OrderItemDataSet.Active then exit;
  if OrderItemDataSet.IsEmpty then exit;

  if (DM.OrderItemDataSet.FieldByName('IsReturn').AsString = '01') then
  begin
    GuduConnection.ExecuteDirect('UPDATE OrderItem SET IsReturn = ''00'' WHERE OrderItemId = ' + IntToStr(OrderItemDataSet.FieldByName('OrderItemId').AsInteger));
  end
  else
  begin
    GuduConnection.ExecuteDirect('UPDATE OrderItem SET IsReturn = ''01'' WHERE OrderItemId = ' + IntToStr(OrderItemDataSet.FieldByName('OrderItemId').AsInteger));
  end;
  DM.OrderItemDataSet.Refresh;

  DM.UpdateOrderFee;
end;

{更新菜負項}
procedure TDM.SwitchOrderItemMinusState;
var
  Sql: String;
  Count: Double;
begin
  if not OrderItemDataSet.Active then exit;
  if OrderItemDataSet.IsEmpty then exit;

  Count := 0 - DM.OrderItemDataSet.FieldByName('Count').AsFloat;
  Sql := 'UPDATE OrderItem SET Count = ' + FloatToStr(Count) + ' WHERE OrderItemId = ' + IntToStr(OrderItemDataSet.FieldByName('OrderItemId').AsInteger);
  GuduConnection.ExecuteDirect(sql);
  DM.OrderItemDataSet.Refresh;

  DM.UpdateOrderFee;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  IniFile: TIniFile;
  IP: String;
begin
  IniFile := GetConfigIni;
//  ServiceRate := IniFile.ReadFloat('Database', ServiceRate, 10);
  IP := IniFile.ReadString('Database', 'IP', 'localhost');
  PrintPreview := IniFile.ReadBool('Report', 'Preview', false);
  IniFile.Free;

  try
    GuduConnection.Params.Values['HostName'] := IP;
    GuduConnection.Open;

//    V10ToV11();
//    V12ToV13();
//    V16ToV17();
//    V18ToV19();
//    V19ToV110();
//    V119ToV120();
//    V123ToV124();
    V124ToV125();
    CurrentOrderSQLDataSet.Active := true;
  except
  end;

  // 建立 FoodType 對照表
  MakeFoodTypeList('01', '活海鮮');
  MakeFoodTypeList('02', '熱炒類');
  MakeFoodTypeList('03', '鐵板類');
  MakeFoodTypeList('04', '油炸類');
  MakeFoodTypeList('05', '推薦料理');
  MakeFoodTypeList('06', '飯麵類');
  MakeFoodTypeList('07', '火鍋類');
  MakeFoodTypeList('08', '湯羹類');
  MakeFoodTypeList('09', '三杯類');
  MakeFoodTypeList('10', '青菜類');
  MakeFoodTypeList('11', '燒烤類');
  MakeFoodTypeList('12', '位上篇');
  MakeFoodTypeList('13', '點心類');
  MakeFoodTypeList('14', '冷盤類');
  MakeFoodTypeList('60', '小菜類');
  MakeFoodTypeList('70', '合菜類');
  MakeFoodTypeList('80', '酒水類');
  MakeFoodTypeList('90', '其他類');
end;

procedure TDM.MakeFoodTypeList(Value: String; Name: String);
begin
  if FoodTypeValueList = nil then
  begin
    FoodTypeValueList := TStringList.Create;
  end;

  if FoodTypeNameList = nil then
  begin
    FoodTypeNameList := TStringList.Create;
  end;

  FoodTypeValueList.Append(Value + '=' + Name);
  FoodTypeNameList.Append(Name + '=' + Value);
end;

{1.0 升級到 1.1 要跑的程式}
procedure TDM.V10ToV11();
begin
  try
    GuduConnection.ExecuteDirect('SELECT FreeFee FROM FoodOrder WHERE FoodOrderId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN FreeFee INT');
  end;
end;

{1.2 升級到 1.3 要跑的程式}
procedure TDM.V12ToV13();
begin
  try
    GuduConnection.ExecuteDirect('SELECT EmployeeCode FROM Employee WHERE EmployeeId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE Employee ADD COLUMN EmployeeCode VARCHAR(10)');
    GuduConnection.ExecuteDirect('UPDATE Employee SET EmployeeCode = CONCAT(''00'', EmployeeId) WHERE EmployeeId <= 9');
    GuduConnection.ExecuteDirect('UPDATE Employee SET EmployeeCode = CONCAT(''0'', EmployeeId) WHERE EmployeeId >= 10');
  end;
end;

{1.6 升級到 1.7 要跑的程式}
procedure TDM.V16ToV17();
begin
  try
    GuduConnection.ExecuteDirect('SELECT MonthReport FROM Employee WHERE EmployeeId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE Employee ADD COLUMN MonthReport VARCHAR(2) NOT NULL DEFAULT ''00''');
    GuduConnection.ExecuteDirect('ALTER TABLE Cooking ADD COLUMN IsDelete VARCHAR(2) NOT NULL DEFAULT ''00''');
    GuduConnection.ExecuteDirect('ALTER TABLE Cooking DROP FOREIGN KEY FK_CookingType_Food');
    GuduConnection.ExecuteDirect('DROP INDEX FoodId ON Cooking');
    GuduConnection.ExecuteDirect('ALTER TABLE Cooking DROP COLUMN FoodId');
  end;
end;

{1.8 升級到 1.9 要跑的程式}
procedure TDM.V18ToV19();
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
begin
  try
    GuduConnection.ExecuteDirect('SELECT FullFoodFee FROM FoodOrder WHERE FoodOrderId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN FullFoodFee DOUBLE(10,2) DEFAULT 0');
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN FullDrinkFee DOUBLE(10,2) DEFAULT 0');
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN FullSideDishesFee DOUBLE(10,2) DEFAULT 0');
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN FullOtherFee DOUBLE(10,2) DEFAULT 0');

    FoodOrderSimpleDataSet.Open;
    while not FoodOrderSimpleDataSet.Eof do
    begin
      FoodOrderSimpleDataSet.Edit;
      FoodOrderId := FoodOrderSimpleDataSet.FieldByName('FoodOrderId').AsInteger;
      FullFoodFee := RoundEx(CalcFullFoodFee(FoodOrderId)); // 餐食費用含招待(四捨五入)
      FullDrinkFee := RoundEx(CalcFullDrinkFee(FoodOrderId)); // 酒水費用含招待(四捨五入)
      FullSideDishesFee := RoundEx(CalcFullSideDishesFee(FoodOrderId)); // 小菜費用含招待(四捨五入)
      FullOtherFee := RoundEx(CalcFullOtherFee(FoodOrderId)); // 其他費用含招待(四捨五入)

      FoodOrderSimpleDataSet.FieldByName('FullFoodFee').AsFloat := FullFoodFee;
      FoodOrderSimpleDataSet.FieldByName('FullDrinkFee').AsFloat := FullDrinkFee;
      FoodOrderSimpleDataSet.FieldByName('FullSideDishesFee').AsFloat := FullSideDishesFee;
      FoodOrderSimpleDataSet.FieldByName('FullOtherFee').AsFloat := FullOtherFee;
      FoodOrderSimpleDataSet.Next;
    end;
    FoodOrderSimpleDataSet.ApplyUpdates(0);
    FoodOrderSimpleDataSet.Close;
  end;
end;

{1.9 升級到 1.10 要跑的程式}
procedure TDM.V19ToV110();
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
begin
  try
    GuduConnection.ExecuteDirect('SELECT Employee FROM Employee WHERE EmployeeId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE Employee ADD COLUMN Employee VARCHAR(2) NOT NULL DEFAULT ''00''');
    GuduConnection.ExecuteDirect('ALTER TABLE Employee ADD COLUMN Eraser VARCHAR(2) NOT NULL DEFAULT ''00''');
    GuduConnection.ExecuteDirect('UPDATE Employee SET Employee = ''01'', Eraser = ''01'' WHERE EmployeeCode = ''001''');
    GuduConnection.ExecuteDirect('ALTER TABLE OrderItem ADD COLUMN IsReturn VARCHAR(2) NOT NULL DEFAULT ''00''');
    GuduConnection.ExecuteDirect('CREATE INDEX ID_IsReturn ON OrderItem (IsReturn);');
  end;
end;


{1.19 升級到 1.20 要跑的程式}
procedure TDM.V119ToV120();
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
  SQL: String;
begin
  try
    GuduConnection.ExecuteDirect('SELECT IsContractOut FROM OrderItem WHERE OrderItemId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE OrderItem ADD COLUMN IsContractOut VARCHAR(2) NOT NULL DEFAULT ''02''');
  end;

  try
    GuduConnection.ExecuteDirect('SELECT * FROM ContractOut WHERE ContractOutId = 1');
  except
    SQL :=
      'CREATE TABLE ContractOut'
      + '('
      + '	ContractOutId INTEGER NOT NULL AUTO_INCREMENT,'
      + '	ContractOutCode VARCHAR(50) NOT NULL COMMENT,'
      + '	PrinterId INTEGER NOT NULL COMMENT,'
      + '	PRIMARY KEY (ContractOutId),'
      + '	KEY (PrinterId),'
      + '	INDEX ID_ContractOutCode (ContractOutCode ASC)'
      + ')';
    GuduConnection.ExecuteDirect(SQL);
  end;

  try
    GuduConnection.ExecuteDirect('SELECT * FROM Printer WHERE PrinterId = 1');
  except
    SQL :=
      'CREATE TABLE Printer'
      + '('
      + '	PrinterId INTEGER NOT NULL AUTO_INCREMENT,'
      + '	PrinterName VARCHAR(200) NOT NULL,'
      + '	Port VARCHAR(50) NULL,'
      + '	Note VARCHAR(50) NOT NULL,'
      + '	IsDelete VARCHAR(2) NOT NULL DEFAULT 00,'
      + '	PRIMARY KEY (PrinterId),'
      + '	INDEX ID_PrinterDelete (IsDelete ASC)'
      + ')';
      GuduConnection.ExecuteDirect(SQL);

    SQL :=
      'ALTER TABLE ContractOut ADD CONSTRAINT FK_ContractOut_Printer '
      + '	FOREIGN KEY (PrinterId) REFERENCES Printer (PrinterId);';
      GuduConnection.ExecuteDirect(SQL);
  end;
end;

{1.24 升級到 1.25 要跑的程式}
procedure TDM.V124ToV125();
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
  SQL: String;
  IniFile: TIniFile;
  Rate: Double;
begin
  IniFile := GetConfigIni;
  Rate := IniFile.ReadFloat('Database', ServiceRate, 10);
  IniFile.Free;

  try
    GuduConnection.ExecuteDirect('SELECT Visible FROM FoodOrder WHERE FoodOrderId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE FoodOrder ADD COLUMN Visible VARCHAR(2) NOT NULL DEFAULT ''01''');
  end;
end;

{1.23 升級到 1.24 要跑的程式}
procedure TDM.V123ToV124();
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
  SQL: String;
  IniFile: TIniFile;
  Rate: Double;
begin
  IniFile := GetConfigIni;
  Rate := IniFile.ReadFloat('Database', ServiceRate, 10);
  IniFile.Free;

  try
    GuduConnection.ExecuteDirect('SELECT DeleteOrder FROM Employee WHERE EmployeeId = 1');
  except
    GuduConnection.ExecuteDirect('ALTER TABLE Employee ADD COLUMN DeleteOrder VARCHAR(2) NOT NULL DEFAULT ''00''');
  end;

  try
    GuduConnection.ExecuteDirect('SELECT * FROM GlobalProp WHERE GlobalPropId = 1');
  except
    SQL :=
      'CREATE TABLE GlobalProp'
      + '('
      + '	GlobalPropId INTEGER NOT NULL AUTO_INCREMENT COMMENT ''PK'','
      + '	PropName VARCHAR(30) NOT NULL COMMENT ''參數名'','
      + '	PropValue VARCHAR(255) NOT NULL COMMENT ''參數值'','
      + '	PRIMARY KEY (GlobalPropId)'
      + ')';
    GuduConnection.ExecuteDirect(SQL);

    // 新增服務費
    GlobalPropDataSet.Open;
    GlobalPropDataSet.Append;
    GlobalPropDataSet.FieldByName('GlobalPropId').AsInteger := 0;
    GlobalPropDataSet.FieldByName('PropName').AsString := ServiceRate;
    GlobalPropDataSet.FieldByName('PropValue').AsString := FloatToStr(Rate);
    GlobalPropDataSet.Post;
    GlobalPropDataSet.ApplyUpdates(0);

    // 新增發票抬頭
    GlobalPropDataSet.Append;
    GlobalPropDataSet.FieldByName('GlobalPropId').AsInteger := 0;
    GlobalPropDataSet.FieldByName('PropName').AsString := ReceiptTitle;
    GlobalPropDataSet.FieldByName('PropValue').AsString := '囍都國際宴會餐廳' + #13 + #10 + '編號:12345678 TEL:02-22675168' + #13 + #10 + '台北縣土城市中華路283號';
    GlobalPropDataSet.Post;
    GlobalPropDataSet.ApplyUpdates(0);
  end;
end;

procedure TDM.OrderItemClientDataSetCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountShow').AsString := 'V';

  if DataSet.FieldByName('UnitSize').AsString = '00' then
    DataSet.FieldByName('UnitSizeShow').AsString := '小'
  else if DataSet.FieldByName('UnitSize').AsString = '01' then
    DataSet.FieldByName('UnitSizeShow').AsString := '中'
  else if DataSet.FieldByName('UnitSize').AsString = '02' then
    DataSet.FieldByName('UnitSizeShow').AsString := '大';
end;

procedure TDM.OrderItemDataSetAfterScroll(DataSet: TDataSet);
begin
  FormOrder.SwitchOrderState('01');
end;

procedure TDM.OrderItemDataSetCalcFields(DataSet: TDataSet);
var
  ContractOutCode : String;
begin
  if DataSet.FieldByName('CookingNames').IsNull then
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString
  else
    DataSet.FieldByName('NameStr').AsString := DataSet.FieldByName('Name').AsString + '(' + DataSet.FieldByName('CookingNames').AsString + ')';

  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountShow').AsString := 'V';

  if DataSet.FieldByName('IsReturn').AsString = '01' then
    DataSet.FieldByName('IsReturnShow').AsString := 'V';

  if DataSet.FieldByName('UnitSize').AsString = '00' then
    DataSet.FieldByName('UnitSizeShow').AsString := '小'
  else if DataSet.FieldByName('UnitSize').AsString = '01' then
    DataSet.FieldByName('UnitSizeShow').AsString := '中'
  else if DataSet.FieldByName('UnitSize').AsString = '02' then
    DataSet.FieldByName('UnitSizeShow').AsString := '大';

  DataSet.FieldByName('SumFee').AsFloat := DataSet.FieldByName('Fee').AsFloat * DataSet.FieldByName('Count').AsFloat;
end;

{取得下一個日序號}
function TDM.GetNextDailySerial: Integer;
begin
  DaySerialQuery.Open;
  DaySerialQuery.Refresh;
  if DaySerialQuery.IsEmpty then
    result := 1
  else
    result := DaySerialQuery.FieldByName('DailySerial').AsInteger + 1;
end;

{新增訂單}
function TDM.NewOrder(TablesId: Integer): Integer;
var
  FoodOrderId: Integer;
  EmployeeId: Integer;
  SQL: String;
  DailySerial: Integer;
begin
  with FoodOrderSimpleDataSet do
  begin
    Open;
    Refresh;
    Append;
    FieldByName('FoodOrderId').AsInteger := 0;
    FieldByName('TablesId').AsInteger := TablesId;
    EmployeeId := LoginQuery.FieldByName('EmployeeId').AsInteger;
    FieldByName('EmployeeId').AsInteger := EmployeeId;
    FieldByName('ServiceRate').AsFloat := GetServiceRate;
    FieldByName('BuildTime').AsDateTime := now;
    FieldByName('CustomerCount').AsInteger := 1;
    FieldByName('Visible').AsString := '01';
    DailySerial := GetNextDailySerial;
    FieldByName('DailySerial').AsInteger := DailySerial;
    Post;
    ApplyUpdates(0);
    Refresh;

    // 找剛新增的 FoodOrderId，重新進 DB 找，怕多台電腦同時輸入，會取到別台新增的 Id
    FoodOrderIdQuery.Close;
    FoodOrderIdQuery.ParamByName('TablesId').AsInteger := TablesId;
    FoodOrderIdQuery.ParamByName('BuildTime').AsString := FormatDateTime('yyyy/mm/dd', Date);
    FoodOrderIdQuery.ParamByName('DailySerial').AsInteger := DailySerial;
    FoodOrderIdQuery.ParamByName('EmployeeId').AsInteger := EmployeeId;
    FoodOrderIdQuery.Open;
    FoodOrderId := FoodOrderIdQuery.FieldByName('FoodOrderId').AsInteger;
  end;

  with CurrentOrderSimpleDataSet do
  begin
    Open;
    Refresh;
    Append;
    FieldByName('CurrentOrderId').AsInteger := 0;
    FieldByName('FoodOrderId').AsInteger := FoodOrderId;
    Post;
    ApplyUpdates(0);
    Refresh;
  end;

  OpenOrder(FoodOrderId);

  result := FoodOrderId;
end;


function TDM.CalcFullFoodFee(FoodOrderId: Integer): Double;
begin
  with FullFoodFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcFullDrinkFee(FoodOrderId: Integer): Double;
begin
  with FullDrinkFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcFullSideDishesFee(FoodOrderId: Integer): Double;
begin
  with FullSideDishesFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcFullOtherFee(FoodOrderId: Integer): Double;
begin
  with FullOtherFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;


function TDM.CalcFoodFee(FoodOrderId: Integer): Double;
begin
  with FoodFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcDrinkFee(FoodOrderId: Integer): Double;
begin
  with DrinkFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcSideDishesFee(FoodOrderId: Integer): Double;
begin
  with SideDishesFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcOtherFee(FoodOrderId: Integer): Double;
begin
  with OtherFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

function TDM.CalcFreeFee(FoodOrderId: Integer): Double;
begin
  with FreeFeeQuery do
  begin
    Close;
    ParamByName('FoodOrderId').AsInteger := FoodOrderId;
    Open;
    result := FieldByName('Total').AsFloat;
  end;
end;

{取得 應付金額 - 刷卡金額 - 現金金額 - 簽單金額}
function TDM.GetFoodOrderLeft: Double;
var
  Left: Double;
begin
  with DM.FoodOrderDataSet do
  begin
    Left := FieldByName('TotalPay').AsFloat;
    Left := Left - FieldByName('CreditCardPay').AsFloat;
    Left := Left - FieldByName('CashPay').AsFloat;
    Left := Left - FieldByName('DebtPay').AsFloat;
  end;
  result := Left;
end;

{更新訂單的所有價格，折讓優先}
procedure TDM.UpdateOrderFee;
begin
  UpdateOrderFee('00');
end;

{更新訂單的所有價格，實收優先}
procedure TDM.UpdateOrderFeeTotalPayFirst;
begin
  UpdateOrderFee('01');
end;

procedure TDM.UpdateOrderFee(UpdateType: String);
var
  FoodOrderId: Integer;
  FullFoodFee: Double;
  FullDrinkFee: Double;
  FullSideDishesFee: Double;
  FullOtherFee: Double;
  FoodFee: Double;
  DrinkFee: Double;
  SideDishesFee: Double;
  OtherFee: Double;
  FreeFee: Double;
  Sum: Double;
  ServiceRate: Double;
  ServiceFee: Double;
  TotalFee: Double;
  FullTotalFee: Double;
  DepositPay: Double;
  Discount: Double;
  TotalPay: Double;
begin
  // 重新計算總價
  with FoodOrderDataSet do
  begin
    FoodOrderId := FieldByName('FoodOrderId').AsInteger;
    FullFoodFee := RoundEx(CalcFullFoodFee(FoodOrderId)); // 餐食費用含招待(四捨五入)
    FullDrinkFee := RoundEx(CalcFullDrinkFee(FoodOrderId)); // 酒水費用含招待(四捨五入)
    FullSideDishesFee := RoundEx(CalcFullSideDishesFee(FoodOrderId)); // 小菜費用含招待(四捨五入)
    FullOtherFee := RoundEx(CalcFullOtherFee(FoodOrderId)); // 其他費用含招待(四捨五入)
    FoodFee := RoundEx(CalcFoodFee(FoodOrderId)); // 餐食費用(四捨五入)
    DrinkFee := RoundEx(CalcDrinkFee(FoodOrderId)); // 酒水費用(四捨五入)
    SideDishesFee := RoundEx(CalcSideDishesFee(FoodOrderId)); // 小菜費用(四捨五入)
    OtherFee := RoundEx(CalcOtherFee(FoodOrderId)); // 其他費用(四捨五入)
    FreeFee := CalcFreeFee(FoodOrderId); // 招待費用
    Sum := FoodFee + DrinkFee + SideDishesFee + OtherFee;
    ServiceRate :=  FieldByName('ServiceRate').AsFloat;
    ServiceFee := RoundEx((Sum * ServiceRate / 100)); // 服務費(四捨五入)
    TotalFee := Sum + ServiceFee; // 應收金額
    FullTotalFee := FullFoodFee + FullDrinkFee + FullSideDishesFee + FullOtherFee + ServiceFee;
    DepositPay := FieldByName('Deposit').AsFloat; // 訂金
    if UpdateType = '00' then
    begin
      Discount := FieldByName('Discount').AsFloat; // 折讓
      TotalPay := TotalFee - DepositPay - Discount;
    end
    else if UpdateType = '01' then
    begin
      TotalPay := FieldByName('TotalPay').AsFloat; // 實收
      Discount := TotalFee - DepositPay - TotalPay;
    end
    else
      exit;

    Edit;
    FieldByName('FullFoodFee').AsFloat := FullFoodFee;
    FieldByName('FullDrinkFee').AsFloat := FullDrinkFee;
    FieldByName('FullSideDishesFee').AsFloat := FullSideDishesFee;
    FieldByName('FullOtherFee').AsFloat := FullOtherFee;
    FieldByName('FoodFee').AsFloat := FoodFee;
    FieldByName('DrinkFee').AsFloat := DrinkFee;
    FieldByName('SideDishesFee').AsFloat := SideDishesFee;
    FieldByName('OtherFee').AsFloat := OtherFee;
    FieldByName('FreeFee').AsFloat := FreeFee;
    FieldByName('ServiceFee').AsFloat := ServiceFee;
    FieldByName('TotalFee').AsFloat := TotalFee;
//    FieldByName('FullTotalFee').AsFloat := FullTotalFee;
    FieldByName('TotalPay').AsFloat := TotalPay;
    FieldByName('Discount').AsFloat := Discount;
    FieldByName('CreditCardPay').AsFloat := 0;
    FieldByName('CashPay').AsFloat := 0;
    FieldByName('DebtPay').AsFloat := 0;
    ApplyUpdates(0);
    Refresh;
  end;
end;

procedure TDM.CheckoutOrder;
var
  DebtPay: double;
begin
  CheckoutQuery.ParamByName('FoodOrderId').AsInteger := FoodOrderDataSet.FieldByName('FoodOrderId').AsInteger;
  CheckoutQuery.ExecSQL();

  FoodOrderDataset.Edit;
  FoodOrderDatasetCheckoutTime.AsDateTime := Now;
  FoodOrderDataSet.ApplyUpdates(0);
  FoodOrderDataSet.Refresh;

  // 如果有賒帳，存到另外一個地方
  if (FoodOrderDataset.FieldByName('DebtPay').AsFloat = 0) then exit;

end;

procedure TDM.CurrentOrderSQLDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('RealFee').AsFloat :=
    DataSet.FieldByName('FoodFee').AsFloat +
    DataSet.FieldByName('SideDishesFee').AsFloat +
    DataSet.FieldByName('DrinkFee').AsFloat +
    DataSet.FieldByName('OtherFee').AsFloat;
end;

{登入}
procedure TDM.Login(EmployeeId: Integer);
begin
  with LoginQuery do
  begin
    Close;
    ParamByName('EmployeeId').AsInteger := EmployeeId;
    Open;
  end;
end;

{服務費費率恢復預設值}
procedure TDM.DefaultServiceRate;
begin
  FoodOrderDataSet.Edit;
  FoodOrderDataSet.FieldByName('ServiceRate').AsFloat := GetServiceRate;
  UpdateOrderFee;
end;

{服務費費率歸零}
procedure TDM.ServiceRateZero;
begin
  FoodOrderDataSet.Edit;
  FoodOrderDataSet.FieldByName('ServiceRate').AsFloat := 0;
  UpdateOrderFee;
end;

{折讓歸零}
procedure TDM.DiscountZero;
begin
  FoodOrderDataSet.Edit;
  FoodOrderDataSet.FieldByName('Discount').AsFloat := 0;
  UpdateOrderFee;
end;

{計算真實花費，不包括服務費}
procedure TDM.FoodOrderDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('RealFee').AsFloat :=
    DataSet.FieldByName('FoodFee').AsFloat +
    DataSet.FieldByName('SideDishesFee').AsFloat +
    DataSet.FieldByName('DrinkFee').AsFloat +
    DataSet.FieldByName('OtherFee').AsFloat;
end;

procedure TDM.FoodOrderDataSetNewRecord(DataSet: TDataSet);
begin
end;

{更新服務費%}
procedure TDM.SetServiceRate(Rate: Double);
//var
//  IniFile: TIniFile;
begin
//  IniFile := GetConfigIni;
//  IniFile.WriteFloat('Database', 'ServiceRate', Rate);
//  IniFile.Free;
//
//  ServiceRate := Rate;
  SetProp(ServiceRate, FloatToStr(Rate));
end;

function TDM.GetServiceRate: Double;
var
  Rate: String;
begin
//  result := ServiceRate;
  Rate := GetProp(ServiceRate);
  if (Rate = '') then
    Result := 10
  else
    Result := StrToFloat(Rate);
end;

{轉換食物類型代碼跟名稱}
function TDM.GetFoodTypeName(FoodType: String): String;
begin
  result := FoodTypeValueList.Values[FoodType];
//  if FoodType = '01' then
//    result := '活海鮮'
//  else if FoodType = '02' then
//    result := '熱炒類'
//  else if FoodType = '03' then
//    result := '鐵板類'
//  else if FoodType = '04' then
//    result := '油炸類'
//  else if FoodType = '05' then
//    result := '推薦料理'
//  else if FoodType = '06' then
//    result := '飯麵類'
//  else if FoodType = '07' then
//    result := '火鍋類'
//  else if FoodType = '08' then
//    result := '湯羹類'
//  else if FoodType = '09' then
//    result := '三杯類'
//  else if FoodType = '10' then
//    result := '青菜類'
//  else if FoodType = '11' then
//    result := '燒烤類'
//  else if FoodType = '12' then
//    result := '位上篇'
//  else if FoodType = '13' then
//    result := '點心類'
//  else if FoodType = '14' then
//    result := '冷盤類'
//  else if FoodType = '60' then
//    result := '小菜類'
//  else if FoodType = '70' then
//    result := '合菜類'
//  else if FoodType = '80' then
//    result := '酒水類'
//  else if FoodType = '90' then
//    result := '其他類'
//  else
//    result := '';
end;

{換桌}
procedure TDM.ChangeTable(NewTableId: Integer);
var
  IsLocate: boolean;
  FoodOrderId: Integer;
begin
  if not FoodOrderDataSet.Active then exit;

  FoodOrderId := FoodOrderDataSet.FieldByName('FoodOrderId').AsInteger;

  FoodOrderDataSet.Edit;
  FoodOrderDataSet.FieldByName('TablesId').AsInteger := NewTableId;
  FoodOrderDataSet.ApplyUpdates(0);

  OpenOrder(FoodOrderId);
end;

procedure TDM.OpenOrder(FoodOrderId: Integer);
begin
  // 列出訂單
  FoodOrderDataSet.Close;
  FoodOrderDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  FoodOrderDataSet.Open;

  // 列出訂單內容
  OrderItemDataSet.Close;
  OrderItemDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := FoodOrderId;
  OrderItemDataSet.Open;
end;

function TDM.GetConfigIni: TIniFile;
begin
  result := Tinifile.create('./config.ini');
end;

{列印前是否預覽}
function TDM.IsPrintPreview: boolean;
begin
  result := PrintPreview;
end;


function TDM.GetEmptyTableBgColor: Integer;
var
  IniFile: TIniFile;
begin
  IniFile := GetConfigIni;
  result := TColor(IniFile.ReadInteger('MainForm', 'EmptyTableBgColor', 8454143));
  IniFile.Free;
end;

function TDM.GetTableBgColor: Integer;
var
  IniFile: TIniFile;
begin
  IniFile := GetConfigIni;
  result := TColor(IniFile.ReadInteger('MainForm', 'TableBgColor', 8454016));
  IniFile.Free;
end;

procedure TDM.SetEmptyTableBgColor(Color: TColor);
var
  IniFile: TIniFile;
begin
  IniFile := DM.GetConfigIni;
  IniFile.WriteInteger('MainForm', 'EmptyTableBgColor', Color);
  IniFile.Free;
end;

procedure TDM.SetTableBgColor(Color: TColor);
var
  IniFile: TIniFile;
begin
  IniFile := DM.GetConfigIni;
  IniFile.WriteInteger('MainForm', 'TableBgColor', Color);
  IniFile.Free;
end;

function TDM.RoundEx(const Value: Real): integer;
var
  x: Real;
begin
  x := Value - Trunc(Value);
  if x >= 0.5 then
    Result := Trunc(Value) + 1
  else Result := Trunc(Value);
end;

{列印菜單時，非海鮮類的菜的印表機代號}
function TDM.GetFoodContractOutCode(FoodId: Integer): String;
begin
  Result := 'Food.' + IntToStr(FoodId);
end;

{列印菜單時，海鮮類的菜的印表機代號}
function TDM.GetCookingContractOutCode(FoodId: Integer): String;
begin
  Result := 'Cooking.' + IntToStr(FoodId);
end;

{結帳列印帳單時，印表機的代號}
function TDM.GetCheckoutContractOutCode(): String;
begin
  Result := 'Checkout';
end;

{列印客戶帳單時，印表機的代號}
function TDM.GetCustomerContractOutCode(): String;
begin
  Result := 'Customer';
end;

{列印點餐總表，印表機的代號}
function TDM.GetOrderContractOutCode(): String;
begin
  Result := 'Order';
end;

{發票機的代號}
function TDM.GetReceiptContractOutCode(): String;
begin
  Result := 'Receipt';
end;


function TDM.IsSeaFoodType(FoodType: String): boolean; // 是否是海鮮類
begin
  Result := FoodType = '01';
end;

function TDM.GetPrinterPort(ContractOutCode: String): String;
var
  PinterPort: String;
begin
  ContractOutDataSet.Open;
  ContractOutDataSet.Refresh;
  Result := VarToStr(ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Port'));
end;

procedure TDM.SetProp(Name: String; Value: String);
var
  IsExist: boolean;
begin
  GlobalPropDataSet.Open;
  GlobalPropDataSet.Refresh;
  IsExist := GlobalPropDataSet.Locate('PropName', Name, []);
  if (IsExist) then
  begin
    GlobalPropDataSet.Edit;
    GlobalPropDataSet.FieldByName('PropValue').AsString := Value;
    GlobalPropDataSet.ApplyUpdates(0);
    GlobalPropDataSet.Refresh;
  end
  else
  begin
    GlobalPropDataSet.Append;
    GlobalPropDataSet.FieldByName('GlobalPropId').AsInteger := 0;
    GlobalPropDataSet.FieldByName('PropName').AsString := Name;
    GlobalPropDataSet.FieldByName('PropValue').AsString := Value;
    GlobalPropDataSet.ApplyUpdates(0);
    GlobalPropDataSet.Refresh;
  end;
end;

function TDM.GetProp(Name: String): String;
var
  Prop: Variant;
begin
  GlobalPropDataSet.Open;
  GlobalPropDataSet.Refresh;
  Prop := GlobalPropDataSet.Lookup('PropName', Name, 'PropValue');
  if Prop = Null then
    Result := ''
  else
    Result := VarToStr(Prop);
end;

end.
