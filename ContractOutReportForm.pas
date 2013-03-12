unit ContractOutReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBClient, SimpleDS, Printers;

type
  TFormContractOutReport = class(TForm)
    ContractOutReport: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    PrinterNoteLabel: TQRLabel;
    NameDataSet: TClientDataSet;
    NameDataSetFoodName: TStringField;
    QRShape1: TQRShape;
    procedure OrderItemDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PreviewReport(PrinterNote: String; Items: TStrings);
  end;

var
  FormContractOutReport: TFormContractOutReport;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormContractOutReport.PreviewReport(PrinterNote: String; Items: TStrings);
var
  I: Integer;
  PrinterName: String;
  PrinterIndex: Integer;
begin
  NameDataSet.CreateDataSet;
  NameDataSet.Open;
  for I := 0 to Items.Count - 1 do
  begin
    NameDataSet.Append;
    NameDataSet.FieldByName('FoodName').AsString := Items[I];
    NameDataSet.Post;
  end;

  PrinterNoteLabel.Caption := PrinterNote;
  PrinterName := VarToStr(DM.PrinterDataSet.Lookup('Note', PrinterNote, 'PrinterName'));

  PrinterIndex := -1;
  for i := 0 to printer.printers.count - 1 do
  begin
    if printer.printers.Strings[i] = PrinterName then
      PrinterIndex := i;
  end;

  if (PrinterIndex = -1) then
  begin
    MessageDlg('找不到印表機(' + PrinterName + ')', mtWarning, [mbOK], 0);
  end
  else
  begin
    ContractOutReport.PrinterSettings.PrinterIndex := PrinterIndex;
    ContractOutReport.Print;
  end;

  NameDataSet.Close;
end;


procedure TFormContractOutReport.OrderItemDataSetCalcFields(DataSet: TDataSet);
var
  ContractOutCode : String;
begin
  if DataSet.FieldByName('Discount').AsString = '01' then
    DataSet.FieldByName('DiscountShow').AsString := 'V';

  if DataSet.FieldByName('IsReturn').AsString = '01' then
    DataSet.FieldByName('IsReturnShow').AsString := 'V';

  if DataSet.FieldByName('UnitSize').AsString = '00' then
    DataSet.FieldByName('UnitSizeShow').AsString := '小'
  else if DataSet.FieldByName('UnitSize').AsString = '01' then
    DataSet.FieldByName('UnitSizeShow').AsString := '中'
  else if DataSet.FieldByName('UnitSize').AsString = '02' then
    DataSet.FieldByName('UnitSizeShow').AsString := '大';

  if (not DM.ContractOutDataSet.Active) then
    DM.ContractOutDataSet.Open;

  ContractOutCode := DM.GetFoodContractOutCode(DataSet.FieldByName('FoodId').AsInteger);
  DataSet.FieldByName('PrinterNote').AsString := VarToStr(DM.ContractOutDataSet.Lookup('ContractOutCode', ContractOutCode, 'Note'));

  DataSet.FieldByName('ContractOutFoodName').AsString := DataSet.FieldByName('Name').AsString + '(' + FloatToStr(DataSet.FieldByName('Count').AsFloat) + DataSet.FieldByName('Unit').AsString + ')'
end;

end.
