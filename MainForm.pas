unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, Grids, DBGrids, Provider, StdCtrls, DBCtrls,
  ExtCtrls, ComCtrls, Menus, DBClient, SimpleDS, IniFiles, Types;

type
  TFormMain = class(TForm)
    MainPanel: TPanel;
    TableGrid: TStringGrid;
    RefreshTableTimer: TTimer;
    ExitButton: TButton;
    TopPanel: TPanel;
    ActionLabel: TLabel;
    ClockLabel: TLabel;
    procedure MainPanelResize(Sender: TObject);
    procedure TableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure RefreshTableTimerTimer(Sender: TObject);
    procedure TableGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
    CellTextList: TStringList; // �C�@�� Cell �����e
    TablesIdList: TStringList; // �C�@�� Cell ������ TablesId
    FoodOrderIdList: TStringList; // �C�@�� Cell ������ FoodOrderId
    TableNameList: TStringList; // �C�@�� Cell ������ TableName
    Act: String;
    procedure BuildTableState;
    procedure ShowCheckoutForm(CurrentSelFoodOrderId: Integer);
    procedure ShowOrderForm(CurrentSelTablesId: Integer; CurrentSelFoodOrderId: Integer; TableName: String);
    procedure ChangeTable(NewTableId: Integer; CurrentSelFoodOrderId: Integer; NewTableName: String);
  public
    { Public declarations }
    procedure SetAction(A: String);
  end;

var
  FormMain: TFormMain;

implementation

uses DataModule, OrderForm, CheckoutForm, NewOrderForm, ChangeTableForm;

{$R *.dfm}


{��� Cell ������r}
procedure TFormMain.TableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  CurrentIndex: String;
  Grid: TStringGrid;
  CellText: String;
  TempPString:Array [0..255] of char;
  FoodOrderId: String;
begin
  if CellTextList = nil then exit;

  // �p��{�b�n�e���@��
  Grid := Sender AS TStringGrid;
  CurrentIndex := IntToStr(ARow * Grid.ColCount + ACol);

  // ��X���@��n��ܪ���r�A�p�G�O '' ��ܳo�@��S����l
  CellText := CellTextList.Values[CurrentIndex];
  if CellText = '' then exit;

  // �W���� + ��ܤ�r
//  if gdSelected in State then
//  begin
//    Grid.Canvas.Font.Color := clWhite;
//    Grid.Canvas.Brush.Color := clBlue;
//    Grid.Canvas.FillRect(Rect);
//    StrPCopy(TempPString, CellText);
//    DrawText(Grid.Canvas.Handle,TempPString,-1,Rect,DT_CENTER);
//  end
//  else
//  begin
    FoodOrderId := FoodOrderIdList.Values[CurrentIndex];
    if (FoodOrderId = '0') or (FoodOrderId = '') then
    begin
      Grid.Canvas.Brush.Color := DM.GetEmptyTableBgColor;
      Grid.Canvas.Font.Style := [];
    end
    else
    begin
      Grid.Canvas.Brush.Color := DM.GetTableBgColor;
      Grid.Canvas.Font.Style := [fsBold];
    end;

    Grid.Canvas.Font.Color := clBlack;
    Grid.Canvas.Font.Size := 12;
    Grid.Canvas.FillRect(Rect);
    StrPCopy(TempPString, CellText);
    DrawText(Grid.Canvas.Handle,TempPString,-1,Rect,DT_CENTER);
//  end;


//
//  if gdSelected in State then
//    ShowMessage('xxxxxxxxx')
//  else if gdFocused in State then
//    ShowMessage('ooooooooo')
//  else if gdFixed in State then
//    ShowMessage('fffffffff');
end;

{Table Cell ���ɡA��� Table �� TablesId�BFoodOrderId �O�U�ӡA�������I��U�ɥi�H���}
procedure TFormMain.TableGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  Grid: TStringGrid;
  CurrentCellIndex: String;
  CurrentSelTablesId: Integer; // �{�b��쪺 Cell ���N�� TablesId
  CurrentSelFoodOrderId: Integer; // �{�b��쪺 Cell ���N�� FoodOrderId(�p�G�S�q��A�|�O'0')
  CurrentSelTablesName: String; // �{�b��쪺 Table �W��
