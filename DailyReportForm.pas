unit DailyReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBClient, SimpleDS, SqlExpr;

type
  TFormDailyReport = class(TForm)
    DailyReport: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    TitleLabel: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    DailyRankDataSet: TSimpleDataSet;
    DailyRankDataSetName: TWideStringField;
    DailyRankDataSetType: TWideStringField;
    DailyRankDataSetUnit: TWideStringField;
    DailyRankDataSetTypeStr: TWideStringField;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    DailyRankDataSetTotal: TFloatField;
    QRBand4: TQRBand;
    PageExpr: TQRExpr;
    SumPageLabel: TQRLabel;
    procedure DailyRankDataSetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintDailyReport(Date: TDateTime;  FoodTypeList: TStringList);
  end;

var
  FormDailyReport: TFormDailyReport;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormDailyReport.DailyRankDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('TypeStr').AsString := DM.GetFoodTypeName(DataSet.FieldByName('Type').AsString);
end;


procedure TFormDailyReport.PrintDailyReport(Date: TDateTime; FoodTypeList: TStringList);
var
  FoodTypeStr: String;
  Sql: String;
  I: Integer;
begin
  for I := 0 to FoodTypeList.Count - 1 do
  begin
    if I = 0 then
    begin
      FoodTypeStr := '''' + FoodTypeList.Strings[I] + '''';
    end
    else
    begin
      FoodTypeStr := FoodTypeStr + ',''' + FoodTypeList.Strings[I] + '''';
    end;
  end;

  Sql := ' SELECT *'
       + ' FROM'
       + ' ('
       + '   SELECT OrderItem.FoodId, Sum('
       + '     CASE IsReturn'
       + '     WHEN ''01'' THEN (0-Count)'
       + '     ELSE Count'
       + '     END'
       + '   ) AS Total'
       + '   FROM OrderItem'
       + '   WHERE FoodOrderId IN'
       + '   ('
       + '     SELECT FoodOrderId'
       + '     FROM FoodOrder '
       + '     WHERE DATE_FORMAT(BuildTime,''%Y/%m/%d'') = ''' + FormatDateTime('yyyy/mm/dd', Date) +  ''''
       + '     AND Visible = ''01'' '
       + '   )'
       + '   GROUP BY OrderItem.FoodId'
       + ' ) FoodSummary'
       + ' LEFT JOIN Food ON FoodSummary.FoodId = Food.FoodId'
       + ' WHERE Type IN (' + FoodTypeStr + ')'
       + ' ORDER BY Food.Type, FoodSummary.Total DESC';

  DailyRankDataSet.Close;
  DailyRankDataSet.DataSet.CommandText := Sql;
  DailyRankDataSet.Open;

  TitleLabel.Caption := FormatDateTime('yyyy年m月d日排行榜報表', Date);
  DailyReport.Prepare;
  SumPageLabel.Caption := '頁 / 共' + IntToStr(DailyReport.QRPrinter.PageCount) + '頁';

  if DM.IsPrintPreview then
    DailyReport.PreviewModal
  else
    DailyReport.Print;
end;

end.
