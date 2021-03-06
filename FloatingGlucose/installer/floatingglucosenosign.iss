; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "FloatingGlucose"

#define MyAppPublisher "code.bjorninge.no"
#define MyAppURL "http://code.bjorninge.no"
#define MyAppExeName "FloatingGlucose.exe"
#define SourceDir ".."
;should be set via iscc
;cd installer
;"%programfiles(x86)%/Inno Setup 5/ISCC.exe" floatingglucose.iss
;#define MyAppVersion "0.9.9test"
;#define ReleaseType "Release"

;setting up signing:
; in inno setup, go to tools->configure sign tools
; add a new tool, call it "signtool" with the following value 
; "C:\Program Files (x86)\Windows Kits\8.1\bin\x64\signtool.exe" sign /fd sha256 /tr http://time.certum.pl/ /sha1 0B360481F3F59C7F398FB0417AA4B341EB018906 $f
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
;SignTool=signtool /d $qFloatingGlucoseInstaller$q $f
AppId={{B271DEE6-C788-4604-B392-8B8DD16C97A8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename="{#MyAppName}Setup-{#ReleaseType}-{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
SetupIconFile="{#SourceDir}\noun_335372_cc_v2.ico"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "startup"; Description: "{cm:AutoStartProgram,{#MyAppName}}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "..\bin\{#ReleaseType}\FloatingGlucose.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\FloatingGlucose.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\FloatingGlucose.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\Newtonsoft.Json.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\NAudio.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\NAudio.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\README_attributions.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\{#ReleaseType}\version.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
[Dirs]
Name: "{app}"; Permissions: users-full

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: startup

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

