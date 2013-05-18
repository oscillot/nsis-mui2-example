;--------------------------------
;Include Modern UI

!include "MUI2.nsh"

;--------------------------------
;General
Name "MUI2 EXAMPLE"
OutFile "MUI2_EXAMPLE.EXE"

;Default installation folder
InstallDir "$LOCALAPPDATA\Modern UI Test"

;Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------
;Languages

!insertmacro MUI_LANGUAGE "English"

;--------------------------------
;defines MUST come before pages to apply to them (in hindsight: duh!)

!define MUI_PAGE_HEADER_TEXT "Monkey Town Presents:"
!define MUI_PAGE_HEADER_SUBTEXT "Monkey Chooser (c) 2013"

!define MUI_WELCOMEPAGE_TITLE "Monkeys!!!"
!define MUI_WELCOMEPAGE_TEXT "Welcome to the Monkey Chooser Installer!"
;Extra space for the title area
;!insertmacro MUI_WELCOMEPAGE_TITLE_3LINES


!define MUI_LICENSEPAGE_TEXT_TOP "You will not read this but you will agree to it:"
!define MUI_LICENSEPAGE_TEXT_BOTTOM "Now you will click the box."
!define MUI_LICENSEPAGE_BUTTON "I agree"

;Display a checkbox the user has to check to agree with the license terms.
!define MUI_LICENSEPAGE_CHECKBOX
!define MUI_LICENSEPAGE_CHECKBOX_TEXT "Fill me up baby."

;*OR*
;Display two radio buttons to allow the user to choose between accepting the license terms or not.
;!define MUI_LICENSEPAGE_RADIOBUTTONS
;!define MUI_LICENSEPAGE_RADIOBUTTONS_TEXT_ACCEPT "MUI_LICENSEPAGE_RADIOBUTTONS_TEXT_ACCEPT"
;!define MUI_LICENSEPAGE_RADIOBUTTONS_TEXT_DECLINE "MUI_LICENSEPAGE_RADIOBUTTONS_TEXT_DECLINE"

!define MUI_COMPONENTSPAGE_TEXT_TOP "Select some Monkeys"
!define MUI_COMPONENTSPAGE_TEXT_COMPLIST "Choose your Monkeys:"
!define MUI_COMPONENTSPAGE_TEXT_INSTTYPE "Monkey List:"
;!define MUI_COMPONENTSPAGE_TEXT_DESCRIPTION_TITLE "MUI_COMPONENTSPAGE_TEXT_DESCRIPTION_TITLE"
;!define MUI_COMPONENTSPAGE_TEXT_DESCRIPTION_INFO "MUI_COMPONENTSPAGE_TEXT_DESCRIPTION_INFO"

;!define MUI_DIRECTORYPAGE_TEXT_TOP "MUI_DIRECTORYPAGE_TEXT_TOP"
;!define MUI_DIRECTORYPAGE_TEXT_DESTINATION "MUI_DIRECTORYPAGE_TEXT_DESTINATION"
;!define MUI_DIRECTORYPAGE_VARIABLE $INSTDIR

!define MUI_INSTFILESPAGE_FINISHHEADER_TEXT "Everything is done."
!define MUI_INSTFILESPAGE_FINISHHEADER_SUBTEXT "Now there are monkeys loose. Sick sick monkeys."
!define MUI_INSTFILESPAGE_ABORTHEADER_TEXT "You didn't let it finish."
!define MUI_INSTFILESPAGE_ABORTHEADER_SUBTEXT "Patience is a virtue you know. I guess you aren't terribly virtuous."

!define MUI_FINISHPAGE_TITLE "Finished!"
;!define MUI_FINISHPAGE_TITLE_3LINES
!define MUI_FINISHPAGE_TEXT "Monkey Time!"
;Extra space for the text area (if using checkboxes).
;!define MUI_FINISHPAGE_TEXT_LARGE
!define MUI_FINISHPAGE_BUTTON "Booyah."
;!define MUI_FINISHPAGE_CANCEL_ENABLED
;!define MUI_FINISHPAGE_TEXT_REBOOT "MUI_FINISHPAGE_TEXT_REBOOT"
;!define MUI_FINISHPAGE_TEXT_REBOOTNOW "MUI_FINISHPAGE_TEXT_REBOOTNOW"
;!define MUI_FINISHPAGE_TEXT_REBOOTLATER "MUI_FINISHPAGE_TEXT_REBOOTLATER"
;!define MUI_FINISHPAGE_TEXT_REBOOTLATER_DEFAULT

;!define MUI_FINISHPAGE_RUN "some_exe_file"
;!define MUI_FINISHPAGE_RUN_TEXT "MUI_FINISHPAGE_RUN_TEXT"
;Parameters for the application to run. Don't forget to escape double quotes in the value (use $\").
;!define MUI_FINISHPAGE_RUN_PARAMETERS
;!define MUI_FINISHPAGE_RUN_NOTCHECKED
;!define MUI_FINISHPAGE_RUN_FUNCTION

!define MUI_FINISHPAGE_SHOWREADME "somefile.txt"
;Don't make this label too long or it'll cut on top and bottom.
!define MUI_FINISHPAGE_SHOWREADME_TEXT "This would open a README if there was one."
!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
;MUI_FINISHPAGE_SHOWREADME_FUNCTION Function

!define MUI_FINISHPAGE_LINK "This goes to reddit just because."
!define MUI_FINISHPAGE_LINK_LOCATION "http://www.reddit.com/"
;!define MUI_FINISHPAGE_LINK_COLOR RRGGBB

!define MUI_FINISHPAGE_NOREBOOTSUPPORT

;!define MUI_UNCONFIRMPAGE_TEXT_TOP "MUI_UNCONFIRMPAGE_TEXT_TOP"
;!define MUI_UNCONFIRMPAGE_TEXT_LOCATION "MUI_UNCONFIRMPAGE_TEXT_LOCATION"

;hide descriptions on hover
;!define MUI_COMPONENTSPAGE_NODESC

;--------------------------------
;Pages

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "C:\Users\Oscillot\Desktop\License.txt"
!insertmacro MUI_PAGE_COMPONENTS
;!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

;!insertmacro MUI_UNPAGE_WELCOME
;!insertmacro MUI_UNPAGE_CONFIRM
;!insertmacro MUI_UNPAGE_INSTFILES
;!insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;Installer Sections

Section "ButtMonkey" ButtMonkey
	MessageBox MB_OK "ButtMonkey"
SectionEnd


Section "AssMonkey" AssMonkey
	MessageBox MB_OK "AssMonkey"
SectionEnd

Section "JizzMonkey" JizzMonkey
	MessageBox MB_OK "JizzMonkey"
SectionEnd

;--------------------------------
;Uninstaller Section
;
;Section "Uninstall"
;
;  ;ADD YOUR OWN STUFF HERE...
;
;  ;Delete "$INSTDIR\Uninstall.exe"
;
;  ;RMDir "$INSTDIR"
;
;  ;DeleteRegKey /ifempty HKCU "Software\Modern UI Test"
;
;SectionEnd