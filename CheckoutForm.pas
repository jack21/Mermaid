unit CheckoutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, IniFiles, ExtCtrls, SimpleDS, StrUtils, HTTPUtil;

type
  TFormCheckout = class(TForm)
    GroupBox1: TGroupBox;
    AllCreditCardButton: TButton;
    AllCashButton: TButton;
    AllDebtButton: TButton;
    CustomButton: TButton;
    OKButton: TButton;
    ExitButton: TButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DepositDBEdit: TDBEdit;
    TotalPayDBEdit: TDBEdit;
    DiscountDBEdit: TDBEdit;
    Label2: TLabel;
    CreditCardPayDBEdit: TDBEdit;
    CashPayDBEdit: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DebtPayDBEdit: TDBEdit;
    LeftPayLabel: TLabel;
    Label5: TLabel;
    ServiceRateZeroButton: TButton;
    ServiceRateDefaultButton: TButton;
    ServiceRateEdit: TDBEdit;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    TotalPayDBText: TDBText;
    DiscountZeroButton: TButton;
    Label16: TLabel;
    TableNameDBText: TDBText;
    CustomerCountDBText: TDBText;
    KeyPanel: TPanel;
    Button0: TButton;
    BackButton: TButton;
    Button9: TButton;
    Button8: TButton;
    Button7: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    CancelButton: TButton;
    FoodFeeDBText: TDBText;
    DrinkFeeDBText: TDBText;
    SideDishesFeeDBText: TDBText;
    OtherFeeDBText: TDBText;
    ServiceFeeDBText: TDBText;
    TotalFeeDBText: TDBText;
    PrintBillButton: TButton;
    ClockTimer: TTimer;
    ClockLabel: TLabel;
    PrintReceiptButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure AllCreditCardButtonClick(Sender: TObject);
    procedure AllCashButtonClick(Sender: TObject);
    procedure AllDebtButtonClick(Sender: TObject);
    procedure CustomButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CreditCardPayDBEditExit(Sender: TObject);
    procedure CashPayDBEditExit(Sender: TObject);
    procedure DebtPayDBEditExit(Sender: TObject);
    procedure DepositDBEditExit(Sender: TObject);
    procedure DiscountDBEditExit(Sender: TObject);
    procedure ServiceRateEditExit(Sender: TObject);
    procedure ServiceRateZeroButtonClick(Sender: TObject);
    procedure ServiceRateDefaultButtonClick(Sender: TObject);
    procedure DiscountZeroButtonClick(Sender: TObject);
    procedure TotalPayDBEditExit(Sender: TObject);
    procedure Button2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CancelButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BackButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ServiceRateEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DepositDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DiscountDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TotalPayDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreditCardPayDBEditMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CashPayDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DebtPayDBEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PrintBillButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ClockTimerTimer(Sender: TObject);
    procedure PrintReceiptButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    LastEdit: TCustomEdit;
    LastEditText: String;
    LastEditFirstInput: boolean; // 是否第一次輸入
    procedure SetLastEdit(Edit: TObject);
    procedure KeyLastEdit(Number: String);
    procedure CancelLastEdit;
    procedure ConfirmLastEdit;
    procedure ShowLeft;
  public
    { Public declarations }
  end;

var
  FormCheckout: TFormCheckout;

implementation

uses DataModule, OrderForm, BillForm, MainForm, DiscountDialogForm, PosUtils;

{$R *.dfm}

procedure TFormCheckout.AllCashButtonClick(Sender: TObject);
begin
  with DM.FoodOrderDataSet do
  begin
    Edit;
    FieldByName('CreditCardPay').AsInteger := 0;
    CreditCardPayDbEdit.Enabled := false;
    FieldByName('CashPay').AsInteger := FieldByName('TotalPay').AsInteger;
    CashPayDbEdit.Enabled := true;
    CashPayDbEdit.ReadOnly := true;
    FieldByName('DebtPay').AsInteger := 0;
    DebtPayDbEdit.Enabled := false;
  end;
  ShowLeft;
end;

