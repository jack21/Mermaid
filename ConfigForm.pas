unit ConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, DBClient, SimpleDS, Grids, DBGrids, ExtCtrls,
  IniFiles, printers;

type
  TFormConfig = class(TForm)
    PageControl1: TPageControl;
    SystemTab: TTabSheet;
    ServiceRateEdit: TEdit;
    ConfirmButton: TButton;
    Label1: TLabel;
    MenuTab: TTabSheet;
    EmployeeTab: TTabSheet;
    FoodDataSet: TSimpleDataSet;
    FoodType02Btn: TButton;
    FoodType03Btn: TButton;
    FoodType06Btn: TButton;
    FoodType05Btn: TButton;
    FoodType04Btn: TButton;
    FoodType07Btn: TButton;
    FoodType08Btn: TButton;
    FoodType09Btn: TButton;
    FoodType12Btn: TButton;
    FoodType11Btn: TButton;
    FoodType10Btn: TButton;
    FoodType13Btn: TButton;
    FoodType01Btn: TButton;
    FoodGrid: TDBGrid;
    InsertButton: TButton;
    MenuPrintButton: TButton;
    FoodDataSource: TDataSource;
    FoodDataSetFoodId: TIntegerField;
    FoodDataSetName: TWideStringField;
    FoodDataSetType: TWideStringField;
    FoodDataSetCode: TWideStringField;
    FoodDataSetUnit: TWideStringField;
    FoodDataSetLarge: TIntegerField;
    FoodDataSetMiddle: TIntegerField;
    FoodDataSetSmall: TIntegerField;
    DeleteButton: TButton;
    ApplyButton: TButton;
    EmployeeApplyButton: TButton;
    EmployeeInsertButton: TButton;
    EmployeeDeleteButton: TButton;
    DBGrid1: TDBGrid;
    EmployeeDataSource: TDataSource;
    EmployeeDataSet: TSimpleDataSet;
    EmployeeDataSetName: TWideStringField;
    EmployeeDataSetPassword: TWideStringField;
    EmployeeDataSetAdmin: TWideStringField;
    EmployeeDataSetOrder: TWideStringField;
    EmployeeDataSetCheckout: TWideStringField;
    EmployeeDataSetReport: TWideStringField;
    EmployeeDataSetEmployeeId: TIntegerField;
    EmployeeDataSetIsDelete: TWideStringField;
    ExitButton: TButton;
    TableSheet: TTabSheet;
    TableGrid: TStringGrid;
    TablePanel: TPanel;
    TableDataSet: TSimpleDataSet;
    TableDataSetTablesId: TIntegerField;
    TableDataSetRestaurantId: TIntegerField;
    TableDataSetName: TWideStringField;
    TableDataSetLocation: TIntegerField;
    FoodDataSetIsDelete: TWideStringField;
    FoodType14Btn: TButton;
    EmployeeDataSetEmployeeCode: TWideStringField;
    ClockLabel: TLabel;
    ClockTimer: TTimer;
    FoodType70Btn: TButton;
    FoodType80Btn: TButton;
    FoodType90Btn: TButton;
    FoodType60Btn: TButton;
    InsertEmployeeButton: TButton;
    DelEmployeeButton: TButton;
    ApplyEmployeeButton: TButton;
    TableDataSetIsDelete: TWideStringField;
    EmployeeDataSetMonthReport: TWideStringField;
    TabSheet1: TTabSheet;
    CookingGrid: TDBGrid;
    ApplyCookingButton: TButton;
    DeleteCookingButton: TButton;
    InsertCookingButton: TButton;
    CookingDataSet: TSimpleDataSet;
    CookingDataSource: TDataSource;
    CookingDataSetCookingId: TIntegerField;
    CookingDataSetCookingName: TWideStringField;
    CookingDataSetIsDelete: TWideStringField;
    NoPrevilegeLabel: TLabel;
    EmployeeDataSetEmployee: TWideStringField;
    EraserButton: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    EmployeeDataSetEraser: TWideStringField;
    ColorDialog1: TColorDialog;
    EmptyTableColorPanel: TPanel;
    GroupBox3: TGroupBox;
    TableColorPanel: TPanel;
    TabSheet2: TTabSheet;
    PrinterGrid: TDBGrid;
    InsertPrinterButton: TButton;
    DeletePrinterButton: TButton;
    ApplyPrinterButton: TButton;
    PrinterSetupDialog: TPrinterSetupDialog;
    FoodDataSetPrinterNote: TStringField;
    CookingDataSetPrinterNote: TStringField;
    GroupBox4: TGroupBox;
    ReceiptTitleMemo: TMemo;
    Label3: TLabel;
    ReceiptTitleButton: TButton;
    EmployeeDataSetDeleteOrder: TWideStringField;
    procedure InsertButtonClick(Sender: TObject);
    procedure FoodDataSetAfterInsert(DataSet: TDataSet);
    procedure FoodType01BtnClick(Sender: TObject);
    procedure FoodType02BtnClick(Sender: TObject);
    procedure FoodType03BtnClick(Sender: TObject);
    procedure FoodType04BtnClick(Sender: TObject);
    procedure FoodType05BtnClick(Sender: TObject);
    procedure FoodType06BtnClick(Sender: TObject);
    procedure FoodType07BtnClick(Sender: TObject);
    procedure FoodType08BtnClick(Sender: TObject);
    procedure FoodType09BtnClick(Sender: TObject);
    procedure FoodType10BtnClick(Sender: TObject);
    procedure FoodType11BtnClick(Sender: TObject);
    procedure FoodType12BtnClick(Sender: TObject);
    procedure FoodType13BtnClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure ApplyButtonClick(Sender: TObject);
    procedure EmployeeInsertButtonClick(Sender: TObject);
    procedure EmployeeDeleteButtonClick(Sender: TObject);
    procedure EmployeeApplyButtonClick(Sender: TObject);
    procedure EmployeeDataSetAfterInsert(DataSet: TDataSet);
    procedure ConfirmButtonClick(Sender: TObject);
    procedure SystemTabShow(Sender: TObject);
    procedure MenuPrintButtonClick(Sender: TObject);
    procedure TablePanelResize(Sender: TObject);
    procedure TableSheetShow(Sender: TObject);
    procedure TableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FoodType14BtnClick(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
    procedure FoodType70BtnClick(Sender: TObject);
    procedure FoodType80BtnClick(Sender: TObject);
    procedure FoodType90BtnClick(Sender: TObject);
    procedure FoodType60BtnClick(Sender: TObject);
    procedure InsertEmployeeButtonClick(Sender: TObject);
    procedure DelEmployeeButtonClick(Sender: TObject);
    procedure ApplyEmployeeButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure InsertCookingButtonClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure DeleteCookingButtonClick(Sender: TObject);
    procedure ApplyCookingButtonClick(Sender: TObject);
    procedure CookingDataSetAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EraserButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EmptyTableColorPanelClick(Sender: TObject);
    procedure TableColorPanelClick(Sender: TObject);
    procedure InsertPrinterButtonClick(Sender: TObject);
    procedure DeletePrinterButtonClick(Sender: TObject);
    procedure ApplyPrinterButtonClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure MenuTabShow(Sender: TObject);
    procedure FoodDataSetCalcFields(DataSet: TDataSet);
    procedure CookingDataSetCalcFields(DataSet: TDataSet);
    procedure ReceiptTitleMemoKeyPress(Sender: TObject; var Key: Char);
    procedure ReceiptTitleButtonClick(Sender: TObject);
  private
    { Private declarations }
    CurrentType: String; // 選到的食物類型
    TableIdList: TStringList;
    procedure SetFoodType(FoodType: String);
    procedure BuildTableState;
  public
    { Public declarations }
    NewTableName: String; // 給 NewTableNameForm 帶回值用
  end;

var
  FormConfig: TFormConfig;

implementation

uses DataModule, MenuReportForm, NewTableNameForm, DelConfirmForm,
  EraserConfirmForm;

{$R *.dfm}

procedure TFormConfig.ApplyButtonClick(Sender: TObject);
var
  ContractOutCode: String;
  PrinterNote: String;
  PrinterId: Integer;
begin
  if not FoodDataset.Active then exit;

//  // 如果有設定出單機，檢查一下，1:海鮮類不能設定出單機
//  if (not FoodDataSet.FieldByName('PrinterNote').IsNull) then
//  begin
//    if DM.IsSeaFoodType(FoodDataSet.FieldByName('Type').AsString) then
//    begin
//      MessageDlg('海鮮類不需設定出單機', mtWarning, [mbOK], 0);
//      exit;
//    end;
//  end;

  // ContractOut
  DM.ContractOutDataSet.Open;
  DM.ContractOutDataSet.Refresh;
  PrinterNote := FoodDataSet.FieldByName('PrinterNote').AsString;
  if Not(PrinterNote = '') then
  begin
    PrinterId := Integer(DM.PrinterDataSet.Lookup('Note', PrinterNote, 'PrinterId'));
    if PrinterId = 0 then
    begin
      MessageDlg('找不到指定的出單機(' + PrinterNote + ')', mtWarning, [mbOK], 0);
      exit;
    end;
    ContractOutCode := DM.GetFoodContractOutCode(FoodDataSet.FieldByName('FoodId').AsInteger);
    if DM.ContractOutDataSet.Locate('ContractOutCode', ContractOutCode, []) then
    begin
      DM.ContractOutDataSet.Edit;
      DM.ContractOutDataSet.FieldByName('PrinterId').AsInteger := PrinterId;
    end
    else
    begin
      // 找不到建新的
      DM.ContractOutDataSet.Append;
      DM.ContractOutDataSet.FieldByName('ContractOutId').AsInteger := 0;
      DM.ContractOutDataSet.FieldByName('ContractOutCode').AsString := ContractOutCode;
      DM.ContractOutDataSet.FieldByName('PrinterId').AsInteger := PrinterId;
    end;
    DM.ContractOutDataSet.ApplyUpdates(0);
    DM.ContractOutDataSet.Refresh;
  end;
  // 更新 Food
  FoodDataSet.ApplyUpdates(0);
  FoodDataSet.Refresh;
end;

procedure TFormConfig.MenuPrintButtonClick(Sender: TObject);
begin
  if (not FoodDataSet.Active) or FoodDataSet.IsEmpty then
    ShowMessage('請先選擇類型或此類型無菜單');

  FormMenuReport.TypeNameLabel.Caption := DM.GetFoodTypeName(CurrentType);
  if DM.IsPrintPreview then
    FormMenuReport.MenuReport.PreviewModal
  else
    FormMenuReport.MenuReport.Print;
end;

procedure TFormConfig.MenuTabShow(Sender: TObject);
var
  i: Integer;
  PrinterName: String;
begin
  DM.PrinterDataSet.Close;
  DM.PrinterDataSet.Open;

  FoodGrid.Columns.Items[6].PickList.Clear;
  FoodGrid.Columns.Items[6].PickList.Add('');
  while not DM.PrinterDataSet.Eof do
  begin
    PrinterName := DM.PrinterDataSet.FieldByName('Note').AsString;
    FoodGrid.Columns.Items[6].PickList.Add(PrinterName);
    DM.PrinterDataSet.Next;
  end;
end;

procedure TFormConfig.ReceiptTitleButtonClick(Sender: TObject);
begin
  DM.SetProp(ReceiptTitle, ReceiptTitleMemo.Text);
end;

procedure TFormConfig.ReceiptTitleMemoKeyPress(Sender: TObject; var Key: Char);
var
  I: integer;
begin
  // 檢查每行是不是超過
  if (ReceiptTitleMemo.Lines.Count > 3) then
  begin
    for I := 3 to ReceiptTitleMemo.Lines.Count - 1 do
    begin
      ReceiptTitleMemo.Lines.Delete(I);
    end;
  end;
end;

procedure TFormConfig.TableColorPanelClick(Sender: TObject);
var
  IniFile: TIniFile;
begin
  if ColorDialog1.Execute then
  begin
    TableColorPanel.Color := ColorDialog1.Color;
    DM.SetTableBgColor(ColorDialog1.Color);
  end;
end;

procedure TFormConfig.TableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  S: string;
  SavedAlign: word;
begin
  S := TableGrid.Cells[ACol, ARow]; // cell contents
  if S = '' then exit;  

//
//    Grid.Canvas.Font.Color := clBlack;
//    Grid.Canvas.Font.Size := 18;
//    Grid.Canvas.Brush.Color := clYellow;
//    Grid.Canvas.FillRect(Rect);
//    StrPCopy(TempPString, CellText);
//    DrawText(Grid.Canvas.Handle,TempPString,-1,Rect,DT_CENTER);

  TableGrid.Canvas.Font.Color := clBlack;
  TableGrid.Canvas.Font.Size := 14;
  TableGrid.Canvas.Brush.Color := clYellow;
  TableGrid.Canvas.FillRect(Rect);
  SavedAlign := SetTextAlign(TableGrid.Canvas.Handle, TA_CENTER);
  TableGrid.Canvas.TextRect(Rect, Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
  SetTextAlign(TableGrid.Canvas.Handle, SavedAlign);
end;

{選擇某一格，編輯桌名}
procedure TFormConfig.TableGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  Location: Integer;
  Id: String;
  ShowResult: Integer;
begin
  Location := ARow * TableGrid.ColCount + ACol;
  Id := TableIdList.Values[IntToStr(Location)];

  // 輸入新桌名
  FormNewTableName.SetOrgTableName(TableGrid.Cells[ACol, Arow]);
  ShowResult := FormNewTableName.ShowModal;
  if (ShowResult = mrOk) then
  begin
    // 新增桌或改桌名
    if Id = '' then
    begin
      TableDataSet.Append;
      TableDataSet.FieldByName('TablesId').AsInteger := 0;
      TableDataSet.FieldByName('Name').AsString := NewTableName;
      TableDataSet.FieldByName('Location').AsInteger := Location;
      TableDataSet.FieldByName('RestaurantId').AsInteger := 1;
      TableDataSet.FieldByName('IsDelete').AsString := '00';
      TableDataSet.ApplyUpdates(0);
    end
    else
    begin
      TableDataSet.Locate('TablesId', StrToInt(Id), []);
      TableDataSet.Edit;
      TableDataSet.FieldByName('Name').AsString := NewTableName;
      TableDataSet.ApplyUpdates(0);
    end;
  end
  else if (ShowResult = mrAbort) then
  begin
    // 刪除桌
    TableDataSet.Locate('TablesId', StrToInt(Id), []);
    TableDataSet.Edit;
    TableDataSet.FieldByName('IsDelete').AsString := '01';
    TableDataSet.ApplyUpdates(0);
  end;

  BuildTableState;
end;

procedure TFormConfig.TablePanelResize(Sender: TObject);
begin
  TableGrid.DefaultColWidth := (TablePanel.Width - 12) div TableGrid.ColCount;
  TableGrid.DefaultRowHeight := (TablePanel.Height - 12) div TableGrid.RowCount;
end;

procedure TFormConfig.TableSheetShow(Sender: TObject);
begin
  BuildTableState;
end;

procedure TFormConfig.TabSheet1Show(Sender: TObject);
var
  i: Integer;
  PrinterName: String;
begin
  CookingDataSet.Open;
  CookingDataSet.Refresh;

  DM.PrinterDataSet.Open;
  DM.PrinterDataSet.Refresh;
  DM.PrinterDataSet.First;

  CookingGrid.Columns.Items[1].PickList.Clear;
  while not DM.PrinterDataSet.Eof do
  begin
    PrinterName := DM.PrinterDataSet.FieldByName('Note').AsString;
    CookingGrid.Columns.Items[1].PickList.Add(PrinterName);
    DM.PrinterDataSet.Next;
  end;
end;

procedure TFormConfig.TabSheet2Show(Sender: TObject);
var
  i: Integer;
  PrinterName: String;
  PrinterList: TStrings;
begin
  DM.PrinterDataSet.Close;

//  PrinterGrid.Columns.Items[1].PickList.Clear;
//  for i := 0 to printer.printers.count - 1 do
//  begin
//    PrinterName   :=   printer.printers.Strings[i];
//    PrinterGrid.Columns.Items[1].PickList.Add(PrinterName);
//  end;

  DM.PrinterDataSet.Open;
end;

procedure TFormConfig.ClockTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '時間:' + TimeToStr(now);
end;

procedure TFormConfig.ConfirmButtonClick(Sender: TObject);
begin
  if ServiceRateEdit.Text = '' then
  begin
    ShowMessage('服務費%不得為空白');
    exit;
  end;

  DM.SetServiceRate(StrToInt(ServiceRateEdit.Text));
end;

procedure TFormConfig.CookingDataSetAfterInsert(DataSet: TDataSet);
begin
  CookingDataSet.FieldByName('CookingId').AsInteger := 0;
  CookingDataSet.FieldByName('IsDelete').AsString := '00';
end;

procedure TFormConfig.CookingDataSetCalcFields(DataSet: TDataSet);
var
  ContractOutCode : String;
begin
  if (not DM.ContractOutDataSet.Active) then
    DM.ContractOutDataSet.Open;

  ContractOutCode := DM.GetCookingContractOutCode(DataSet.FieldByName('CookingId').AsInteger);
  DataSet.FieldByName('PrinterNote').AsString := VarToStr(DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Note'));
end;

procedure TFormConfig.DelEmployeeButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;
  FormDelConfirm.HintLabel.Caption := '確定刪除 ''' + EmployeeDataSet.FieldByName('Name').AsString + ''' 嗎?';
  if FormDelConfirm.ShowModal <> mrOK then exit;

  EmployeeDataSet.Edit;
  EmployeeDataSet.FieldByName('IsDelete').AsString := '01';
  EmployeeDataSet.ApplyUpdates(0);
  EmployeeDataSet.Refresh;
end;

procedure TFormConfig.DeleteButtonClick(Sender: TObject);
begin
  if FoodDataSet.FieldByName('FoodId').AsInteger = 0 then
  begin
    FoodDataSet.Delete;
    FoodDataSet.ApplyUpdates(0);
    FoodDataSet.Refresh;
    exit;
  end;

  if not FoodDataset.Active then exit;
  FormDelConfirm.HintLabel.Caption := '確定刪除 ''' + FoodDataSet.FieldByName('Name').AsString + ''' 嗎?';
  if FormDelConfirm.ShowModal <> mrOK then exit;

  FoodDataSet.Edit;
  FoodDataSet.FieldByName('IsDelete').AsString := '01';
  FoodDataSet.ApplyUpdates(0);
  FoodDataSet.Refresh;
end;

procedure TFormConfig.DeleteCookingButtonClick(Sender: TObject);
begin
  if not CookingDataSet.Active then exit;
  FormDelConfirm.HintLabel.Caption := '確定刪除 ''' + CookingDataSet.FieldByName('CookingName').AsString + ''' 嗎?';
  if FormDelConfirm.ShowModal <> mrOK then exit;

  CookingDataSet.Edit;
  CookingDataSet.FieldByName('IsDelete').AsString := '01';
  CookingDataSet.ApplyUpdates(0);
  CookingDataSet.Refresh;
end;

procedure TFormConfig.DeletePrinterButtonClick(Sender: TObject);
begin
  if not DM.PrinterDataSet.Active then exit;
  FormDelConfirm.HintLabel.Caption := '確定刪除 ''' + DM.PrinterDataSet.FieldByName('Note').AsString + ''' 嗎?';
  if FormDelConfirm.ShowModal <> mrOK then exit;

  DM.PrinterDataSet.Edit;
  DM.PrinterDataSet.FieldByName('IsDelete').AsString := '01';
  DM.PrinterDataSet.ApplyUpdates(0);
  DM.PrinterDataSet.Refresh;
end;

procedure TFormConfig.EmployeeApplyButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;
  EmployeeDataSet.ApplyUpdates(0);
end;

procedure TFormConfig.EmployeeDataSetAfterInsert(DataSet: TDataSet);
begin
  EmployeeDataSet.FieldByName('EmployeeId').AsInteger := 0;
  EmployeeDataSet.FieldByName('Admin').AsString := '00';
  EmployeeDataSet.FieldByName('Report').AsString := '00';
  EmployeeDataSet.FieldByName('Order').AsString := '00';
  EmployeeDataSet.FieldByName('Checkout').AsString := '00';
  EmployeeDataSet.FieldByName('IsDelete').AsString := '00';
  EmployeeDataSet.FieldByName('Employee').AsString := '00';
end;

procedure TFormConfig.EmployeeDeleteButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;

  EmployeeDataSet.Edit;
  EmployeeDataSet.FieldByName('IsDelete').AsString := '01';
  EmployeeDataSet.ApplyUpdates(0);
  EmployeeDataSet.Refresh;
end;

procedure TFormConfig.EmployeeInsertButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;

  EmployeeDataSet.Append;
end;

procedure TFormConfig.EmptyTableColorPanelClick(Sender: TObject);
begin
  if ColorDialog1.Execute then
  begin
    EmptyTableColorPanel.Color := ColorDialog1.Color;
    DM.SetEmptyTableBgColor(ColorDialog1.Color);
  end;
end;

procedure TFormConfig.EraserButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (FormEraserConfirm.ShowModal = mrOK) then
  begin
    DM.GuduConnection.ExecuteDirect('DELETE FROM ItemCooking');
    DM.GuduConnection.ExecuteDirect('DELETE FROM OrderItem');
    DM.GuduConnection.ExecuteDirect('DELETE FROM CurrentOrder');
    DM.GuduConnection.ExecuteDirect('DELETE FROM FoodOrder');
  end;
end;

procedure TFormConfig.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFormConfig.FoodDataSetAfterInsert(DataSet: TDataSet);
begin
  FoodDataSet.FieldByName('FoodId').AsInteger := 0;
  FoodDataSet.FieldByName('Type').AsString := CurrentType;
  FoodDataSet.FieldByName('Large').AsInteger := 0;
  FoodDataSet.FieldByName('Middle').AsInteger := 0;
  FoodDataSet.FieldByName('Small').AsInteger := 0;
  FoodDataSet.FieldByName('IsDelete').AsString := '00';
end;

procedure TFormConfig.FoodDataSetCalcFields(DataSet: TDataSet);
var
  ContractOutCode : String;
begin
  if (not DM.ContractOutDataSet.Active) then
    DM.ContractOutDataSet.Open;

  ContractOutCode := DM.GetFoodContractOutCode(DataSet.FieldByName('FoodId').AsInteger);
  DataSet.FieldByName('PrinterNote').AsString := VarToStr(DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Note'));
end;

procedure TFormConfig.FoodType01BtnClick(Sender: TObject);
begin
  SetFoodType('01');
end;

procedure TFormConfig.FoodType02BtnClick(Sender: TObject);
begin
  SetFoodType('02');
end;

procedure TFormConfig.FoodType03BtnClick(Sender: TObject);
begin
  SetFoodType('03');
end;

procedure TFormConfig.FoodType04BtnClick(Sender: TObject);
begin
  SetFoodType('04');
end;

procedure TFormConfig.FoodType05BtnClick(Sender: TObject);
begin
  SetFoodType('05');
end;

procedure TFormConfig.FoodType06BtnClick(Sender: TObject);
begin
  SetFoodType('06');
end;

procedure TFormConfig.FoodType07BtnClick(Sender: TObject);
begin
  SetFoodType('07');
end;

procedure TFormConfig.FoodType08BtnClick(Sender: TObject);
begin
  SetFoodType('08');
end;

procedure TFormConfig.FoodType09BtnClick(Sender: TObject);
begin
  SetFoodType('09');
end;

procedure TFormConfig.FoodType10BtnClick(Sender: TObject);
begin
  SetFoodType('10');
end;

procedure TFormConfig.FoodType11BtnClick(Sender: TObject);
begin
  SetFoodType('11');
end;

procedure TFormConfig.FoodType12BtnClick(Sender: TObject);
begin
  SetFoodType('12');
end;

procedure TFormConfig.FoodType14BtnClick(Sender: TObject);
begin
  SetFoodType('14');
end;

procedure TFormConfig.FoodType60BtnClick(Sender: TObject);
begin
  SetFoodType('60');
end;

procedure TFormConfig.FoodType70BtnClick(Sender: TObject);
begin
  SetFoodType('70');
end;

procedure TFormConfig.FoodType80BtnClick(Sender: TObject);
begin
  SetFoodType('80');
end;

procedure TFormConfig.FoodType90BtnClick(Sender: TObject);
begin
  SetFoodType('90');
end;

procedure TFormConfig.FormShow(Sender: TObject);
begin
  // 員工設定要有權限才能看
  if (DM.LoginQuery.FieldByName('Employee').AsString <> '01') then
  begin
    EmployeeDataSet.Close;
    NoPrevilegeLabel.Show;
    EmployeeTab.Enabled := false;
  end
  else
  begin
    NoPrevilegeLabel.Hide;
    EmployeeDataSet.Close;
    EmployeeDataSet.Open;
    EmployeeTab.Enabled := true;
  end;

  // 清除資料要有權限才能用
  if (DM.LoginQuery.FieldByName('Eraser').AsString <> '01') then
  begin
    EraserButton.Enabled := false;
  end
  else
  begin
    EraserButton.Enabled := true;
  end;

  // 主畫面顏色
  EmptyTableColorPanel.Color := DM.GetEmptyTableBgColor;
  TableColorPanel.Color := DM.GetTableBgColor;

  PageControl1.ActivePageIndex := 0;
end;

procedure TFormConfig.FoodType13BtnClick(Sender: TObject);
begin
  SetFoodType('13');
end;

procedure TFormConfig.SetFoodType(FoodType: String);
begin
  FoodDataSet.Close;
  FoodDataSet.DataSet.ParamByName('Type').AsString := FoodType;
  FoodDataSet.Open;
  CurrentType := FoodType;
end;

procedure TFormConfig.SystemTabShow(Sender: TObject);
begin
  ServiceRateEdit.Text := FloatToStr(DM.GetServiceRate);
  ReceiptTitleMemo.Text := DM.GetProp('ReceiptTitle');
end;

procedure TFormConfig.InsertButtonClick(Sender: TObject);
begin
  if not FoodDataset.Active then exit;

  FoodDataSet.Append;
end;

procedure TFormConfig.InsertCookingButtonClick(Sender: TObject);
begin
  if not CookingDataSet.Active then exit;
  CookingDataSet.Append;
end;

procedure TFormConfig.InsertEmployeeButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;

  EmployeeDataSet.Append;

end;

procedure TFormConfig.InsertPrinterButtonClick(Sender: TObject);
begin
  if not DM.PrinterDataSet.Active then exit;

  DM.PrinterDataSet.Append;
  DM.PrinterDataSet.FieldByName('PrinterId').AsInteger := 0;
  DM.PrinterDataSet.FieldByName('IsDelete').AsString := '00';
end;

procedure TFormConfig.ApplyCookingButtonClick(Sender: TObject);
var
  ContractOutCode: String;
//  PrinterNote: String;
  PrinterId: Integer;
begin
  if not CookingDataset.Active then exit;

  // ContractOut
  // 先不處理作法的出單機，因為菜盤就決定了用哪個出單機，指定每個作法用不同的出單機反而用不到(Comment 2009.10.14)
//  DM.ContractOutDataSet.Open;
//  DM.ContractOutDataSet.Refresh;
//  PrinterNote := CookingDataSet.FieldByName('PrinterNote').AsString;
//  PrinterId := Integer(DM.PrinterDataSet.Lookup('Note', PrinterNote, 'PrinterId'));
//  if PrinterId = 0 then
//  begin
//    MessageDlg('找不到指定的出單機(' + PrinterNote + ')', mtWarning, [mbOK], 0);
//    exit;
//  end;
//
//  ContractOutCode := DM.GetCookingContractOutCode(CookingDataSet.FieldByName('CookingId').AsInteger);
//  if DM.ContractOutDataSet.Locate('ContractOutCode', ContractOutCode, []) then
//  begin
//    DM.ContractOutDataSet.Edit;
//    DM.ContractOutDataSet.FieldByName('PrinterId').AsInteger := PrinterId;
//  end
//  else
//  begin
//    // 找不到建新的
//    DM.ContractOutDataSet.Append;
//    DM.ContractOutDataSet.FieldByName('ContractOutId').AsInteger := 0;
//    DM.ContractOutDataSet.FieldByName('ContractOutCode').AsString := ContractOutCode;
//    DM.ContractOutDataSet.FieldByName('PrinterId').AsInteger := PrinterId;
//  end;
//  DM.ContractOutDataSet.ApplyUpdates(0);
//  DM.ContractOutDataSet.Refresh;

  // 更新 Cooking
  CookingDataSet.ApplyUpdates(0);
  CookingDataSet.Refresh;
end;

procedure TFormConfig.ApplyEmployeeButtonClick(Sender: TObject);
begin
  if not EmployeeDataset.Active then exit;
//  if (EmployeeDataSet.State <> dsEdit) and (EmployeeDataSet.State <> dsInsert) then exit;

  EmployeeDataSet.ApplyUpdates(0);
  EmployeeDataSet.Refresh;

  DM.LoginQuery.Refresh;
end;

procedure TFormConfig.ApplyPrinterButtonClick(Sender: TObject);
begin
  if not DM.PrinterDataset.Active then exit;
//  if (PrinterDataSet.State <> dsEdit) and (PrinterDataSet.State <> dsInsert) then exit;

  DM.PrinterDataSet.ApplyUpdates(0);
  DM.PrinterDataSet.Refresh;
end;

procedure TFormConfig.BuildTableState;
var
  Location: Integer;
  Id: Integer;
  RowIndex: Integer;
  ColIndex: Integer;
  I: Integer;
  J: Integer;
begin
  for I := 0 to TableGrid.RowCount - 1 do
  begin
    for J := 0 to TableGrid.ColCount - 1 do
    begin
      TableGrid.Cells[J, I] := '';
    end;
  end;

  // 塞資料
  with TableDataSet do
  begin
    Close;
    Open;

    if TableIdList = nil then
      TableIdList := TStringList.Create
    else
      TableIdList.Clear;

    while not Eof do
    begin
      Location := FieldByName('Location').AsInteger;
      Id := FieldByName('TablesId').AsInteger;
      TableIdList.Append(IntToStr(Location) + '=' + IntToStr(Id));

      RowIndex := Location div TableGrid.ColCount;
      ColIndex := Location mod TableGrid.RowCount;

      TableGrid.Cells[ColIndex, RowIndex] := FieldByName('Name').AsString;

      Next;
    end;
  end;

  TableGrid.Repaint;
end;

end.

