program Mermaid;

uses
  Forms,
  MainForm in 'MainForm.pas' {FormMain},
  DataModule in 'DataModule.pas',
  OrderForm in 'OrderForm.pas' {FormOrder},
  CheckoutForm in 'CheckoutForm.pas' {FormCheckout},
  LoginForm in 'LoginForm.pas' {FormLogin},
  FunctionForm in 'FunctionForm.pas' {FormFunction},
  ReportForm in 'ReportForm.pas' {FormReport},
  BillForm in 'BillForm.pas' {FormBill},
  ConfigForm in 'ConfigForm.pas' {FormConfig},
  MenuReportForm in 'MenuReportForm.pas' {FormMenuReport},
  DailyReportForm in 'DailyReportForm.pas' {FormDailyReport},
  NewTableNameForm in 'NewTableNameForm.pas' {FormNewTableName},
  NewOrderForm in 'NewOrderForm.pas' {FormNewOrder},
  ChangeTableForm in 'ChangeTableForm.pas' {FormChangeTable},
  MonthSalesReportForm in 'MonthSalesReportForm.pas' {FormMonthSalesReport},
  DailyOrderReportForm in 'DailyOrderReportForm.pas' {FormDailyOrderReport},
  CookingForm in 'CookingForm.pas' {FormCooking},
  NumKeyboardForm in 'NumKeyboardForm.pas' {FormNumKeyboard},
  KeyboardForm in 'KeyboardForm.pas' {FormKeyboard},
  BaseDialog in 'BaseDialog.pas' {FormBaseDialog},
  DiscountDialogForm in 'DiscountDialogForm.pas' {FormDiscountDialog},
  DelConfirmForm in 'DelConfirmForm.pas' {FormDelConfirm},
  EraserConfirmForm in 'EraserConfirmForm.pas' {FormEraserConfirm},
  DailyFoodItemForm in 'DailyFoodItemForm.pas' {FormDailyFoodItem},
  MonthOrderReportForm in 'MonthOrderReportForm.pas' {FormMonthOrderReport},
  MonthUnItemReportForm in 'MonthUnItemReportForm.pas' {FormMonthUnItemReport},
  ContractOutForm in 'ContractOutForm.pas' {FormContractOut},
  ContractOutReportForm in 'ContractOutReportForm.pas' {FormContractOutReport},
  PosUtils in 'PosUtils.pas',
  DelDebtConfirmForm in 'DelDebtConfirmForm.pas' {FormDelDebtConfirm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '古都活海鮮餐廳點菜系統';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormFunction, FormFunction);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormOrder, FormOrder);
  Application.CreateForm(TFormCheckout, FormCheckout);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormReport, FormReport);
  Application.CreateForm(TFormBill, FormBill);
  Application.CreateForm(TFormConfig, FormConfig);
  Application.CreateForm(TFormMenuReport, FormMenuReport);
  Application.CreateForm(TFormDailyReport, FormDailyReport);
  Application.CreateForm(TFormNewTableName, FormNewTableName);
  Application.CreateForm(TFormNewOrder, FormNewOrder);
  Application.CreateForm(TFormChangeTable, FormChangeTable);
  Application.CreateForm(TFormMonthSalesReport, FormMonthSalesReport);
  Application.CreateForm(TFormDailyOrderReport, FormDailyOrderReport);
  Application.CreateForm(TFormCooking, FormCooking);
  Application.CreateForm(TFormNumKeyboard, FormNumKeyboard);
  Application.CreateForm(TFormKeyboard, FormKeyboard);
  Application.CreateForm(TFormBaseDialog, FormBaseDialog);
  Application.CreateForm(TFormDiscountDialog, FormDiscountDialog);
  Application.CreateForm(TFormDelConfirm, FormDelConfirm);
  Application.CreateForm(TFormEraserConfirm, FormEraserConfirm);
  Application.CreateForm(TFormDailyFoodItem, FormDailyFoodItem);
  Application.CreateForm(TFormMonthOrderReport, FormMonthOrderReport);
  Application.CreateForm(TFormMonthUnItemReport, FormMonthUnItemReport);
  Application.CreateForm(TFormContractOut, FormContractOut);
  Application.CreateForm(TFormContractOutReport, FormContractOutReport);
  Application.CreateForm(TFormDelDebtConfirm, FormDelDebtConfirm);
  Application.Run;
end.