procedure TFormCheckout.AllCreditCardButtonClick(Sender: TObject);
begin
  with DM.FoodOrderDataSet do
  begin
    Edit;
    FieldByName('CreditCardPay').AsInteger := FieldByName('TotalPay').AsInteger;
    CreditCardPayDbEdit.Enabled := true;
    CreditCardPayDbEdit.ReadOnly := true;
    FieldByName('CashPay').AsInteger := 0;
    CashPayDbEdit.Enabled := false;
    FieldByName('DebtPay').AsInteger := 0;
    DebtPayDbEdit.Enabled := false;
  end;
  ShowLeft;
end;

procedure TFormCheckout.AllDebtButtonClick(Sender: TObject);
begin
  with DM.FoodOrderDataSet do
  begin
    Edit;
    FieldByName('CreditCardPay').AsInteger := 0;
    CreditCardPayDbEdit.Enabled := false;
    FieldByName('CashPay').AsInteger := 0;
    CashPayDbEdit.Enabled := false;
    FieldByName('DebtPay').AsInteger := FieldByName('TotalPay').AsInteger;
    DebtPayDbEdit.Enabled := true;
    DebtPayDbEdit.ReadOnly := true;
  end;
  ShowLeft;
end;

procedure TFormCheckout.BackButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ConfirmLastEdit;
end;

procedure TFormCheckout.Button0MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('0');
end;

procedure TFormCheckout.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('1');
end;

procedure TFormCheckout.Button2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('2');
end;

procedure TFormCheckout.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('3');
end;

procedure TFormCheckout.Button4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('4');
end;

procedure TFormCheckout.Button5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('5');
end;

procedure TFormCheckout.Button6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('6');
end;

procedure TFormCheckout.Button7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('7');
end;

procedure TFormCheckout.Button8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('8');
end;

procedure TFormCheckout.Button9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('9');
end;

procedure TFormCheckout.CustomButtonClick(Sender: TObject);
begin
  with DM.FoodOrderDataSet do
  begin
    Edit;
    FieldByName('CreditCardPay').AsInteger := 0;
    CreditCardPayDbEdit.Enabled := true;
    CreditCardPayDbEdit.ReadOnly := false;
    FieldByName('CashPay').AsInteger := 0;
    CashPayDbEdit.Enabled := true;
    CashPayDbEdit.ReadOnly := false;
    FieldByName('DebtPay').AsInteger := 0;
    DebtPayDbEdit.Enabled := true;
    DebtPayDbEdit.ReadOnly := false;
  end;
  ShowLeft;
end;

procedure TFormCheckout.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCheckout.CashPayDBEditExit(Sender: TObject);
begin
  ShowLeft;
end;

procedure TFormCheckout.CashPayDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.ClockTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '時間:' + TimeToStr(now);
end;

procedure TFormCheckout.CreditCardPayDBEditExit(Sender: TObject);
begin
  ShowLeft;
end;

procedure TFormCheckout.CreditCardPayDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.DebtPayDBEditExit(Sender: TObject);
begin
  ShowLeft;
end;

procedure TFormCheckout.DebtPayDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.DepositDBEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
  ShowLeft;
end;

procedure TFormCheckout.DepositDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.DiscountDBEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
  ShowLeft;
end;

procedure TFormCheckout.DiscountDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);

end;

procedure TFormCheckout.DiscountZeroButtonClick(Sender: TObject);
begin
  DM.DiscountZero;
  ShowLeft;
end;

procedure TFormCheckout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.FoodOrderDataSet.Cancel;

//  FormMain.SetAction('Checkout');
  FormMain.Show;
end;

procedure TFormCheckout.FormCreate(Sender: TObject);
//var
//  IniFile: TIniFile;
begin
//  IniFile := Tinifile.create('config.ini');
//  Top := IniFile.ReadInteger('CheckoutForm', 'Top', 0);
//  Left := IniFile.ReadInteger('CheckoutForm', 'Left', 0);
//  IniFile.Free;
end;

