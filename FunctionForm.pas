unit FunctionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, GIFImg, ExtCtrls;

type
  TFormFunction = class(TForm)
    OrderButton: TButton;
    CheckoutButton: TButton;
    ReportButton: TButton;
    ConfigButton: TButton;
    LoginButton: TButton;
    ExitButton: TButton;
    ImageList1: TImageList;
    Image1: TImage;
    Image2: TImage;
    ClockTimer: TTimer;
    ClockLabel: TLabel;
    procedure OrderButtonClick(Sender: TObject);
    procedure CheckoutButtonClick(Sender: TObject);
    procedure ReportButtonClick(Sender: TObject);
    procedure LoginButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure ConfigButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangePrivilege;
  end;

var
  FormFunction: TFormFunction;

implementation

uses CheckoutForm, MainForm, OrderForm, DataModule, ReportForm, LoginForm,
  ConfigForm, ContractOutForm;

{$R *.dfm}

procedure TFormFunction.CheckoutButtonClick(Sender: TObject);
begin
  FormMain.SetAction('Checkout');
  FormMain.ShowModal;
end;

procedure TFormFunction.ClockTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '時間:' + TimeToStr(now);
end;

procedure TFormFunction.ConfigButtonClick(Sender: TObject);
begin
  FormConfig.Show;
end;

procedure TFormFunction.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFunction.FormShow(Sender: TObject);
begin
  if not DM.GuduConnection.Connected then
  begin
    ShowMessage('無法連上資料庫');
    Application.Terminate;
  end;
end;

procedure TFormFunction.ChangePrivilege;
begin
  ConfigButton.Enabled := false;
  OrderButton.Enabled := false;
  CheckoutButton.Enabled := false;
  ReportButton.Enabled := false;

  if not DM.LoginQuery.Active then
  begin
    exit;
  end;

  ConfigButton.Enabled := (DM.LoginQuery.FieldByName('Admin').AsString = '01');
  OrderButton.Enabled := (DM.LoginQuery.FieldByName('Order').AsString = '01');
  CheckoutButton.Enabled := (DM.LoginQuery.FieldByName('Checkout').AsString = '01');
  ReportButton.Enabled := (DM.LoginQuery.FieldByName('Report').AsString = '01') or (DM.LoginQuery.FieldByName('MonthReport').AsString = '01');
end;

procedure TFormFunction.LoginButtonClick(Sender: TObject);
begin
  FormLogin.ShowModal;
end;

procedure TFormFunction.OrderButtonClick(Sender: TObject);
begin
  FormMain.SetAction('Order');
  FormMain.ShowModal;
end;

procedure TFormFunction.ReportButtonClick(Sender: TObject);
begin
  FormReport.ShowModal;
end;

end.
