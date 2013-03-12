unit OrderForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Mask, FMTBcd,
  DB, Provider, DBClient, SqlExpr, IniFiles, SimpleDS, StrUtils;

type
  TFormOrder = class(TForm)
    RightPanel: TPanel;
    LeftPanel: TPanel;
    GroupBox1: TGroupBox;
    LeftBottomPanel: TPanel;
    OrderItemGrid: TDBGrid;
    LeftTopPanel: TPanel;
    FoodType01Btn: TButton;
    FoodType02Btn: TButton;
    FoodType03Btn: TButton;
    FoodType06Btn: TButton;
    FoodType05Btn: TButton;
    FoodType04Btn: TButton;
    FoodType07Btn: TButton;
    FoodType08Btn: TButton;
    FoodType09Btn: TButton;
    FoodType10Btn: TButton;
    FoodType11Btn: TButton;
    FoodType12Btn: TButton;
    FoodType13Btn: TButton;
    FoodGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    CountLabel: TLabel;
    DeleteButton: TButton;
    FoodCodeDBEdit: TDBEdit;
    FoodNameDBEdit: TDBEdit;
    FoodDataSource: TDataSource;
    CountEdit: TEdit;
    ExitButton: TButton;
    CheckoutButton: TButton;
    SmallButton: TButton;
    MiddleButton: TButton;
    LargeButton: TButton;
    CustomerCountDBEdit: TDBEdit;
    Label3: TLabel;
    ChangeTableButton: TButton;
    TableNameDBText: TDBText;
    DiscountButton: TButton;
    AppendButton: TButton;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    FoodFeeDBText: TDBText;
    DrinkFeeDBText: TDBText;
    SideDishesDBText: TDBText;
    OtherFeeDBText: TDBText;
    ServiceFeeDBText: TDBText;
    Label12: TLabel;
    TotalFeeDBText: TDBText;
    FoodType14Btn: TButton;
    FoodDataSet: TSimpleDataSet;
    ItemCookingDataSet: TSimpleDataSet;
    FoodDataSetFoodId: TIntegerField;
    FoodDataSetName: TWideStringField;
    FoodDataSetType: TWideStringField;
    FoodDataSetCode: TWideStringField;
    FoodDataSetUnit: TWideStringField;
    FoodDataSetLarge: TIntegerField;
    FoodDataSetMiddle: TIntegerField;
    FoodDataSetSmall: TIntegerField;
    FoodDataSetIsDelete: TWideStringField;
    FoodType70Btn: TButton;
    FoodType80Btn: TButton;
    FoodType90Btn: TButton;
    ClockTimer: TTimer;
    ClockLabel: TLabel;
    FoodType60Btn: TButton;
    ReturnButton: TButton;
    MinusButton: TButton;
    procedure FoodClientDataSetAfterScroll(DataSet: TDataSet);
    procedure ServiceRateEditExit(Sender: TObject);
    procedure DiscountRateDBEditExit(Sender: TObject);
    procedure DepositDBEditExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckoutButtonClick(Sender: TObject);
    procedure SmallButtonClick(Sender: TObject);
    procedure MiddleButtonClick(Sender: TObject);
    procedure LargeButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure ChangeTableButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DiscountButtonClick(Sender: TObject);
    procedure AppendButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DeleteButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CountEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustomerCountDBEditMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FoodCodeDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType01BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType02BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType03BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType04BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType05BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType06BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType07BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType08BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType09BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType10BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType11BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType12BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType13BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType14BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType70BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType80BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodType90BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ClockTimerTimer(Sender: TObject);
    procedure FoodType60BtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FoodGridEnter(Sender: TObject);
    procedure ReturnButtonClick(Sender: TObject);
    procedure MinusButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    UnitSize: String;
    DiscountState: Boolean;
    ReturnClickShouldUpdateDb: Boolean;
    ReturnButtonIsChecked: Boolean;
    procedure ShowFood(FoodType: String; FoodCode: String);
    procedure RefreshDiscountButton;
    procedure SetupReturnButton();
    procedure RefreshReturnButton;
    procedure RefreshMinusButton;
    procedure PrintCustomOrder; {�I�\��}
    procedure PrintOrder; {�I�\�`��}
    procedure PrintSingleOrder; {��@���}
    function HasDeletePrivilege: Boolean;
  public
    { Public declarations }
    TablesId: Integer;
    FoodOrderId: Integer;
    procedure SwitchOrderState(State: String);
  end;

var
  FormOrder: TFormOrder;

implementation

uses DataModule, CheckoutForm, MainForm, CookingForm,
  NumKeyboardForm, KeyboardForm, ContractOutForm, PosUtils;

{$R *.dfm}

procedure TFormOrder.DeleteButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not HasDeletePrivilege()) then
  begin
    MessageDlg('�n���t�κ޲z�v���~��ϥ�', mtWarning, [mbOK], 0);
    exit;
  end;

  if not DM.OrderItemDataSet.Active then exit;
  if DM.OrderItemDataSet.IsEmpty then exit;

  DM.DeleteOrderItem(DM.OrderItemDataSet.FieldByName('OrderItemId').AsInteger);
  DM.OrderItemDataSet.Refresh;
  DM.UpdateOrderFee;
end;

procedure TFormOrder.AppendButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  CookingId: Integer;
  CookingName: String;
  CookingIdList: TStringList;
  I: Integer;
  OrderItemId: Integer;
  CookingNames: String;
  FoodId: Integer;
  ContractOutCode: String;
  CookingContractOut: Boolean;
  ReturnButtonChecked: Boolean;
begin
  ReturnButtonChecked := self.ReturnButtonIsChecked;
  try
    StrToFloat(CountEdit.Text);
  except on E: EConvertError do
  begin
    ShowMessage('�ƶq�����O�Ʀr');
    CountEdit.SetFocus;
    exit;
  end;
  end;

  // �ˬd�i�_�s�W
  if FoodDataSet.IsEmpty then exit;

  // �ˬd�ݤ��ݭn���Τ��@�k(�u�����A�~�n)
  if DM.IsSeaFoodType(FoodDataSet.FieldByName('Type').AsString) then
  begin
    // ���������Τ��
    if not (FormCooking.ShowModal = mrOK) then exit;
    CookingIdList := FormCooking.CookingIdList;

    // �s�W�@�k
    if not (CookingIdList = nil) then
    begin
      for I := 0 to CookingIdList.Count - 1 do
      begin
        CookingName := CookingIdList.Names[I];
        if CookingNames = '' then
          CookingNames := CookingName
        else
          CookingNames := CookingNames + ',' + CookingName;
      end;
    end;
  end;

  // �s�W��
  with DM.OrderItemDataSet do
  begin
    Append;
    FieldByName('OrderItemId').AsInteger := 0;
    FoodId := FoodDataSet.FieldByName('FoodId').AsInteger;
    FieldByName('FoodId').AsInteger := FoodId;
    FieldByName('FoodOrderId').AsInteger := FoodOrderId;
    if UnitSize = '00' then
    begin
      FieldByName('UnitSize').AsString := '00';
      FieldByName('Fee').AsInteger := FoodDataSet.FieldByName('Small').AsInteger;
    end
    else if UnitSize = '01' then
    begin
      FieldByName('UnitSize').AsString := '01';
      FieldByName('Fee').AsInteger := FoodDataSet.FieldByName('Middle').AsInteger;
    end
    else
    begin
      FieldByName('UnitSize').AsString := '02';
      FieldByName('Fee').AsInteger := FoodDataSet.FieldByName('Large').AsInteger;
    end;

    if DiscountState then
      FieldByName('Discount').AsString := '01'
    else
      FieldByName('Discount').AsString := '00';

    // �h
    if (ReturnButtonChecked) then
      FieldByName('IsReturn').AsString := '01'
    else
      FieldByName('IsReturn').AsString := '00';
    FieldByName('Count').AsFloat := StrToFloat(CountEdit.Text);
    FieldByName('CookingNames').AsString := CookingNames;

//    // �P�_�O�_�n�X��(���A���P�_ ItemCooking.CookingId, ��L���P�_ Food.FoodId)
//    DM.ContractOutDataSet.Open;
//    DM.ContractOutDataSet.Refresh;
//    if DM.IsSeaFoodType(FoodDataSet.FieldByName('Type').AsString) then
//    begin
//      CookingContractOut := false;
//      for I := 0 to CookingIdList.Count - 1 do
//      begin
//        CookingId := StrToInt(CookingIdList.ValueFromIndex[I]);
//        ContractOutCode := DM.GetCookingContractOutCode(CookingId);
//        if (DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'ContractOutId') = null) then
//        else
//        begin
//          CookingContractOut := true;
//          break;
//        end;
//      end;
//
//      if CookingContractOut then
//        FieldByName('IsContractOut').AsString := '00' // �|���X��
//      else
//        FieldByName('IsContractOut').AsString := '02'; // ���ΥX��
//    end
//    else
//    begin
//      ContractOutCode := DM.GetFoodContractOutCode(FoodId);
//      if (DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'ContractOutId') = null) then
//        FieldByName('IsContractOut').AsString := '02' // ���ΥX��
//      else
//        FieldByName('IsContractOut').AsString := '00'; // �|���X��
//    end;
    FieldByName('IsContractOut').AsString := '00'; // �|���X��

    // ��s�i DB
    Post;
    ApplyUpdates(0);
    Refresh;
    Last;
    OrderItemId := FieldByName('OrderItemId').AsInteger;
  end;

  // �s�W�@�k
  if not (CookingIdList = nil) then
  begin
    ItemCookingDataSet.Open;
    for I := 0 to CookingIdList.Count - 1 do
    begin
      CookingId := StrToInt(CookingIdList.ValueFromIndex[I]);

      ItemCookingDataSet.Append;
      ItemCookingDataSet.FieldByName('ItemCookingId').AsInteger := 0;
      ItemCookingDataSet.FieldByName('OrderItemId').AsInteger := OrderItemId;
      ItemCookingDataSet.FieldByName('CookingId').AsInteger := CookingId;
      ItemCookingDataSet.Post;
    end;
    ItemCookingDataSet.ApplyUpdates(0);
    ItemCookingDataSet.Close;
  end;

  // ��s����
  DM.UpdateOrderFee;
end;

procedure TFormOrder.ChangeTableButtonClick(Sender: TObject);
begin
  if DM.FoodOrderDataSet.Active = true then
    DM.FoodOrderDataSet.ApplyUpdates(0);

  FormMain.SetAction('ChangeTable');
  FormMain.ShowModal;
end;

procedure TFormOrder.CheckoutButtonClick(Sender: TObject);
var
  ContractOutEmpty: boolean;
  PrinterEmpty: boolean;
  OrderItemEmpty: boolean;
begin
//  DM.PrinterDataSet.Open;
//  DM.PrinterDataSet.Refresh;
//  ContractOutEmpty := (DM.OrderItemDataSet.Lookup('IsContractOut', '00', 'OrderItemId') = NULL);
//  PrinterEmpty := DM.PrinterDataSet.IsEmpty;
//  OrderItemEmpty := DM.OrderItemDataSet.IsEmpty;
//  if ((not PrinterEmpty) and (not OrderItemEmpty) and (not ContractOutEmpty)) then
//  begin
//    FormContractOut.ShowModal;
//  end;

  FormCheckout.Show;
  Close;
end;

procedure TFormOrder.ClockTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '�ɶ�:' + TimeToStr(now);
end;

procedure TFormOrder.CountEditMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FormNumKeyboard.ShowKeyboard(Sender as TCustomEdit);
end;

procedure TFormOrder.CustomerCountDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  CustomerCount: Integer;
begin
  if FormNumKeyboard.ShowKeyboard(Sender as TCustomEdit) = mrOK then
  begin
    CustomerCount := StrToInt(CustomerCountDBEdit.Text);
    with DM.FoodOrderDataSet do
    begin
      Edit;
      FieldByName('CustomerCount').AsInteger := CustomerCount;
      ApplyUpdates(0);
    end;
  end;
end;

procedure TFormOrder.SmallButtonClick(Sender: TObject);
begin
  SmallButton.Images := nil;
  MiddleButton.Images := nil;
  LargeButton.Images := nil;
  SmallButton.ImageIndex := -1;
  MiddleButton.ImageIndex := -1;
  LargeButton.ImageIndex := -1;
  SmallButton.Images := DM.ImageList;
  SmallButton.ImageIndex := 0;
  UnitSize := '00';
end;

procedure TFormOrder.MiddleButtonClick(Sender: TObject);
begin
  SmallButton.Images := nil;
  MiddleButton.Images := nil;
  LargeButton.Images := nil;
  SmallButton.ImageIndex := -1;
  MiddleButton.ImageIndex := -1;
  LargeButton.ImageIndex := -1;
  MiddleButton.Images := DM.ImageList;
  MiddleButton.ImageIndex := 0;
  UnitSize := '01';
end;

procedure TFormOrder.MinusButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  DM.SwitchOrderItemMinusState();
  RefreshMinusButton;
end;

procedure TFormOrder.RefreshMinusButton;
begin
  if (DM.OrderItemDataSet.Active and (DM.OrderItemDataSet.FieldByName('Count').AsFloat < 0)) then
  begin
    MinusButton.Images := DM.ImageList;
    MinusButton.ImageIndex := 0;
  end
  else
  begin
    MinusButton.ImageIndex := -1;
    MinusButton.Images := nil;
  end;
end;


procedure TFormOrder.RefreshDiscountButton;
begin
  if DiscountState then
  begin
    DiscountButton.Images := DM.ImageList;
    DiscountButton.ImageIndex := 0;
  end
  else
  begin
    DiscountButton.Images := nil;
    DiscountButton.ImageIndex := -1;
  end;
end;

procedure TFormOrder.RefreshReturnButton;
var
  ShouldChecked: Boolean;
begin
  if (not ReturnClickShouldUpdateDb) then exit;

  ShouldChecked := false;
  if (DM.OrderItemDataSet.Active and (DM.OrderItemDataSet.FieldByName('IsReturn').AsString = '01')) then
  begin
    ShouldChecked := true;
  end;

  ReturnButtonIsChecked := ShouldChecked;
  SetupReturnButton();
end;

procedure TFormOrder.ReturnButtonClick(Sender: TObject);
begin
  if (ReturnClickShouldUpdateDb) then
  begin
    DM.SwitchOrderItemReturnState;
    RefreshReturnButton;
  end
  else
  begin
    ReturnButtonIsChecked := not ReturnButtonIsChecked;
    SetupReturnButton();
  end;
end;

procedure TFormOrder.SetupReturnButton();
begin
  if (ReturnButtonIsChecked) then
  begin
    ReturnButton.Images := DM.ImageList;
    ReturnButton.ImageIndex := 0;
  end
  else
  begin
    ReturnButton.Images := nil;
    ReturnButton.ImageIndex := -1;
  end;
end;

procedure TFormOrder.LargeButtonClick(Sender: TObject);
begin
  SmallButton.Images := nil;
  MiddleButton.Images := nil;
  LargeButton.Images := nil;
  SmallButton.ImageIndex := -1;
  MiddleButton.ImageIndex := -1;
  LargeButton.ImageIndex := -1;
  LargeButton.Images := DM.ImageList;
  LargeButton.ImageIndex := 0;
  UnitSize := '02';
end;

procedure TFormOrder.DepositDBEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
end;

procedure TFormOrder.DiscountButtonClick(Sender: TObject);
begin
  DiscountState := not DiscountState;
  RefreshDiscountButton();
end;

procedure TFormOrder.DiscountRateDBEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
end;


procedure TFormOrder.ExitButtonClick(Sender: TObject);
var
  ContractOutEmpty: boolean;
  PrinterEmpty: boolean;
  OrderItemEmpty: boolean;
begin
//  DM.OrderItemDataSet.First;
//  while not DM.OrderItemDataSet.Eof do
//  begin
//    DM.
//    DM.OrderItemDataSet.Next;
//  end;

  DM.PrinterDataSet.Open;
  DM.PrinterDataSet.Refresh;
  ContractOutEmpty := (DM.OrderItemDataSet.Lookup('IsContractOut', '00', 'OrderItemId') = NULL);
  PrinterEmpty := DM.PrinterDataSet.IsEmpty;
  OrderItemEmpty := DM.OrderItemDataSet.IsEmpty;
  if ((not PrinterEmpty) and (not OrderItemEmpty) and (not ContractOutEmpty)) then
  begin
//    FormContractOut.ShowModal;
    PrintCustomOrder;
    PrintOrder;
    PrintSingleOrder;
  end;

  FormMain.SetAction('Order');
  FormMain.Show;
  Close;
end;

{�C�L�I�\�`��}
procedure TFormOrder.PrintCustomOrder;
var
  TotalWidth, NameWidth, CountWidth, SumFeeWidth: Integer;
  p: TPos;
  PrinterPort: String;
  FoodName: String;
