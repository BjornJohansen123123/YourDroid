; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "YourDroid"
#define MyAppVersion "2.2-beta.1"
#define MyAppPublisher "Profi_GMan"
#define MyAppURL "https://yourdroid.github.io/"
#define MyAppExeName "yourdroid.exe"

[Setup]
;DisableDirPage=yes
DefaultDirName=C:\{#MyAppName}
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C441E1AC-42FC-4058-A531-4B4C3EB76D0E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
;DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=D:\
OutputBaseFilename=YourDroid-{#MyAppVersion}
SetupIconFile=D:\User\Programming\YourDroid\yourdroid.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\User\Programming\YourDroid\bin\yourdroid.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "D:\User\Programming\YourDroid\bin\install.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5WinExtras.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libcrypto-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\libssl-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\User\Programming\YourDroid\bin\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "D:\User\Programming\YourDroid\bin\config\*"; DestDir: "{app}\config"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\styles\*"; DestDir: "{app}\styles"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\YourDroid\bin\bearer\*"; DestDir: "{app}\bearer"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\User\Programming\Ext2Fsd-0.69.exe"; AfterInstall: RunExt4FsdInstaller; Flags: deleteafterinstall ignoreversion; DestDir: {tmp}
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Dirs]
Name: "{app}\config"

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Code]
procedure RunExt4FsdInstaller;
var
  ResultCode: Integer;
begin
  if (not FileExists('C:\Windows\System32\drivers\Ext2Fsd.sys')) then
    if not Exec(ExpandConstant('{tmp}\Ext2Fsd-0.69.exe'), '', '', SW_SHOW, ewWaitUntilTerminated, ResultCode)
    then
      MsgBox('Other installer failed to run!' + #13#10 +
        SysErrorMessage(ResultCode), mbError, MB_OK);
end;
