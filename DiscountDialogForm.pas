unit DiscountDialogForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialog, StdCtrls;

type
  TFormDiscountDialog = class(TFormBaseDialog)
    Label1: TLabel;
    Label2: TLabel;
    DiscountLabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDiscountDialog: TFormDiscountDialog;

implementation

{$R *.dfm}

end.