begin
  PrinterPort := DM.GetPrinterPort(DM.GetCustomerContractOutCode);
  if (PrinterPort = '') then exit;

  NameWidth := 28;
  CountWidth := 10;
  SumFeeWidth := 10;
  TotalWidth := NameWidth + CountWidth + SumFeeWidth;

  p := TPos.Create;
  try
    P.Initial(PrinterPort);
    P.FontSize(2);
    p.WriteLnCenter('�I�\��');
    p.WriteLine('�ู:' + DM.FoodOrderDataSet.FieldByName('TableName').AsString);
    p.FontSize(1);
    p.WriteLine('���:' + FormatDateTime('yyyy/mm/dd hh:mm', DM.FoodOrderDataSet.FieldByName('BuildTime').AsDateTime));
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // �\�~�W��             �ƶq   ���    ���B
    p.WriteRightPad('�\�~�W��', NameWidth);
    p.WriteLeftPad('�ƶq', CountWidth);
    p.WriteLeftPad('���B', SumFeeWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    p.FontHeightSize(2);
    DM.OrderItemDataSet.First;
    while Not DM.OrderItemDataSet.Eof do
    begin
      p.WriteRightPad(DM.OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('SumFee').AsFloat), SumFeeWidth);
      p.WriteLine();
      DM.OrderItemDataSet.Next;
    end;
    // ------------------------------------------------
    p.FontSize(1);
    p.WriteLine(DupeString('-', TotalWidth));
    // Waiter:Code Name
    p.WriteText('Waiter:' + DM.LoginQuery.FieldByName('EmployeeCode').AsString + ' ' + DM.LoginQuery.FieldByName('Name').AsString);
    p.WriteLine();
  finally
    p.PaperFeed;
    p.Cut;
    p.Close();
    p.Free;
  end;
