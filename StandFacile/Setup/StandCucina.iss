; 30.08.2025 
; ricordarsi di mettere in passo la "AppVersion" qui sotto

[Setup]
AppVersion= 5.15.1

AppVerName=StandCucina {#SetupSetting("AppVersion")}
AppName=StandCucina 2025
AppPublisher=Mauro Artuso
AppId={{1AEDC603-53ED-4080-B1CA-4AA9DD029D0B}
DefaultDirName={sd}\StandFacile\StandCucina_515x
DefaultGroupName=StandFacile\StandCucina_515x\
SourceDir=..\exe
OutputDir=..\Setup
OutputBaseFilename=StandCucinaSetup_{#SetupSetting("AppVersion")}
LicenseFile=..\StandAux\licenza.txt
AppPublisherURL=http://www.standfacile.org/
SetupIconFile=..\..\StandCucina\src\Resources\Stand_C.ico
UninstallDisplayIcon={app}\StandCucina.exe

[Languages]
Name: it; MessagesFile: compiler:Languages\Italian.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: "..\..\StandCucina\exe\Release\StandCucina.exe"; DestDir: "{app}"; Flags: replacesameversion
Source: "..\..\StandCucina\doc\Manuale_StandCucina.pdf"; DestDir: "{app}"
Source: "..\..\StandCucina\StandAux\config.ini"; DestDir: "{app}";
Source: "..\StandAux\Licenza.txt"; DestDir: "{app}"
Source: "..\exe\Debug\Devart.Data.dll"; DestDir: "{app}"
Source: "..\exe\Debug\Devart.Data.MySql.dll"; DestDir: "{app}"
Source: "..\exe\Debug\Devart.Data.PostgreSql.dll"; DestDir: "{app}"

[Icons]
Name: {group}\StandCucina; Filename: {app}\StandCucina.exe; WorkingDir: {app}
Name: {group}\Vedi StandCucina files; Filename: {app}; WorkingDir: {app}
Name: {commondesktop}\StandCucina; Filename: {app}\StandCucina.exe; WorkingDir: {app}; Tasks: desktopicon

[Run]
Filename: {app}\StandCucina.exe; WorkingDir: {app}; Flags: nowait postinstall unchecked
