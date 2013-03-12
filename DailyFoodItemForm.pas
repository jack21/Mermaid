unit DailyFoodItemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialog, StdCtrls, CheckLst;

type
  TFormDailyFoodItem = class(TFormBaseDialog)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    ButtonArray: array of TButton;
    CookingIdArray: array of Integer;
    procedure ButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckCooking(Button: TButton); {�I��Y�@�@�k�����s}
  public
    { Public declarations }
    FoodTypeList: TStringList; {���o����� FoodType}
  end;

var
  FormDailyFoodItem: TFormDailyFoodItem;

implementation

uses DataModule;

{$R *.dfm}




procedure TFormDailyFoodItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I: Integer;
begin
  inherited;

  // Free
  for I := 0 to Length(ButtonArray)- 1 do
  begin
    ButtonArray[I].Free;
  end;
  SetLength(ButtonArray, 0);
  SetLength(CookingIdArray, 0);
end;

procedure TFormDailyFoodItem.FormShow(Sender: TObject);
var
  Button: TButton;
  I: Integer;
begin
  inherited;

  if FoodTypeList = nil then
    FoodTypeList := TStringList.Create
  else
    FoodTypeList.Clear;

  // �B�z����
  SetLength(ButtonArray, DM.FoodTypeNameList.Count);
  for I := 0 to DM.FoodTypeNameList.Count - 1 do
  begin
    Button := TButton.Create(GroupBox1);
    Button.Parent := GroupBox1;
    Button.Height := 65;
    Button.Width := 83;
    Button.Left := 16 + I mod 4 * 100;
    Button.Top := 40 + I div 4 * 80;
    Button.Caption := DM.FoodTypeNameList.Names[I];
    Button.Images := DM.ImageList;
    Button.OnMouseDown := ButtonMouseDown;;
    ButtonArray[I] := Button;
    Next;
  end;

  // �B�z�e��
  Height := 280 + I div 4 * 80;
end;

procedure TFormDailyFoodItem.OKButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I: Integer;
  FoodTypeValue: String;
begin
  inherited;
  // ��X�����Ī����s������ Value
  for I := 0 to Length(ButtonArray) - 1 do
  begin
    if (ButtonArray[I].ImageIndex = 0) then
    begin
      FoodTypeValue := DM.FoodTypeNameList.Values[ButtonArray[I].Caption];
      FoodTypeList.Append(FoodTypeValue);
    end;
  end;

  if (FoodTypeList.Count = 0) then
  begin
    Label1.Show;
  end
  else
  begin
    self.ModalResult := mrOK;
  end;
end;

procedure TFormDailyFoodItem.ButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CheckCooking(Sender as TButton);
end;


procedure TFormDailyFoodItem.CheckCooking(Button: TButton); {�I��Y�@�@�k�����s}
var
  Index: Integer;
  I: Integer;
begin
  Label1.Hide;

  if Button.ImageIndex = -1 then // ���I���
  begin
    Button.ImageIndex := 0;
    Button.Repaint;
//    FoodTypeList.Append(DM.FoodTypeNameList.Values[Button.Caption]);
  end
  else  // �w�I���
  begin
    Button.ImageIndex := -1;
    Button.Repaint;
  end;
end;

end.
