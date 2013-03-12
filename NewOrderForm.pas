unit NewOrderForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormNewOrder = class(TForm)
    OKButton: TButton;
    CancelButton: TButton;
    Label1: TLabel;
    TableLabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetTableName(TableName: String);
  end;

var
  FormNewOrder: TFormNewOrder;

implementation

{$R *.dfm}

procedure TFormNewOrder.SetTableName(TableName: String);
begin
  TableLabel.Caption := TableName;
end;

end.
