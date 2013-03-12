unit NewTableNameForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormNewTableName = class(TForm)
    Label1: TLabel;
    OrgTableNameLabel: TLabel;
    Label3: TLabel;
    NewTableNameEdit: TEdit;
    OKButton: TButton;
    CancelButton: TButton;
    ErrorLabel: TLabel;
    DelButton: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetOrgTableName(TableName: String);
  end;

var
  FormNewTableName: TFormNewTableName;

implementation

uses DataModule, ConfigForm;

{$R *.dfm}

procedure TFormNewTableName.SetOrgTableName(TableName: String);
begin
  if TableName = '' then
  begin
    OrgTableNameLabel.Caption := '(¶}·s®à)';
    DelButton.Hide;
  end
  else
  begin
    OrgTableNameLabel.Caption := TableName;
    DelButton.Show;
  end;
end;

procedure TFormNewTableName.FormShow(Sender: TObject);
begin
  NewTableNameEdit.Clear;
  ErrorLabel.Hide;
end;

procedure TFormNewTableName.OKButtonClick(Sender: TObject);
begin
  if NewTableNameEdit.Text = '' then
  begin
    ErrorLabel.Show;
    exit;
  end;

  FormConfig.NewTableName := NewTableNameEdit.Text;
  ModalResult := mrOK;
end;

end.