begin
  CanSelect := false;

  // �p��{�b��쨺�@��
  Grid := Sender AS TStringGrid;
  CurrentCellIndex := IntToStr(ARow * Grid.ColCount + ACol);

  // �ˬd��쪺 Cell �O�_����������骺��l
  if CellTextList.Values[CurrentCellIndex] = '' then exit;
  if TablesIdList.Values[CurrentCellIndex] = '' then exit;
  if TableNameList.Values[CurrentCellIndex] = '' then exit;
  if FoodOrderIdList.Values[CurrentCellIndex] = '' then exit;
  CurrentSelTablesId := StrToInt(TablesIdList.Values[CurrentCellIndex]);
  CurrentSelTablesName := TableNameList.Values[CurrentCellIndex];
  CurrentSelFoodOrderId := StrToInt(FoodOrderIdList.Values[CurrentCellIndex]);

  CanSelect := true;

  // ��ܭq��e���ε��b�e���δ���
  if Act = 'Order' then
    ShowOrderForm(CurrentSelTablesId, CurrentSelFoodOrderId, CurrentSelTablesName)
  else if Act = 'Checkout' then
    ShowCheckoutForm(CurrentSelFoodOrderId)
  else if Act = 'ChangeTable' then
    ChangeTable(CurrentSelTablesId, CurrentSelFoodOrderId, CurrentSelTablesName);
end;

{����}
procedure TFormMain.ChangeTable(NewTableId: Integer; CurrentSelFoodOrderId: Integer; NewTableName: String);
begin
  if CurrentSelFoodOrderId <> 0 then exit;

  FormChangeTable.OrgTableNameLabel.Caption := DM.FoodOrderDataSet.FieldByName('TableName').AsString;
  FormChangeTable.NewTableNameLabel.Caption := NewTableName;
  if not (FormChangeTable.ShowModal = mrOk) then exit;
  DM.ChangeTable(NewTableId);
  Close;
end;

procedure TFormMain.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

{��ܵ��b�e��}
procedure TFormMain.ShowCheckoutForm(CurrentSelFoodOrderId: Integer);
begin
  // �p�G�S���q�� PK�A��ܭn�s�W�q��
  if CurrentSelFoodOrderId = 0 then exit;

  // �C�X�q��
  DM.FoodOrderDataSet.Close;
  DM.FoodOrderDataSet.DataSet.ParamByName('FoodOrderId').AsInteger := CurrentSelFoodOrderId;
  DM.FoodOrderDataSet.Open;

  FormCheckout.Show;
  Close;
end;

{��ܭq��e��}
procedure TFormMain.ShowOrderForm(CurrentSelTablesId: Integer; CurrentSelFoodOrderId: Integer; TableName: String);
begin
  // �p�G�S���q�� PK�A��ܭn�s�W�q��
  if CurrentSelFoodOrderId = 0 then
  begin
    FormNewOrder.SetTableName(TableName);
    if not (FormNewOrder.ShowModal = mrOk) then exit;
    CurrentSelFoodOrderId := DM.NewOrder(CurrentSelTablesId);
  end
  else
  begin
    DM.OpenOrder(CurrentSelFoodOrderId);
  end;

  FormOrder.FoodOrderId := CurrentSelFoodOrderId;
  FormOrder.Show;
  Close;
end;

procedure TFormMain.BuildTableState;
var
  Location: String;
  TableName: String;
  FeeSum: Double;
  BuildTime: String;
  CellTextListTmp: TStringList;
  TablesIdListTmp: TStringList;
  FoodOrderIdListTmp: TStringList;
  TableNameListTmp: TStringList;
