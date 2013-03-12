unit ContractOutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Printers;

type
  TFormContractOut = class(TForm)
    CancelButton: TButton;
    OKButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
    GridList: TStrings;
    LabelList: TStrings;
  public
    { Public declarations }
  end;

var
  FormContractOut: TFormContractOut;

implementation

uses DataModule, ContractOutReportForm;

{$R *.dfm}

procedure TFormContractOut.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
begin
  for I := 0 to LabelList.Count - 1 do
  begin
    LabelList.Objects[I].Free;
    LabelList.Objects[I] := nil
  end;
  LabelList.Free;
  LabelList := nil;

  for I := 0 to GridList.Count - 1 do
  begin
    GridList.Objects[I].Free;
    GridList.Objects[I] := nil
  end;
  GridList.Free;
  GridList := nil;
end;

procedure TFormContractOut.FormShow(Sender: TObject);
var
  Title: TLabel;
  Grid: TStringGrid;
  Box: TListBox;
  I: Integer;
  PrinterNote: String;
  ContractOutCode: String;
  ContractOutFoodName: String;
begin
  if GridList = nil then
    GridList := TStringList.Create
  else
    GridList.Clear;

  if LabelList = nil then
    LabelList := TStringList.Create
  else
    LabelList.Clear;

  // 造出表格
  with DM.PrinterDataSet do
  begin
    Open;
    Refresh;
    First;

    I := 0;
    while not Eof do
    begin
      // Label
      Title := TLabel.Create(self);
      Title.AutoSize := false;
      Title.Parent := self;
      Title.Height := 35;
      Title.Width := 200;
      Title.Left := 8 + I mod 3 * (200 + 8);
      Title.Top := 8 + I div 3 * (150 + 8);
      Title.Caption := FieldByName('Note').AsString;
      Title.Transparent := true;
      Title.Color := clSkyBlue;
      Title.Alignment := taCenter;
      LabelList.AddObject(FieldByName('Note').AsString, Pointer(Title));

      // Grid
//      Grid := TStringGrid.Create(self);
//      Grid.Parent := self;
//      Grid.Height := 150;
//      Grid.Width := Title.Width;
//      Grid.Left := Title.Left;
//      Grid.Top := Title.Top + Title.Height;
//      Grid.DefaultColWidth := Grid.Width - 20;
//      Grid.ColCount := 1;
//      Grid.FixedCols := 0;
//      Grid.RowCount := 1;
//      Grid.FixedRows := 0;
//      Grid.ScrollBars := ssVertical;
//      GridList.AddObject(FieldByName('Note').AsString, Pointer(Grid));
      Box := TListBox.Create(self);
      Box.Parent := self;
      Box.Height := 150;
      Box.Width := Title.Width;
      Box.Left := Title.Left;
      Box.Top := Title.Top + Title.Height;
      GridList.AddObject(FieldByName('Note').AsString, Pointer(Box));

      Next;
      Inc(I);
    end;
  end;

  // 處理畫面大小
  Height := 120 + ((I - 1) div 3 + 1) * (Title.Height + Box.Height + 8);
  if I >= 3 then
  begin
    Width := 3 * (Title.Width + 8) + 14;
  end
  else if ((I = 0) OR (I = 1)) then
  begin
    Width := (Title.Width + 8) + 50;
  end
  else if I = 2 then
  begin
    Width := 2 * (Title.Width + 8) + 14;
  end;

  // 填菜單
  DM.ContractOutDataSet.Open;
  DM.ContractOutDataSet.Refresh;
  DM.ItemCookingDataSet.Open;
  DM.ItemCookingDataSet.Refresh;
  with DM.OrderItemDataSet do
  begin
    First;
    while not Eof do
    begin
      // 還沒出過菜單才可以出
      if (FieldByName('IsContractOut').AsString <> '00') then
      begin
        Next;
        continue;
      end;

      // 出單機，海鮮類要從 Cooking 找，其他類直接拿 FoodId 去找
      if (DM.IsSeaFoodType(FieldByName('Type').AsString)) then
      begin
        while (not DM.ItemCookingDataSet.Eof) do
        begin
          ContractOutCode := DM.GetCookingContractOutCode(DM.ItemCookingDataSet.FieldByName('CookingId').AsInteger);
          PrinterNote := VarToStr(DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Note'));
          I := GridList.IndexOf(PrinterNote);
          if I <> -1 then
          begin
            Box := TListBox(GridList.Objects[I]);
            ContractOutFoodName := FieldByName('Name').AsString + '-' + DM.ItemCookingDataSet.FieldByName('CookingName').AsString + '(' + FieldByName('UnitSizeShow').AsString + ') * ' + FloatToStr(FieldByName('Count').AsFloat) + FieldByName('Unit').AsString;
            Box.Items.Append(ContractOutFoodName);
          end;
          DM.ItemCookingDataSet.Next;
        end;
      end
      else
      begin
        ContractOutCode := DM.GetFoodContractOutCode(FieldByName('FoodId').AsInteger);
        PrinterNote := VarToStr(DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Note'));
        I := GridList.IndexOf(PrinterNote);
        if I <> -1 then
        begin
          Box := TListBox(GridList.Objects[I]);
          ContractOutFoodName := FieldByName('Name').AsString + '(' + FieldByName('UnitSizeShow').AsString + ') * ' + FloatToStr(FieldByName('Count').AsFloat) + FieldByName('Unit').AsString;
          Box.Items.Append(ContractOutFoodName);
        end;
      end;

//      Grid := TStringGrid(GridList.Objects[I]);
//      if (Grid.RowCount = 1) then
//      begin
//        if Grid.Cells[0, 0] = '' then
//          Grid.Cells[0, 0] := FieldByName('Name').AsString
//        else
//        begin
//          Grid.RowCount := 2;
//          Grid.Cells[0, 1] := FieldByName('Name').AsString
//        end;
//      end
//      else
//      begin
//        Grid.RowCount := Grid.RowCount + 1;
//        Grid.Cells[0, Grid.RowCount - 1] := FieldByName('Name').AsString
//      end;

      Next;
    end;
  end;

end;

procedure TFormContractOut.OKButtonClick(Sender: TObject);
var
  I: Integer;
  PrinterName: String;
  Box: TListBox;
begin
  for I := 0 to LabelList.Count - 1 do
  begin
    PrinterName := LabelList.Strings[I];
    Box := TListBox(GridList.Objects[I]);
    if (Box.Items.Count = 0) then continue;
    
    FormContractOutReport.PreviewReport(PrinterName, Box.Items);
  end;

//  with DM.OrderItemDataSet do
//  begin
//    First;
//    while not Eof do
//    begin
//      // 還沒出過菜單才可以出
//      if (FieldByName('IsContractOut').AsString = '00') then
//      begin
//        Edit;
//        FieldByName('IsContractOut').AsString := '01';
//      end;
//      Next;
//    end;
//    ApplyUpdates(0);
//  end;
end;

end.
