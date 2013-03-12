unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DateUtils;

type
  TFormMain = class(TForm)
    StartCalendar: TMonthCalendar;
    EndCalendar: TMonthCalendar;
    PurgeButton: TButton;
    ExitButton: TButton;
    AlertLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure PurgeButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
    IsLogin: boolean;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses EraserConfirmForm, DataModule, LoginDialog;

{$R *.dfm}

procedure TFormMain.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  ModalResult: Integer;
begin
  StartCalendar.Date := Now();
  EndCalendar.Date := Now();

  if (not IsLogin) then
  begin
    ModalResult := DialogLogin.ShowModal;
    if ModalResult = mrOK then
    begin
      // ���`�n�J
      IsLogin := true;
    end
    else
    begin
      close;
    end;
  end;
end;

procedure TFormMain.PurgeButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Sql1: String;
  Sql2: String;
  Sql: String;
  BaseFilter: String;
begin
  AlertLabel.Hide;
  if (StartCalendar.Date > EndCalendar.Date) then
  begin
    AlertLabel.Caption := '�}�l�������b�����������';
    AlertLabel.Show;
    exit;
  end;

  if (FormEraserConfirm.ShowModal = mrOK) then
  begin
    BaseFilter := 'BuildTime >= ' + formatdatetime('yyyymmdd', StartCalendar.Date) + ' AND BuildTime <= ' + formatdatetime('yyyymmdd', IncDay(EndCalendar.Date));
    Sql1 := '(' + BaseFilter + ' AND DebtPay = 0) OR (Visible=''00'' AND DebtPay = 0)'; // Visible=''00'' AND DebtPay = 0 �O��� "ñ�b����" ���A�S�Q�R�����q��
    Sql := '(SELECT FoodOrderId FROM FoodOrder WHERE ' + Sql1 + ')';
    Sql2 := '(SELECT OrderItemId FROM OrderItem WHERE FoodOrderId IN ' + Sql + ')';
    DM.GuduConnection.ExecuteDirect('DELETE FROM ItemCooking WHERE OrderItemId IN ' + Sql2);
    DM.GuduConnection.ExecuteDirect('DELETE FROM OrderItem WHERE FoodOrderId IN ' + Sql);
    DM.GuduConnection.ExecuteDirect('DELETE FROM CurrentOrder WHERE FoodOrderId IN ' + Sql);
    DM.GuduConnection.ExecuteDirect('DELETE FROM FoodOrder WHERE ' + Sql1);

    DM.GuduConnection.ExecuteDirect('UPDATE FoodOrder SET Visible = ''00'' WHERE ' + BaseFilter + ' AND DebtPay > 0');
    AlertLabel.Caption := '�w�R�� ' + formatdatetime('yyyy/mm/dd', StartCalendar.Date) + ' �� ' + formatdatetime('yyyy/mm/dd', EndCalendar.Date) + ' ���';
    AlertLabel.Show;
  end;
end;

end.