//  CellTotal: Integer; // �e���W���X�� Cell
begin
//  CellTotal := TableGrid.ColCount * TableGrid.RowCount;
  CellTextListTmp := TStringList.Create;
  TablesIdListTmp := TStringList.Create;
  FoodOrderIdListTmp := TStringList.Create;
  TableNameListTmp := TStringList.Create;

  // ����
  with DM.CurrentOrderSQLDataSet do
  begin
    if not Active then exit;
    if IsEmpty then exit;

    Refresh;
    First;

    while not Eof do
    begin
      Location := IntToStr(FieldByName('Location').AsInteger);
      TableName := FieldByName('Name').AsString;
      TableNameListTmp.Append(Location + '=' + TableName);
      TablesIdListTmp.Append(Location + '=' + IntToStr(FieldByName('TablesId').AsInteger));

      // ��ܸӮ��W�A�p�G�{�b��n���q��A�A�h��ܭq����B+�q��ɶ�
      if FieldByName('FoodOrderId').IsNull then
      begin
        FoodOrderIdListTmp.Append(Location + '=0');
        CellTextListTmp.Append(Location + '=' + TableName);
      end
      else
      begin
        FoodOrderIdListTmp.Append(Location + '=' + IntToStr(FieldByName('FoodOrderId').AsInteger));
        FeeSum := FieldByName('RealFee').AsFloat;
        BuildTime := FormatDateTime('hh:mm', FieldByName('BuildTime').AsDateTime);
        CellTextListTmp.Append(Location + '=' + TableName + #13#10 + '$' + FloatToStr(FeeSum) + #13#10 + BuildTime);
      end;
      Next;
    end;
  end;

  // �N Temp �� List ��^�쥻����Ƥ�
  if CellTextList = nil then
  begin
    CellTextList := CellTextListTmp;
  end
  else
  begin
    CellTextList.Clear;
    CellTextList := CellTextListTmp;
  end;
  if TablesIdList = nil then
  begin
    TablesIdList := TablesIdListTmp;
  end
  else
  begin
    TablesIdList.Clear;
    TablesIdList := TablesIdListTmp;
  end;
  if FoodOrderIdList = nil then
  begin
    FoodOrderIdList := FoodOrderIdListTmp;
  end
  else
  begin
    FoodOrderIdList.Clear;
    FoodOrderIdList := FoodOrderIdListTmp;
  end;
  if TableNameList = nil then
  begin
    TableNameList := TableNameListTmp;
  end
  else
  begin
    TableNameList.Clear;
    TableNameList := TableNameListTmp;
  end;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RefreshTableTimer.Enabled := false;
end;

procedure TFormMain.FormCreate(Sender: TObject);
//var
//  IniFile: TIniFile;
begin
//  IniFile:=Tinifile.create('config.ini');
//  Width := IniFile.ReadInteger('MailForm', 'Width', Constraints.MinWidth);
//  Height := IniFile.ReadInteger('MailForm', 'Height', Constraints.MinHeight);
//  Top := IniFile.ReadInteger('MailForm', 'Top', 0);
//  Left := IniFile.ReadInteger('MailForm', 'Left', 0);
//  IniFile.Free;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
//var
//  IniFile: TIniFile;
begin
//  IniFile:=Tinifile.create('config.ini');
//  IniFile.WriteInteger('MailForm', 'Width', Width);
//  IniFile.WriteInteger('MailForm', 'Height', Height);
//  IniFile.WriteInteger('MailForm', 'Top', Top);
//  IniFile.WriteInteger('MailForm', 'Left', Left);
//  IniFile.Free;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  RefreshTableTimer.Enabled := true;
end;

procedure TFormMain.MainPanelResize(Sender: TObject);
begin
  TableGrid.DefaultColWidth := (MainPanel.Width - 14) div TableGrid.ColCount;
  TableGrid.DefaultRowHeight := (MainPanel.Height - 14) div TableGrid.RowCount;
end;

procedure TFormMain.RefreshTableTimerTimer(Sender: TObject);
begin
  ClockLabel.Caption := '�ɶ�:' + TimeToStr(now);

  if not Active then exit;
  BuildTableState;
  TableGrid.Repaint;
end;

procedure TFormMain.SetAction(A: String);
begin
  if A = 'Checkout' then
  begin
    Act := A;
    ActionLabel.Caption := '���b';
  end
  else if A = 'Order' then
  begin
    Act := A;
    ActionLabel.Caption := '�I��';
  end
  else if A = 'ChangeTable' then
  begin
    Act := A;
    ActionLabel.Caption := '����';
  end
  else
  begin
    ActionLabel.Caption := '�L';
  end;

end;

end.
