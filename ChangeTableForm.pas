unit ChangeTableForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, BaseDialog;

type
  TFormChangeTable = class(TFormBaseDialog)
    Image1: TImage;
    OrgTableNameLabel: TLabel;
    NewTableNameLabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChangeTable: TFormChangeTable;

implementation

uses DataModule;

{$R *.dfm}

end.