procedure TFormCheckout.FormDestroy(Sender: TObject);
//var
//  IniFile: TIniFile;
begin
//  IniFile := Tinifile.create('config.ini');
//  IniFile.WriteInteger('CheckoutForm', 'Top', Top);
//  IniFile.WriteInteger('CheckoutForm', 'Left', Left);
//  IniFile.Free;
end;

procedure TFormCheckout.FormShow(Sender: TObject);
begin
  ShowLeft;
  ServiceRateDefaultButton.Caption := FloatToStr(DM.GetServiceRate) + '%';
end;

procedure TFormCheckout.OKButtonClick(Sender: TObject);
var
  Left: Double;
begin
  Left := DM.GetFoodOrderLeft;
  if Left > 0 then
  begin
    ShowMessage('剩餘金額必須等於0');
    exit;
  end;

  DM.CheckoutOrder;
  Close;
end;

{列印帳單}
procedure TFormCheckout.PrintBillButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Discount: Double;
  ContractOutCode: String;
  PrinterPort: String;
begin
  // 跳出提示折讓視窗
  Discount := DM.FoodOrderDataSet.FieldByName('Discount').AsFloat;
  if Discount > 0 then
  begin
    FormDiscountDialog.DiscountLabel.Caption := FloatToStr(Discount);
    if not (FormDiscountDialog.ShowModal = mrOK) then
    begin
      exit;
    end;
  end;

  // 印帳單
  FormBill.PreviewBill(DM.FoodOrderDataset.FieldByName('FoodOrderId').AsInteger);
end;

{列印發票}
procedure TFormCheckout.PrintReceiptButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  TotalWidth, NameWidth, CountWidth, FeeWidth, SumFeeWidth: Integer;
  PrinterPort, ReceiptTitle: String;
  p: TReceipt;
  I, J: Integer;
  LTokenizer: IStringTokenizer;
begin
  p := TReceipt.Create;

  PrinterPort := DM.GetPrinterPort(DM.GetReceiptContractOutCode);
  if (PrinterPort = '') then
  begin
    MessageDlg('請先設定發票機', mtWarning, [mbOK], 0);
    exit;
  end;

  // 寬度
  NameWidth := 14;
  CountWidth := 5;
  FeeWidth := 6;
  SumFeeWidth := 6;
  TotalWidth := NameWidth + CountWidth + FeeWidth + SumFeeWidth; // 35

  try
    P.Initial('LPT1');

    // 發票抬頭
    ReceiptTitle := DM.GetProp(ReceiptTitle);
    I := 0;
    LTokenizer := StringTokenizer(ReceiptTitle, #13 + #10);
    while LTokenizer.hasMoreTokens do
    begin
      p.WriteLine(LTokenizer.nextToken);
      I := I + 1;
      if I >= 2 then break;
    end;
    for J := I to 2 do
    begin
      p.WriteLine();
    end;

//    p.WriteLine('囍都國際宴會餐廳');
//    p.WriteLine('編號:12345678 TEL:02-22675168');
//    p.WriteLine('台北縣土城市中華路283 號');
    p.WriteLine(FormatDateTime('yyyy/mm/dd hh:mm', DM.FoodOrderDataSet.FieldByName('BuildTime').AsDateTime));
//    p.WriteLine('01234567890123456789012345678901234');
    p.WriteLine();
    p.WriteLine();
    // ------------------------------------------------
    p.WriteRightPad('餐品名稱', NameWidth);
    p.WriteLeftPad('數量', CountWidth);
    p.WriteLeftPad('單價', FeeWidth);
    p.WriteLeftPad('金額', SumFeeWidth);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    DM.OrderItemDataSet.First;
    while Not DM.OrderItemDataSet.Eof do
    begin
      p.WriteRightPad(DM.OrderItemDataSet.FieldByName('NameStr').AsString, NameWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('Count').AsFloat), CountWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('Fee').AsFloat), FeeWidth);
      p.WriteLeftPad(FloatToStr(DM.OrderItemDataSet.FieldByName('SumFee').AsFloat), SumFeeWidth);
      p.WriteLine();
      DM.OrderItemDataSet.Next;
    end;
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          小  計=    ????
    p.WriteLeftPad('小  計=', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(DM.FoodOrderDataSet.FieldByName('SubTotalFee').AsFloat), 10);
    p.WriteLine();
    //                          服務費+    ????
    p.WriteLeftPad('服務費+', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(DM.FoodOrderDataSet.FieldByName('ServiceFee').AsFloat), 10);
    p.WriteLine();
    // ------------------------------------------------
    p.WriteLine(DupeString('-', TotalWidth));
    //                          合  計=    ????
    p.WriteLeftPad('合  計=', TotalWidth - 10);
    p.WriteLeftPad(FloatToStr(DM.FoodOrderDataSet.FieldByName('TotalPay').AsFloat), 10);
    p.WriteLine();
  finally
    p.PrintAndFeed();
    p.Close();
    p.Free;
  end;
