unit KeyboardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NumKeyboardForm, StdCtrls, ExtCtrls;

type
  TFormKeyboard = class(TFormNumKeyboard)
    ButtonA: TButton;
    ButtonZ: TButton;
    ButtonY: TButton;
    ButtonX: TButton;
    ButtonW: TButton;
    ButtonV: TButton;
    ButtonU: TButton;
    ButtonT: TButton;
    ButtonS: TButton;
    ButtonR: TButton;
    ButtonQ: TButton;
    ButtonP: TButton;
    ButtonB: TButton;
    ButtonC: TButton;
    ButtonD: TButton;
    ButtonE: TButton;
    ButtonF: TButton;
    ButtonG: TButton;
    ButtonH: TButton;
    ButtonI: TButton;
    ButtonJ: TButton;
    ButtonK: TButton;
    ButtonL: TButton;
    ButtonM: TButton;
    ButtonN: TButton;
    ButtonO: TButton;
    procedure ButtonAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonBMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonCMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonFMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonIMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonJMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonLMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonMMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonOMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonQMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonRMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonVMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonWMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonXMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonYMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ButtonZMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKeyboard: TFormKeyboard;

implementation

uses DataModule;


{$R *.dfm}


procedure TFormKeyboard.ButtonAMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('A');
end;

procedure TFormKeyboard.ButtonBMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('B');
end;

procedure TFormKeyboard.ButtonCMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('C');
end;

procedure TFormKeyboard.ButtonDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('D');
end;

procedure TFormKeyboard.ButtonEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('E');
end;

procedure TFormKeyboard.ButtonFMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('F');
end;

procedure TFormKeyboard.ButtonGMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('G');
end;

procedure TFormKeyboard.ButtonHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('H');
end;

procedure TFormKeyboard.ButtonIMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('I');
end;

procedure TFormKeyboard.ButtonJMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('J');
end;

procedure TFormKeyboard.ButtonKMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('K');
end;

procedure TFormKeyboard.ButtonLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('L');
end;

procedure TFormKeyboard.ButtonMMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('M');
end;

procedure TFormKeyboard.ButtonNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('N');
end;

procedure TFormKeyboard.ButtonOMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('O');
end;

procedure TFormKeyboard.ButtonPMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('P');
end;

procedure TFormKeyboard.ButtonQMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('Q');
end;

procedure TFormKeyboard.ButtonRMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('R');
end;

procedure TFormKeyboard.ButtonSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('S');
end;

procedure TFormKeyboard.ButtonTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('T');
end;

procedure TFormKeyboard.ButtonUMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('U');
end;

procedure TFormKeyboard.ButtonVMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('V');
end;

procedure TFormKeyboard.ButtonWMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('W');
end;

procedure TFormKeyboard.ButtonXMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('X');
end;

procedure TFormKeyboard.ButtonYMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('Y');
end;

procedure TFormKeyboard.ButtonZMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Key('Z');
end;


end.
