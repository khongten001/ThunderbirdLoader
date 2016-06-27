program ThunderbirdLoader;

uses
  SysUtils, ShellApi;

const
  SW_SHOWMAXIMIZED = 3;

var
  AppPath: string;

{$R *.res}

begin
  AppPath := ExtractFilePath(ParamStr(0));
  ShellExecute(0, 'Open', PChar(AppPath + 'thunderbird.exe'), PChar('-profile "' + AppPath + 'profile"'), nil, SW_SHOWMAXIMIZED) ;
end.