end;

procedure TFormCheckout.ServiceRateDefaultButtonClick(Sender: TObject);
begin
  DM.DefaultServiceRate;
  ShowLeft;
end;

procedure TFormCheckout.ServiceRateEditExit(Sender: TObject);
begin
  DM.UpdateOrderFee;
  ShowLeft;
end;

procedure TFormCheckout.ServiceRateEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.ServiceRateZeroButtonClick(Sender: TObject);
begin
  DM.ServiceRateZero;
  ShowLeft;
end;

procedure TFormCheckout.ShowLeft;
var
  Left: Double;
begin
  Left := DM.GetFoodOrderLeft;

  if Left > 0 then
  begin
    LeftPayLabel.Caption := FloatToStr(Left);
    LeftPayLabel.Font.Color := clRed;
    LeftPayLabel.Font.Style := [];
  end
  else if Left = 0 then
  begin
    LeftPayLabel.Caption := FloatToStr(Left);
    LeftPayLabel.Font.Color := clWindowText;
    LeftPayLabel.Font.Style := [];
  end
  else
  begin
    LeftPayLabel.Caption := FloatToStr(Left);
    LeftPayLabel.Font.Color := clRed;
    LeftPayLabel.Font.Style := [fsBold];
  end;
end;

procedure TFormCheckout.TotalPayDBEditExit(Sender: TObject);
begin
  DM.UpdateOrderFeeTotalPayFirst;
end;


procedure TFormCheckout.TotalPayDBEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(Sender);
end;

procedure TFormCheckout.SetLastEdit(Edit: TObject);
begin
  LastEdit := (Edit as TCustomEdit);
  LastEdit.SelectAll;
  LastEditText := LastEdit.Text;
  LastEditFirstInput := true;
end;

procedure TFormCheckout.KeyLastEdit(Number: String);
begin
  if LastEditFirstInput then
  begin
    LastEdit.Text := Number;
    LastEditFirstInput := false;
  end
  else
  begin
    LastEdit.Text := LastEdit.Text + Number;
  end;
end;

procedure TFormCheckout.CancelButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CancelLastEdit;
end;

procedure TFormCheckout.CancelLastEdit;
begin
  LastEdit.Text := LastEditText;
end;

procedure TFormCheckout.ConfirmLastEdit;
var
  Text: String;
  FieldName: String;
begin
  Text := LastEdit.Text;
  if LastEdit is TDBEDit then
  begin
    (LastEdit as TDBEdit).DataSource.DataSet.Edit;
    (LastEdit as TDBEdit).Field.AsString := Text;
    FieldName := (LastEdit as TDBEdit).Field.FieldName;
    ((LastEdit as TDBEdit).DataSource.DataSet as TSimpleDataSet).ApplyUpdates(0);

    if ((FieldName = 'CreditCardPay') or (FieldName = 'CashPay') or (FieldName = 'DebtPay')) then
    begin
      // Donothing 這三個欄位不需要重新計算金額
    end
    else
    begin
      if FieldName = 'TotalPay' then
        DM.UpdateOrderFeeTotalPayFirst
      else
        DM.UpdateOrderFee;
    end;

  end;
  ShowLeft();
end;


end.
