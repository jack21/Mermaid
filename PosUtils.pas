unit PosUtils;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils;

type
  TPos = class(TObject)
  private
    F: TextFile;
  public
    procedure Initial(Port: String);
    procedure FontSize(Ratio: Integer);
    procedure FontHeightSize(HeightRatio: Integer);
    procedure WriteText(Text: String);
    procedure WriteLine(Text: String); overload;
    procedure WriteLeftPad(Text: String; PadSize: Integer);
    procedure WriteRightPad(Text: String; PadSize: Integer);
    procedure WriteCenter(Text: String);
    procedure WriteLnCenter(Text: String);
    procedure WriteRight(Text: String);
    procedure WriteLine(); overload;
    procedure PaperFeed();
    procedure Cut();
    procedure Close();
  end;

  TReceipt = class(TObject)
  private
    F: TextFile;
  public
    procedure Initial(Port: String);
    procedure WriteText(Text: String);
    procedure WriteLine(Text: String); overload;
    procedure WriteLeftPad(Text: String; PadSize: Integer);
    procedure WriteRightPad(Text: String; PadSize: Integer);
    procedure WriteLine(); overload;
    procedure PrintAndFeed();
    procedure Close();
  end;

function LeftPad(Text: String; Size: Integer; PadChar: Char): String;
function RightPad(Text: String; Size: Integer; PadChar: Char): String;
function StrLength(const Value: string): Integer;

var
  Pos: TPos;
  Receipt: TReceipt;

implementation

const
  ESC: char = chr(27);
  FS: char = chr(28);
  GS: char = chr(29);

// -----------------------------------------------------------------------------
// --- TPos --------------------------------------------------------------------
// -----------------------------------------------------------------------------

{初始化 Port}
procedure TPos.Initial(Port: String);
begin
   Assignfile(f,Port);
   rewrite(f);
   {初始化打印機}
   write(f, ESC + '@');   //Chr(27)+'@' 即ESC @ 指令
   {設置漢字顯示方式}
   write(f, FS + chr(ord('&')));   //Chr(28) 即 FS
end;

{字體放大}
procedure TPos.FontSize(Ratio: Integer);
var
  RatioChar: Char;
begin
  case Ratio of
    1: RatioChar := chr($00);
    2: RatioChar := chr($11);
    3: RatioChar := chr($22);
    4: RatioChar := chr($33);
    5: RatioChar := chr($44);
    6: RatioChar := chr($55);
    7: RatioChar := chr($66);
    8: RatioChar := chr($77);
    else RatioChar := chr($00);
  end;
  Write(f, GS + '!' + RatioChar);
end;

procedure TPos.FontHeightSize(HeightRatio: Integer);
var
  RatioChar: Char;
begin
  case HeightRatio of
    1: RatioChar := chr($00);
    2: RatioChar := chr($01);
    3: RatioChar := chr($02);
    4: RatioChar := chr($03);
    5: RatioChar := chr($04);
    6: RatioChar := chr($05);
    7: RatioChar := chr($06);
    8: RatioChar := chr($07);
    else RatioChar := chr($00);
  end;
  Write(f, GS + '!' + RatioChar);
end;

{列印置左}
procedure TPos.WriteText(Text: String);
begin
  Write(f, ESC + 'a' + chr($00));
  Write(f, Text);
end;

{列印置左}
procedure TPos.WriteLine(Text: String);
begin
  Write(f, ESC + 'a' + chr($00));
  WriteLn(f, Text);
end;

{列印時，左邊留空白}
procedure TPos.WriteLeftPad(Text: String; PadSize: Integer);
begin
  WriteText(LeftPad(Text, PadSize, ' '));
end;

{列印時，右邊留空白}
procedure TPos.WriteRightPad(Text: String; PadSize: Integer);
begin
  WriteText(RightPad(Text, PadSize, ' '));
end;

{列印置中}
procedure TPos.WriteCenter(Text: String);
begin
  Write(f, ESC + 'a' + chr($01));
  Write(f, Text);
end;

{列印置中}
procedure TPos.WriteLnCenter(Text: String);
begin
  Write(f, ESC + 'a' + chr($01));
  WriteLn(f, Text);
end;

{列印置右}
procedure TPos.WriteRight(Text: String);
begin
  Write(f, ESC + 'a' + chr($02));
  Write(f, Text);
end;

{斷行}
procedure TPos.WriteLine();
begin
  WriteLn(f, '');
end;

{順時針走紙控制}
procedure TPos.PaperFeed();
begin
  Writeln(f, ESC + chr(ord('J')) + chr($FF));
  Writeln(f, ESC + chr(ord('J')) + chr($20));
end;

{斷紙}
procedure TPos.Cut();
begin
   Write(f, GS + 'V' + chr($00)); // 4-80: 0=full cut, 1=partial cut
//   Write(f, GS + 'V' + chr($66) + chr($100));
end;

{關檔}
procedure TPos.Close();
begin
  flush(f);
  Closefile(f);
end;

// -----------------------------------------------------------------------------
// --- TReceipt ----------------------------------------------------------------
// -----------------------------------------------------------------------------

{初始化 Port}
procedure TReceipt.Initial(Port: String);
begin
   Assignfile(f,Port);
   rewrite(f);
end;

{列印置左}
procedure TReceipt.WriteText(Text: String);
begin
  Write(f, Text);
end;

{列印置左}
procedure TReceipt.WriteLine(Text: String);
begin
  WriteLn(f, Text);
end;

{列印時，左邊留空白}
procedure TReceipt.WriteLeftPad(Text: String; PadSize: Integer);
begin
  WriteText(LeftPad(Text, PadSize, ' '));
end;

{列印時，右邊留空白}
procedure TReceipt.WriteRightPad(Text: String; PadSize: Integer);
begin
  WriteText(RightPad(Text, PadSize, ' '));
end;

{斷行}
procedure TReceipt.WriteLine();
begin
  WriteLn(f, '');
end;

{順時針走紙控制}
procedure TReceipt.PrintAndFeed();
begin
  Writeln(f, ESC + chr(ord('J')));
end;

{關檔}
procedure TReceipt.Close();
begin
  flush(f);
  Closefile(f);
end;

// -----------------------------------------------------------------------------
// --- 共用 Method -------------------------------------------------------------
// -----------------------------------------------------------------------------

function LeftPad(Text: String; Size: Integer; PadChar: Char): String;
var
  Pads: Integer;
begin
  Pads := Size - StrLength(Text);
  if (Pads <= 0) then
  begin
    Result := Text;
    Exit;
  end;
  Result := DupeString(PadChar, Pads) + Text;
end;


function RightPad(Text: String; Size: Integer; PadChar: Char): String;
var
  Pads: Integer;
begin
  Pads := Size - StrLength(Text);
  if (Pads <= 0) then
  begin
    Result := Text;
    Exit;
  end;
  Result := Text + DupeString(PadChar, Pads);
end;

function StrLength(const Value: string): Integer;
var
  i, Count:   Integer;
  S: AnsiString;
begin
//  Count := 0;
//  for i := 1 to Length(Value) do
//  begin
//    if ByteType(Value, i) = mbSingleByte then   //是英文
//      Count := Count + 1
//    else if ByteType(Value, i) = mbLeadByte then   //是漢字
//      Count := Count + 2;
//  end;
//  Result := Count;
  S := Value;
  Result := Length(S);
end;

end.
