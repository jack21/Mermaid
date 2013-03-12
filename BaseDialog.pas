unit BaseDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormBaseDialog = class(TForm)
    OKButton: TButton;
    CancelButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseDialog: TFormBaseDialog;

implementation

uses DataModule;

{$R *.dfm}

end.