end;

{�C�L�I�\�`��}
procedure TFormOrder.PrintOrder;
var
  TotalWidth, NameWidth, CountWidth, SumFeeWidth: Integer;
  p: TPos;
  PrinterPort: String;
  FoodName: String;
begin
  PrinterPort := DM.GetPrinterPort(DM.GetOrderContractOutCode);
  if (PrinterPort = '') then exit;

  NameWidth := 28;
  CountWidth := 10;
  SumFeeWidth := 10;
  TotalWidth := NameWidth + CountWidth + SumFeeWidth;

  p := TPos.Create;
  try
    P.Initial(PrinterPort);
    P.FontSize(2);
    p.WriteLnCenter('�I�\�`��');
    p.WriteLine('�ู:' + DM.FoodOrderDataSet.FieldByName('TableName').AsString);
    p.FontSize(1);
    p.WriteLine('���:' + FormatDateTime('yyyy/mm/dd hh:mm', DM.FoodOrderDataSet.FieldByName('BuildTime').AsDateTime));
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    // �\�~�W��             �ƶq   ���    ���B
    p.WriteRightPad('�\�~�W��', NameWidth);
    p.WriteLeftPad('�ƶq', CountWidth);
    p.WriteLeftPad('���B', SumFeeWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    p.FontHeightSize(2);
    DM.OrderItemDataSet.First;
    while Not DM.OrderItemDataSet.Eof do
    begin
      p.WriteRightPad(DM.OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('SumFee').AsFloat), SumFeeWidth);
      p.WriteLine();
      DM.OrderItemDataSet.Next;
    end;
    // ------------------------------------------------
    p.FontSize(1);
    p.WriteLine(DupeString('-', TotalWidth));
    //                                    �X�p: xxxx
    p.FontHeightSize(2);
    p.WriteLeftPad('�X�p: ', TotalWidth - SumFeeWidth);
    p.WriteLeftPad(FloatToStr(DM.FoodOrderDataSet.FieldByName('RealFee').AsFloat), SumFeeWidth);
    p.WriteLine();
  finally
    p.PaperFeed;
    p.Cut;
    p.Close();
    p.Free;
  end;
end;

{�C�L�@�Ӥ@�Ӫ����}
procedure TFormOrder.PrintSingleOrder;
var
  TotalWidth, NameWidth, CountWidth: Integer;
  p: TPos;
  ContractOutCode: String;
  PrinterPort: String;
  FoodName: String;
  FoodIdStr: String;
begin
  FoodIdStr := '';
  NameWidth := 38;
  CountWidth := 10;
  TotalWidth := NameWidth + CountWidth;

  DM.ContractOutDataSet.Open;
  DM.ContractOutDataSet.Refresh;
  DM.OrderItemDataSet.First;
  while Not DM.OrderItemDataSet.Eof do
  begin
    // �٨S�X�L���~�i�H�X
    if (DM.OrderItemDataSet.FieldByName('IsContractOut').AsString <> '00') then
    begin
      DM.OrderItemDataSet.Next;
      continue;
    end;

    ContractOutCode := DM.GetFoodContractOutCode(DM.OrderItemDataSet.FieldByName('FoodId').AsInteger);
    PrinterPort := DM.GetPrinterPort(ContractOutCode);
    if (PrinterPort = '') then
    begin
      DM.OrderItemDataSet.Next;
      continue;
    end;

    p := TPos.Create;
    try
      P.Initial(PrinterPort);
      P.FontSize(2);
      p.WriteLine('�ู:' + DM.FoodOrderDataSet.FieldByName('TableName').AsString);
      p.FontSize(1);
      p.WriteLine('���:' + FormatDateTime('yyyy/mm/dd hh:mm', DM.FoodOrderDataSet.FieldByName('BuildTime').AsDateTime));
      // ------------------------------------------------
      p.WriteLine(DupeString('-', TotalWidth));
      p.FontHeightSize(2);
      p.WriteRightPad(DM.OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLine();
      p.PaperFeed;
      p.Cut;
    finally
      p.Close();
      p.Free;
    end;

    // �� ID �s�_�ӡA������s���w�g�X�L��F
    if FoodIdStr = '' then
      FoodIdStr := IntToStr(DM.OrderItemDataSet.FieldByName('OrderItemId').AsInteger)
    else
      FoodIdStr := FoodIdStr + ',' + IntToStr(DM.OrderItemDataSet.FieldByName('OrderItemId').AsInteger);

//    DM.OrderItemDataSet.Edit;
//    DM.OrderItemDataSet.FieldByName('IsContractOut').AsString := '01';
//    DM.OrderItemDataSet.Post;
    DM.OrderItemDataSet.Next;
  end;
//  DM.OrderItemDataSet.ApplyUpdates(0);
  if FoodIdStr <> '' then
  begin
    DM.GuduConnection.ExecuteDirect('UPDATE OrderItem SET IsContractOut = ''01'' WHERE OrderItemId IN (' + FoodIdStr + ')')
  end;
end;


procedure TFormOrder.FoodClientDataSetAfterScroll(DataSet: TDataSet);
begin
  // �]�w���s�i���i�H�I��
  SmallButton.Enabled := false;
  MiddleButton.Enabled := false;
  LargeButton.Enabled := false;
  SmallButton.Caption := '�p';
  MiddleButton.Caption := '��';
  LargeButton.Caption := '�j';

  if DataSet.FieldByName('Small').AsInteger <> 0 then
  begin
    SmallButton.Enabled := true;
    SmallButton.Caption := '�p' + #13#10 + IntToStr(DataSet.FieldByName('Small').AsInteger) + '��';
  end;

  if DataSet.FieldByName('Middle').AsInteger <> 0 then
  begin
    MiddleButton.Enabled := true;
    MiddleButton.Caption := '��' + #13#10 + IntToStr(DataSet.FieldByName('Middle').AsInteger) + '��';
  end;

  if DataSet.FieldByName('Large').AsInteger <> 0 then
  begin
    LargeButton.Enabled := true;
    LargeButton.Caption := '�j' + #13#10 + IntToStr(DataSet.FieldByName('Large').AsInteger) + '��';
  end;

  // �Ŀ�w�]�� Size
  if DataSet.FieldByName('Small').AsInteger <> 0 then
  begin
    SmallButton.Click;
  end
  else if DataSet.FieldByName('Middle').AsInteger <> 0 then
  begin
    MiddleButton.Click;
  end
  else if DataSet.FieldByName('Large').AsInteger <> 0 then
  begin
    LargeButton.Click;
  end;

  CountEdit.Text := '1';
  DiscountState := false;
  RefreshDiscountButton();
  SwitchOrderState('00');
end;

procedure TFormOrder.FoodCodeDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FormKeyboard.ShowKeyboard(Sender as TCustomEdit) = mrOK then
    ShowFood('%', FoodCodeDBEdit.Text);
end;


procedure TFormOrder.FoodGridEnter(Sender: TObject);
begin
//  SwitchOrderState('00');
end;

{�q�檬�A: 00=��檬�A, 01=��w�g�I���檺���A}
procedure TFormOrder.SwitchOrderState(State: String);
begin
  if (State = '00') then
  begin
    DiscountButton.Show;
    DeleteButton.Hide;
//    ReturnButton.Hide;
//    MinusButton.Hide;
    ReturnClickShouldUpdateDb := false;
    ReturnButtonIsChecked := false;
    setupReturnButton();
  end
  else if (State = '01') then
  begin
    DiscountButton.Hide;
    if HasDeletePrivilege() then
      DeleteButton.Show;
//    ReturnButton.Show;
//    MinusButton.Show;
    ReturnClickShouldUpdateDb := true;
    RefreshReturnButton;
  end;

  RefreshDiscountButton;
//  RefreshMinusButton;
end;

procedure TFormOrder.FoodType01BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('01', '%');
end;

procedure TFormOrder.FoodType02BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('02', '%');
end;

procedure TFormOrder.FoodType03BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('03', '%');
end;

procedure TFormOrder.FoodType04BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('04', '%');
end;

procedure TFormOrder.FoodType05BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('05', '%');
end;

procedure TFormOrder.FoodType06BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('06', '%');
end;

procedure TFormOrder.FoodType07BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('07', '%');
end;

procedure TFormOrder.FoodType08BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('08', '%');
end;

procedure TFormOrder.FoodType09BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('09', '%');
end;

procedure TFormOrder.FoodType10BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('10', '%');
end;

procedure TFormOrder.FoodType11BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('11', '%');
end;

procedure TFormOrder.FoodType12BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('12', '%');
end;

procedure TFormOrder.FoodType13BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('13', '%');
end;

procedure TFormOrder.FoodType14BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('14', '%');
end;

procedure TFormOrder.FoodType60BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('60', '%');
end;

procedure TFormOrder.FoodType70BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('70', '%');
end;

procedure TFormOrder.FoodType80BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('80', '%');
end;

procedure TFormOrder.FoodType90BtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowFood('90', '%');
end;

procedure TFormOrder.ServiceRateEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
end;

procedure TFormOrder.ShowFood(FoodType: String; FoodCode: String);
begin
  FoodDataSet.Close;

  FoodDataSet.DataSet.ParamByName('Type').AsString := FoodType;
  FoodDataSet.DataSet.ParamByName('Code').AsString := FoodCode;

  FoodDataSet.Open;
end;

procedure TFormOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.FoodOrderDataSet.Active then
    DM.FoodOrderDataSet.ApplyUpdates(0);
end;

procedure TFormOrder.FormShow(Sender: TObject);
begin
  // ���v���i���i�H���b
  CheckoutButton.Enabled := false;
  if DM.LoginQuery.Active then
  begin
    CheckoutButton.Enabled := (DM.LoginQuery.FieldByName('Checkout').AsString = '01');
  end;

  // ��l�ƪ��A
  SwitchOrderState('00');
  FoodDataSet.Close;
  CountEdit.Text := '1';
end;

// �O�_���R����檺�v�Q
function TFormOrder.HasDeletePrivilege: Boolean;
begin
  result := (DM.LoginQuery.FieldByName('DeleteOrder').AsString = '01');
end;

end.
