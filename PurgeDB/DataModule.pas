unit DataModule;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, DB, SqlExpr, IniFiles, ImgList,
  Controls;

type
  TDM = class(TDataModule)
    GuduConnection: TSQLConnection;
    ImageList1: TImageList;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GetConfigIni: TIniFile;
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  IniFile: TIniFile;
  IP: String;
begin
  IniFile := GetConfigIni;
  IP := IniFile.ReadString('Database', 'IP', 'localhost');
  IniFile.Free;

  try
    GuduConnection.Params.Values['HostName'] := IP;
    GuduConnection.Open;
  except
  end;
end;

function TDM.GetConfigIni: TIniFile;
begin
  if (FileExists('./config.ini')) then
  begin
    result := Tinifile.create('./config.ini');
  end
  else
  begin
    result := Tinifile.create('../config.ini');
  end;
end;

end.
