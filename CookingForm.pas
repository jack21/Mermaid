unit CookingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ButtonGroup, DB, DBClient, SimpleDS;

type
  TFormCooking = class(TForm)
    OKButton: TButton;
    CancelButton: TButton;
    GroupBox1: TGroupBox;
    CookingDataSet: TSimpleDataSet;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure OKButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    ButtonArray: array of TButton;
    CookingIdArray: array of Integer;
    procedure CheckCooking(Button: TButton); {點選某一作法的按鈕}
  public
    { Public declarations }
    CookingIdList: TStringList; {取得選取的 CookingId}
  end;

var
  FormCooking: TFormCooking;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormCooking.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
begin
  for I := 0 to Length(ButtonArray) - 1 do
  begin
    ButtonArray[I].Free;
  end;
  SetLength(ButtonArray, 0);
  SetLength(CookingIdArray, 0);
end;

procedure TFormCooking.FormShow(Sender: TObject);
var
  Button: TButton;
  I: Integer;
  ColCount: Integer;
begin
  ColCount := 6;
  if CookingIdList = nil then
    CookingIdList := TStringList.Create
  else
    CookingIdList.Clear;

  // 處理按鍵
  with CookingDataSet do
  begin
    Close;
    Open;
    if RecordCount = 0 then
    begin
      Close;
      exit;
    end;
    SetLength(ButtonArray, RecordCount);
    SetLength(CookingIdArray, RecordCount);
    I := 0;
    while not Eof do
    begin
      Button := TButton.Create(GroupBox1);
      Button.Parent := GroupBox1;
      Button.Height := 65;
      Button.Width := 83;
      Button.Left := 16 + I mod ColCount * 100;
      Button.Top := 32 + I div ColCount * 80;
      Button.Caption := FieldByName('CookingName').AsString;
      Button.Images := DM.ImageList;
      Button.OnMouseDown := ButtonMouseDown;;
      ButtonArray[I] := Button;
      CookingIdArray[I] := FieldByName('CookingId').AsInteger;
      Next;
      Inc(I);
    end;
  end;

  // 處理畫面
  Height := 150 + (I div ColCount + 1) * 80;
  Width := 40 + ColCount * 100;
end;


procedure TFormCooking.OKButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (CookingIdList.Count = 0) then
  begin
    Label1.Show;
  end
  else
  begin
    self.ModalResult := mrOK;
  end;
end;

procedure TFormCooking.ButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CheckCooking(Sender as TButton);
end;


procedure TFormCooking.CheckCooking(Button: TButton); {點選某一作法的按鈕}
var
  Index: Integer;
  I: Integer;
begin
  Label1.Hide;

  if Button.ImageIndex = -1 then // 未點選時
  begin
    Button.ImageIndex := 0;
    for I := 0 to Length(ButtonArray) - 1 do
    begin
      if ButtonArray[I] = Button then
      begin
        CookingIdList.Append(Button.Caption + '=' + IntToStr(CookingIdArray[I]));
        break;
      end;
    end;
  end
  else  // 已點選時
  begin
    Button.ImageIndex := -1;
    Button.Repaint;
    Index := CookingIdList.IndexOfName(Button.Caption);
    CookingIdList.Delete(Index);
  end;
end;

end.
