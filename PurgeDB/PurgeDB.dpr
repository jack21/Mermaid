program PurgeDB;

uses
  Forms,
  MainForm in 'MainForm.pas' {FormMain},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  EraserConfirmForm in 'EraserConfirmForm.pas' {FormEraserConfirm},
  BaseDialog in 'BaseDialog.pas' {FormBaseDialog},
  LoginDialog in 'LoginDialog.pas' {DialogLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '古都活海鮮餐廳點菜系統';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDialogLogin, DialogLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormEraserConfirm, FormEraserConfirm);
  Application.CreateForm(TFormBaseDialog, FormBaseDialog);
  Application.Run;
end.
