; Script generado para el lanzamiento de Carnot Engine v3.0 - MNDR Systems
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Carnot Engine"
#define MyAppVersion "3.0"
#define MyAppPublisher "MNDR Systems, Inc."
; CORRECCIÓN: Se agregó el espacio para coincidir con el nombre real en la carpeta dist
#define MyAppExeName "Carnot Engine.exe"

[Setup]
; NOTE: El AppId se mantiene igual para permitir actualizaciones sobre versiones previas
AppId={{05341062-AD50-4FA0-9778-1B25A3C2F434}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
; Se añadió la carpeta del publicador para una instalación más profesional
DefaultDirName={autopf}\MNDR Systems\{#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=yes
; Rutas de archivos de información (Asegúrate de que existan en Descargas)
LicenseFile=C:\Users\gilbe\Downloads\LICENSE.txt
InfoBeforeFile=C:\Users\gilbe\Downloads\README.txt
InfoAfterFile=C:\Users\gilbe\Downloads\CHANGELOG.txt
OutputDir=C:\Users\gilbe\Downloads\out
OutputBaseFilename=CarnotEngine_v3.0_Setup
SetupIconFile=C:\Users\gilbe\Downloads\BDAG\icon.ico
SolidCompression=yes
WizardStyle=modern zircon

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; IMPORTANTE: Las rutas ahora apuntan correctamente a la carpeta de salida de electron-builder
Source: "C:\Users\gilbe\Downloads\BDAG\dist\win-unpacked\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\gilbe\Downloads\BDAG\dist\win-unpacked\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent