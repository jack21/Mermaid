unit DelConfirmForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialog, StdCtrls;

type
  TFormDelConfirm = class(TFormBaseDialog)
    HintLabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDelConfirm: TFormDelConfirm;

implementation

{$R *.dfm}

end.
