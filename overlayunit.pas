unit overlayunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  unix, StdCtrls, Spin, ComCtrls, Buttons, ColorBox, ActnList, Menus, aboutunit,
  ATStringProc_HtmlColor, crosshairUnit, customeffectsunit,LCLtype, FileUtil, Types;



type

  { Tgoverlayform }

  Tgoverlayform = class(TForm)
    aboutBitBtn: TBitBtn;
    acteffectsListBox: TListBox;
    addBitBtn: TBitBtn;
    alphavalueLabel: TLabel;
    backgroundGroupBox: TGroupBox;
    backgroundLabel: TLabel;
    fpslimCheckGroup: TCheckGroup;
    coreloadtypeBitBtn: TBitBtn;
    borderGroupBox: TGroupBox;
    bottomcenterRadioButton: TRadioButton;
    colorthemeLabel: TLabel;
    frametimetypeBitBtn: TBitBtn;
    fpsCheckBox: TCheckBox;
    gpudescEdit: TEdit;
    fontComboBox: TComboBox;
    fontcolorLabel: TLabel;
    fontsizevalueLabel: TLabel;
    archCheckBox: TCheckBox;
    autologSpinEdit: TSpinEdit;
    autologSpinEdit1: TSpinEdit;
    autologSpinEdit2: TSpinEdit;
    autologSpinEdit3: TSpinEdit;
    autostartLabel: TLabel;
    autostartLabel2: TLabel;
    autouploadCheckBox: TCheckBox;
    aveffectsListBox: TListBox;
    basaltgeSpeedButton: TSpeedButton;
    basaltGlobalenableLabel: TLabel;
    basaltrunBitBtn: TBitBtn;
    basaltsaveBitBtn: TBitBtn;
    batteryCheckBox: TCheckBox;
    batteryCheckBox1: TCheckBox;
    batteryCheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    compacthudBitBtn: TBitBtn;
    completehudBitBtn: TBitBtn;
    cpuavgloadCheckBox: TCheckBox;
    cpuColorButton1: TColorButton;
    cpufreqCheckBox: TCheckBox;
    cpuGroupBox: TGroupBox;
    cpuload1ColorButton: TColorButton;
    cpuload2ColorButton: TColorButton;
    cpuload3ColorButton: TColorButton;
    cpuloadcolorCheckBox: TCheckBox;
    cpuloadcoreCheckBox: TCheckBox;
    cpunameEdit: TEdit;
    cpupowerCheckBox: TCheckBox;
    cputempCheckBox: TCheckBox;
    customcommandEdit: TEdit;
    destfolderpathLabel: TLabel;
    diskioCheckBox: TCheckBox;
    distroinfoCheckBox: TCheckBox;
    cpuImage: TImage;
    gpuvoltageCheckBox: TCheckBox;
    gpuImage: TImage;
    RadioGroup1: TRadioGroup;
    showfpslimCheckBox: TCheckBox;
    vulkandriverCheckBox: TCheckBox;
    engineColorButton: TColorButton;
    engineversionCheckBox: TCheckBox;
    extrasTabSheet: TTabSheet;
    metricsSheet: TTabSheet;
    FontcolorButton: TColorButton;
    C: TComboBox;
    fpslimComboBox1: TComboBox;
    fpslimLabel1: TLabel;
    cpumainmetricsLabel: TLabel;
    cputempLabel: TLabel;
    memLabel: TLabel;
    fpslimLabel13: TLabel;
    fpslimLabel14: TLabel;
    fpslimLabel15: TLabel;
    fpslimLabel16: TLabel;
    fpslimLabel17: TLabel;
    fpslimLabel18: TLabel;
    fpslimLabel3: TLabel;
    mainmetricLabel: TLabel;
    gputempLabel: TLabel;
    gpupowerLabel: TLabel;
    gpuinfoLabel: TLabel;
    fpslimtoggleComboBox: TComboBox;
    framecountCheckBox: TCheckBox;
    frametimegraphCheckBox: TCheckBox;
    frametimegraphColorButton: TColorButton;
    frametimegraphColorButton1: TColorButton;
    gamemodestatusCheckBox: TCheckBox;
    gamepadCheckBox: TCheckBox;
    geSpeedButton: TSpeedButton;
    GlobalenableLabel: TLabel;
    glvsyncComboBox: TComboBox;
    gpuavgloadCheckBox: TCheckBox;
    gpuColorButton: TColorButton;
    gpufreqCheckBox: TCheckBox;
    gpuGroupBox: TGroupBox;
    gpuload1ColorButton1: TColorButton;
    gpuload1ColorButton: TColorButton;
    gpuload2ColorButton1: TColorButton;
    gpuload2ColorButton: TColorButton;
    gpuload3ColorButton1: TColorButton;
    gpuload3ColorButton: TColorButton;
    gpuloadcolorCheckBox: TCheckBox;
    gpumemfreqCheckBox: TCheckBox;
    gpumodelCheckBox: TCheckBox;
    gpunameEdit: TEdit;
    gpupowerCheckBox: TCheckBox;
    gputempCheckBox: TCheckBox;
    gpujunctempCheckBox: TCheckBox;
    gpumemtempCheckBox: TCheckBox;
    gpufanCheckBox: TCheckBox;
    gputhrottlingCheckBox: TCheckBox;
    gputhrottlinggraphCheckBox: TCheckBox;
    graphhudBitBtn: TBitBtn;
    fpsGroupBox: TGroupBox;
    hImage: TImage;
    horizontalRadioButton: TRadioButton;
    hudbackgroundColorButton: TColorButton;
    hudversionCheckBox: TCheckBox;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    layoutsGroupBox2: TGroupBox;
    logdurationLabel: TLabel;
    logdurationSpinEdit: TSpinEdit;
    logdurationtLabel3: TLabel;
    loggingComboBox: TComboBox;
    loggingGroupBox: TGroupBox;
    logpathBitBtn: TBitBtn;
    mediaCheckBox: TCheckBox;
    mediaColorButton: TColorButton;
    mediaComboBox: TComboBox;
    hidehudCheckBox: TCheckBox;
    hudonoffComboBox: TComboBox;
    hudtitleEdit: TEdit;
    orientationGroupBox: TGroupBox;
    PaintBox1: TPaintBox;
    fontLabel: TLabel;
    fontsizeTrackBar: TTrackBar;
    roundImage: TImage;
    roundRadioButton: TRadioButton;
    squareImage: TImage;
    squareRadioButton: TRadioButton;
    topleftRadioButton: TRadioButton;
    topcenterRadioButton: TRadioButton;
    bottomleftRadioButton: TRadioButton;
    middleleftRadioButton: TRadioButton;
    toprightRadioButton: TRadioButton;
    bottomrightRadioButton: TRadioButton;
    middlerightRadioButton: TRadioButton;
    intelpowerfixBitBtn1: TBitBtn;
    iordrwColorButton: TColorButton;
    hudtoggleLabel: TLabel;
    layoutsGroupBox: TGroupBox;
    mangohudPageControl: TPageControl;
    mangohudPanel: TPanel;
    MenuItem4: TMenuItem;
    minimalhudBitBtn: TBitBtn;
    notificationLabel: TLabel;
    openglImage: TImage;
    PageControl2: TPageControl;
    pcidevComboBox: TComboBox;
    fpslimiterGroupBox: TGroupBox;
    performanceTabSheet: TTabSheet;
    positionGroupBox: TGroupBox;
    Process1: TProcess;
    procmemCheckBox: TCheckBox;
    ramColorButton1: TColorButton;
    ramusageCheckBox: TCheckBox;
    reshadeLabel1: TLabel;
    reshadeLabel2: TLabel;
    reshadeProgressBar: TProgressBar;
    reshadesyncBitBtn: TBitBtn;
    resolutionCheckBox: TCheckBox;
    roundcornerTrackBar1: TTrackBar;
    roundcornerTrackBar2: TTrackBar;
    roundcornervalueLabel1: TLabel;
    roundcornervalueLabel2: TLabel;
    runsteamBitBtn: TBitBtn;
    runvkbasaltBitBtn: TBitBtn;
    saveBitBtn: TBitBtn;
    sessionCheckBox: TCheckBox;
    subBitBtn: TBitBtn;
    swapusageCheckBox: TCheckBox;
    TabSheet8: TTabSheet;
    themesComboBox: TComboBox;
    timeCheckBox: TCheckBox;
    transparencyLabel: TLabel;
    transparencyLabel2: TLabel;
    transparencyLabel3: TLabel;
    transpTrackBar: TTrackBar;
    uploadlogComboBox: TComboBox;
    fontsGroupBox: TGroupBox;
    verticalRadioButton: TRadioButton;
    vImage: TImage;
    visualTabSheet: TTabSheet;
    vkbasaltPanel: TPanel;
    vkbasaltstatusCheckBox: TCheckBox;
    vkbasaltstatusCheckBox1: TCheckBox;
    vkbasaltstatusCheckBox2: TCheckBox;
    vkbasaltstatusCheckBox3: TCheckBox;
    vkbtogglekeyCombobox: TComboBox;
    vkcubegsMenuItem: TMenuItem;
    vkcubeMenuItem: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    vkbasaltPopupMenu: TPopupMenu;
    steamMenuItem: TMenuItem;
    gamePopupMenu: TPopupMenu;
    iconsImageList: TImageList;
    positionImageList: TImageList;
    dependencieSpeedButton: TSpeedButton;
    casTrackBar2: TTrackBar;
    globalbuttonImageList: TImageList;
    mangohudLabel: TLabel;
    dependenciesLabel: TLabel;
    vkbasaltLabel: TLabel;
    goverlayimage: TImage;
    mangohudShape: TShape;
    vkbasaltShape: TShape;
    vktoggleLabel: TLabel;
    vramColorButton: TColorButton;
    vramusageCheckBox: TCheckBox;
    vsyncComboBox: TComboBox;
    vsyncGroupBox: TGroupBox;
    filtersGroupBox: TGroupBox;
    vulkanImage: TImage;
    wineCheckBox: TCheckBox;
    wineColorButton: TColorButton;

    procedure aboutBitBtnClick(Sender: TObject);
    procedure coreloadtypeBitBtnClick(Sender: TObject);
    procedure fontsizeTrackBarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fpslimCheckBoxChange(Sender: TObject);
    procedure frametimetypeBitBtnClick(Sender: TObject);
    procedure geSpeedButtonClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure pcidevComboBoxChange(Sender: TObject);
    procedure saveBitBtnClick(Sender: TObject);
    procedure transpTrackBarChange(Sender: TObject);


  public


  end;

var
  goverlayform: Tgoverlayform;

  s: string;
  Color: string;


  //Boolean variables
  mangohudsel: boolean;
  vkbasaltsel: boolean;

  //Mangohud variables ##########################
  MANGOHUDCFGFILE, MANGOHUDFOLDER, FONTFOLDER: string;

  //########################################
  GPUNUMBER: integer;
  GPUDESC: TStringList;

implementation

{$R *.lfm}


{ Tgoverlayform }


//Function to convert color codes to #RRGGBB format
function ColorToHTMLColor(const AColor: TColor): string;
var
  Red, Green, Blue: Byte;
begin
  Red := Byte(AColor); // Extrai o componente vermelho
  Green := Byte(AColor shr 8); // Extrai o componente verde
  Blue := Byte(AColor shr 16); // Extrai o componente azul

  Result := Format('%.2x%.2x%.2x', [Red, Green, Blue]); // Formata a string no formato HTML (#RRGGBB)
end;



//Function to find font files (*.ttf) in /usr/share/fonts
procedure ListarFontesNoDiretorio(Diretorio: string; ComboBox: TComboBox);
var
  Arquivos: TStringList;
  Arquivo: String;
begin

  Arquivos := FindAllFiles(Diretorio, '*.ttf'); // Locate TTF files in Diretorio

  try
    for Arquivo in Arquivos do
    begin
      ComboBox.Items.Add(ExtractFileName(Arquivo)); // Add filename into combobox
    end;
  finally
    Arquivos.Free; // Free memory
  end;
end;


//Procedure to saveconfig
Procedure SaveConfig(PARAMETRO, FILEPATH: string);
var
  Process1: TProcess;
begin
    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('echo ' + PARAMETRO + ' >> ' + FILEPATH);
    Process1.Options := [poWaitOnExit, poUsePipes];
    Process1.Execute;
    Process1.Free;
  end;


//Procedure to store info from checkboxes
procedure SaveCheckbox(CHECKBOXNAME: TCheckbox; var VARNAME: string; const VALUE: string);

begin
    if CHECKBOXNAME.checked = true then
      VARNAME := VALUE;
end;


//Procedure to store info from Radiobuttons
procedure SaveRadioButton(RADIOBUTTONNAME: TRadioButton; var VARNAME: string; const VALUE: string);

begin
    if RADIOBUTTONNAME.checked = true then
      VARNAME := VALUE;
end;


procedure Tgoverlayform.FormCreate(Sender: TObject);

var
Process: TProcess;
AppHandle: THandle;
saida: TStringList;
i: integer;

begin
  //Centralize window
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

   // Initialize menu selections
  mangohudsel := true;
  mangohudPanel.Visible:=true;
  vkbasaltsel := false;
  vkbasaltPanel.Visible:=false;

  // Start vkcube (vulkan demo)
  Process := TProcess.Create(nil);
  Process.Executable := 'sh';
  Process.Parameters.Add('-c');
  Process.Parameters.Add('mangohud vkcube');
  Process.Options := [poUsePipes];
  Process.Execute;

  // Define important file paths
  MANGOHUDFOLDER:= '$HOME/.config/MangoHud/' ;
  MANGOHUDCFGFILE:= '$HOME/.config/MangoHud/MangoHud.conf' ;
  FONTFOLDER := '/usr/share/fonts/TTF/';

  //Load avaiable text fonts in /usr/share/fonts
  ListarFontesNoDiretorio('/usr/share/fonts/TTF/', fontComboBox);



  //Detect system GPUs

  // Count the number of detected GPUs
    Process1 := TProcess.Create(nil);
    saida := TStringList.Create;

    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('lspci | grep -i "VGA\|video" | wc -l'); //Count the number of lines
    Process1.Options := [poUsePipes];
    Process1.WaitOnExit;
    Process1.Execute;

    saida.LoadFromStream(Process1.output);
    GPUNUMBER:= strtoint(saida[0]);
    Process1.Free;
    saida.Free;



    i := 1; // Integer variable to the while loop
    GPUDESC := TStringList.Create;  // List variable for GPU descriptions

    while i <= GPUNUMBER do
    begin
      //Read GPU0 pcidev
      Process1 := TProcess.Create(nil);
      saida := TStringList.Create;

      Process1.Executable := 'sh';
      Process1.Parameters.Add('-c');
      Process1.Parameters.Add('lspci | grep -i "VGA\|video" | sed -n "' + inttostr(i) + 'p" | cut -c 1-7');  //Pick just the "i" line
      Process1.Options := [poUsePipes];
      Process1.WaitOnExit;
      Process1.Execute;

      saida.LoadFromStream(Process1.output);
      pcidevComboBox.Items.Insert(i-1, saida[0]); //First position of combobox is 0, so we need i-1
      Process1.Free;
      saida.Free;


      //Read GPU description
      Process1 := TProcess.Create(nil);
      saida := TStringList.Create;

      Process1.Executable := 'sh';
      Process1.Parameters.Add('-c');
      Process1.Parameters.Add('lspci | grep -i "VGA\|video" | sed -n "' + inttostr(i) + 'p" |cut -d" " -f3- | cut -d ":" -f2-'); //Pick just the first line
      Process1.Options := [poUsePipes];
      Process1.WaitOnExit;
      Process1.Execute;

      saida.LoadFromStream(Process1.output);
      GPUDESC.Add(saida[0]);
      Process1.Free;
      saida.Free;

      i := i + 1; //increment "i"variable
    end; //while


     //Determine toggle position - MangoHUD
     Process1 := TProcess.Create(nil);
     saida := TStringList.Create;

     Process1.Executable := 'sh';
     Process1.Parameters.Add('-c');
     Process1.Parameters.Add('cat /etc/environment | grep MANGOHUD=1');
     Process1.Options := [poUsePipes];
     Process1.Execute;
     Process1.WaitOnExit;
     saida.LoadFromStream(Process1.output);


     if saida.Count > 0 then    // Count will prevent the out of bound error, case the string doesn't exist
       geSpeedbutton.ImageIndex := 1
     else
       geSpeedbutton.ImageIndex := 0;

     Process1.Free;
     saida.Free;


      // Initial values
     alphavalueLabel.Caption:= FormatFloat('#0.0', transpTrackbar.Position/10);
     fontsizevalueLabel.Caption:=inttostr(fontsizeTrackbar.Position);
     fontcombobox.ItemIndex:=0;

end;

procedure Tgoverlayform.fpslimCheckBoxChange(Sender: TObject);
begin

end;



procedure Tgoverlayform.frametimetypeBitBtnClick(Sender: TObject);
begin
     //Change icon and hint on click
  case frametimetypeBitBtn.ImageIndex of
    8: begin
      frametimetypeBitBtn.ImageIndex:=7;
      frametimetypeBitBtn.Caption:= 'Histogram';
      frametimetypeBitBtn.Hint:='Use histogram for frametime information';
    end;
    7: begin
      frametimetypeBitBtn.ImageIndex:=8;
      frametimetypeBitBtn.Caption:= 'Curve';
      frametimetypeBitBtn.Hint:='Use regular curve for frametime information';
    end;
 end;
end;

procedure Tgoverlayform.geSpeedButtonClick(Sender: TObject);
begin
    case geSpeedButton.imageIndex of
       0: begin
       geSpeedButton.ImageIndex:=1; //switch button position to ON

       //RunCommand('bash -c ''echo "MANGOHUD=1" | pkexec tee -a /etc/environment''', s);  // Activate MANGOHUD globally for vulkan apps
       //RunCommand('bash -c ''notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "VULKAN Global Enable Activated" "Every Vulkan application will have Mangohud Enabled now"''', s); // Popup a notification

         Process1 := TProcess.Create(nil);
         Process1.Executable := 'sh';
         Process1.Parameters.Add('-c');
         Process1.Parameters.Add('echo MANGOHUD=1 | pkexec tee -a /etc/environment');
         Process1.Options := [poUsePipes];
         Process1.Execute;
         Process1.WaitOnExit;
         Process1.Free;

         Process1 := TProcess.Create(nil);
         Process1.Executable := 'sh';
         Process1.Parameters.Add('-c');
         Process1.Parameters.Add('notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "VULKAN Global Enable Activated" "Every Vulkan application will have Mangohud Enabled now"');
         Process1.Options := [poUsePipes];
         Process1.Execute;
         Process1.WaitOnExit;
         Process1.Free;


      showmessage ('Restart your system to take effect');
    end;

     1: begin
       geSpeedButton.ImageIndex:=0; ////switch button position to OFF
       //RunCommand('bash -c ''pkexec sed -i -e "/MANGOHUD=1/d" /etc/environment''', s); // Remove lines containing MANGOHUD=1 from /etc/environment
       //RunCommand('bash -c ''notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "Deactivated"''', s); // Popup a notification

         Process1 := TProcess.Create(nil);
         Process1.Executable := 'sh';
         Process1.Parameters.Add('-c');
         Process1.Parameters.Add('pkexec sed -i -e "/MANGOHUD=1/d" /etc/environment');
         Process1.Options := [poWaitOnExit, poUsePipes];
         Process1.Execute;
         Process1.Free;

         Process1 := TProcess.Create(nil);
         Process1.Executable := 'sh';
         Process1.Parameters.Add('-c');
         Process1.Parameters.Add('notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "Deactivated"');
         Process1.Options := [poWaitOnExit, poUsePipes];
         Process1.Execute;
         Process1.Free;


       showmessage ('Restart your system to take effect');
    end;
end;

end;


procedure Tgoverlayform.fontsizeTrackBarChange(Sender: TObject);
begin
  //Display new values and trackbar changes
  fontsizevalueLabel.Caption:= inttostr(fontsizeTrackbar.Position);
end;

procedure Tgoverlayform.coreloadtypeBitBtnClick(Sender: TObject);
begin

  //Change icon and hint on click
  case coreloadtypeBitBtn.ImageIndex of
    6: begin
      coreloadtypeBitBtn.ImageIndex:=7;
      coreloadtypeBitBtn.Caption:= 'Graph';
      coreloadtypeBitBtn.Hint:='Use vertical bars for core load';
    end;
    7: begin
      coreloadtypeBitBtn.ImageIndex:=6;
      coreloadtypeBitBtn.Caption:= 'Percent';
      coreloadtypeBitBtn.Hint:='Use percentage numbers for core load';

    end;
 end;

end;

procedure Tgoverlayform.aboutBitBtnClick(Sender: TObject);
begin
   aboutForm.show;
end;

procedure Tgoverlayform.PaintBox1Paint(Sender: TObject);
var
  i: Integer;

  //Gradient color of main menu
  begin
  for i := 0 to PaintBox1.Height do
  begin
    // Calcula um valor entre 97 (#616161) e 0 (#000000) para cada componente RGB
    // na faixa da parte superior para a inferior do PaintBox1
    PaintBox1.Canvas.Pen.Color := RGBToColor(Round(i / PaintBox1.Height * 97),
                                             Round(i / PaintBox1.Height * 97),
                                             Round(i / PaintBox1.Height * 97));
    PaintBox1.Canvas.Brush.Color := PaintBox1.Canvas.Pen.Color;
    PaintBox1.Canvas.Line(0, i, PaintBox1.Width, i);
  end;
end;

procedure Tgoverlayform.pcidevComboBoxChange(Sender: TObject);
begin
  //gpudesclabel.Caption:=GPUDESC[pcidevCombobox.ItemIndex];
  gpudescEdit.Text:=GPUDESC[pcidevCombobox.ItemIndex];
end;


procedure Tgoverlayform.saveBitBtnClick(Sender: TObject);
var
  ORIENTATION, HUDTITLE, BORDERTYPE, HUDALPHA, HUDCOLOR, FONTTYPE, FONTPATH, FONTSIZE, FONTCOLOR, HUDPOSITION, TOGGLEHUD, HIDEHUD, PCIDEV: string; //visualtab
  GPUAVGLOAD, GPULOADCHANGE, GPULOADCOLOR , GPULOADVALUE, VRAM, VRAMCOLOR, GPUFREQ, GPUMEMFREQ, GPUTEMP, GPUMEMTEMP, GPUJUNCTEMP, GPUFAN, GPUPOWER, GPUTHR, GPUTHRG, GPUMODEL, VULKANDRIVER, GPUVOLTAGE: string;  //metrics tab - GPU
  CPUAVGLOAD, CPULOADCORE, CPULOADCHANGE, CPULOADCOLOR, CPULOADVALUE, CPUCOREFREQ, CPUTEMP, CORELOADTYPE, CPUPOWER, GPUTEXT, CPUTEXT, RAM, IOSTATS, IOREAD, IOWRITE, SWAP: string; //metrics tab - CPU
  FPS, FRAMETIMING, SHOWFPSLIM, FRAMECOUNT, FRAMETIMEC, HISTOGRAM, FPSLIM: string; //performance tab

  ValorItem: string;
  LOCATEDFILE, FPSSEL: TStringList;
  i: integer;
  NOITEMCHECK: boolean;
  begin

  //Create directories
  //RunCommand('bash -c ''mkdir -p $HOME/.config/MangoHud/''', s);

    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('mkdir -p '+ MANGOHUDFOLDER);
    Process1.Options := [poUsePipes];
    Process1.Execute;
    Process1.WaitOnExit;
    Process1.Free;

  // Delete old files if it exists
  //RunCommand('bash -c ''rm $HOME/.config/MangoHud/MangoHud.conf''', s);

    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('rm '+ MANGOHUDCFGFILE);
    Process1.Options := [poUsePipes];
    Process1.Execute;
    Process1.WaitOnExit;
    Process1.Free;

  // Create a new file for GOverlay
  //RunCommand('bash -c ''echo "################### File Generated by Goverlay ###################" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('echo "################### File Generated by Goverlay ###################" >> '+ MANGOHUDCFGFILE);
    Process1.Options := [poUsePipes];
    Process1.Execute;
    Process1.WaitOnExit;
    Process1.Free;


  //RunCommand('bash -c ''echo "legacy_layout=false" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('echo "legacy_layout=false" >> '+ MANGOHUDCFGFILE);
    Process1.Options := [poUsePipes];
    Process1.Execute;
    Process1.WaitOnExit;
    Process1.Free;


  // Popup a notification
//  RunCommand('bash -c ''notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "MangoHud" "Configuration saved"''', s); //


    Process1 := TProcess.Create(nil);
    Process1.Executable := 'sh';
    Process1.Parameters.Add('-c');
    Process1.Parameters.Add('notify-send -e -i /usr/share/icons/hicolor/128x128/apps/goverlay.png "MangoHud" "Configuration saved"');
    Process1.Options := [poUsePipes];
    Process1.Execute;
    Process1.WaitOnExit;
    Process1.Free;

    notificationlabel.Visible:=true;

    //###############################################################################################    VISUAL TAB


     // HUD Title - Config Variable

      // Only create title entry if title isn't blank and diferent of default title
      if (hudtitleEdit.text <> '') and (hudtitleEdit.text <> 'Title') then
      HUDTITLE:= 'custom_text_center=' + hudtitleEdit.text;

      //Orientation  - Config Variable

      SaveRadioButton (horizontalRadioButton, ORIENTATION, 'horizontal');
      SaveRadioButton (verticalRadioButton, ORIENTATION, '');

      //Borders - Config Variable

      SaveRadioButton (squareRadioButton, BORDERTYPE, 'round_corners=0');
      SaveRadioButton (roundRadioButton, BORDERTYPE, 'round_corners=10');

      //HUD Alpha (transparency)   - Config Variable

      HUDALPHA := 'background_alpha=' + FormatFloat('#0.0', transpTrackbar.Position/10);

      //HUD Color  - Config Variable

      HUDCOLOR := 'background_color=' + ColorToHTMLColor(hudbackgroundColorButton.ButtonColor);


      //Font type  - Config Variable

      if fontCombobox.ItemIndex <> 0 then  //It doesnt apply for the DEFAULT font
        begin
          LOCATEDFILE := FindAllFiles(FONTFOLDER, fontCombobox.Text);  //Locate specific folder for selected font
          FONTPATH := LOCATEDFILE[0];
          FONTTYPE := 'font_file=' + FONTPATH; //Use the correct path to point the font file
        end;


      //Font size  - Config Variable

      FONTSIZE := 'font_size=' + inttostr(fontsizeTrackbar.Position);

      //Font Color  - Config Variable

      FONTCOLOR := 'text_color=' + ColorToHTMLColor(fontColorButton.ButtonColor);


      //Position  - Config Variable

      SaveRadioButton (topleftRadioButton, HUDPOSITION, 'position=top-left');
      SaveRadioButton (toprightRadioButton, HUDPOSITION, 'position=top-right');
      SaveRadioButton (topcenterRadioButton, HUDPOSITION, 'position=top-center');
      SaveRadioButton (bottomcenterRadioButton, HUDPOSITION, 'position=bottom-center');
      SaveRadioButton (bottomleftRadioButton, HUDPOSITION, 'position=bottom-left');
      SaveRadioButton (bottomrightRadioButton, HUDPOSITION, 'position=bottom-right');
      SaveRadioButton (middleleftRadioButton, HUDPOSITION, 'position=middle-left');
      SaveRadioButton (middlerightRadioButton, HUDPOSITION, 'position=middle-right');

     //HUD Toggle ON/OFF   - Config Variable

      case hudonoffCombobox.ItemIndex of
        0:TOGGLEHUD := 'toggle_hud=Shift_R+F12' ;
        1:TOGGLEHUD := 'toggle_hud=Shift_R+F1' ;
        2:TOGGLEHUD := 'toggle_hud=Shift_R+F2' ;
        3:TOGGLEHUD := 'toggle_hud=Shift_R+F3' ;
        4:TOGGLEHUD := 'toggle_hud=Shift_R+F4' ;
        end;

      //Hide HUD by default  - Config Variable
      Savecheckbox (hidehudCheckbox, HIDEHUD, 'no_display');

      //GPU PCIDEV  - Config Variable

      if pcidevCombobox.ItemIndex <> -1 then  // Does not create pci_dev line if no GPU is selected
        PCIDEV := 'pci_dev=0:' + pcidevCombobox.Items[pcidevCombobox.ItemIndex] ;



      //###############################################################################################   METRICS TAB

      //GPU
        //AVG Load  - Config Variable
       Savecheckbox (gpuavgloadCheckbox, GPUAVGLOAD, 'gpu_stats');

        //AVG Load color  - Config Variable
        if gpuloadcolorCheckbox.checked = true then
          begin
             GPULOADCHANGE := 'gpu_load_change';
             GPULOADVALUE := 'gpu_load_value=50,90';
             GPULOADCOLOR := 'gpu_load_color='+ ColorToHTMLColor(gpuload1ColorButton.ButtonColor) + ',' + ColorToHTMLColor(gpuload2ColorButton.ButtonColor) + ',' + ColorToHTMLColor(gpuload3ColorButton.ButtonColor);
          end;


        //VRAM  - Config Variable
        Savecheckbox (vramusageCheckbox, VRAM, 'vram');

        //VRAM Color
        VRAMCOLOR := 'vram_color='+ ColorToHTMLColor(vramColorButton.ButtonColor) ;

        //Core freq  - Config Variable
        Savecheckbox (gpufreqCheckbox, GPUFREQ, 'gpu_core_clock');

        //Mem Freq  - Config Variable
        Savecheckbox (gputempCheckbox, GPUMEMFREQ, 'gpu_mem_clock');


        //GPU Temp  - Config Variable
        Savecheckbox (gputempCheckbox, GPUTEMP, 'gpu_temp');

        //GPU mem Temp  - Config Variable
        Savecheckbox (gpumemtempCheckbox, GPUMEMTEMP, 'gpu_mem_temp');

        //GPU Junction Temp  - Config Variable
        Savecheckbox (gpujunctempCheckbox, GPUJUNCTEMP, 'gpu_junction_temp');

        //GPU FAN  - Config Variable
        Savecheckbox (gpupowerCheckbox, GPUFAN, 'gpu_fan');

        //GPU POWER  - Config Variable
        Savecheckbox (gpupowerCheckbox, GPUPOWER, 'gpu_power');

        //GPU THROTTLING   - Config Variable
       Savecheckbox (gputhrottlingCheckbox, GPUTHR, 'throttling_status');

        //GPU THROTTLING GRAPH   - Config Variable

        Savecheckbox (gputhrottlinggraphCheckbox, GPUTHRG, 'throttling_status_graph');

        //GPU MODEL   - Config Variable
        Savecheckbox (gpumodelCheckbox, GPUTHRG, 'gpu_name');

        //VULKAN DRIVER   - Config Variable
        Savecheckbox (vulkandriverCheckbox, VULKANDRIVER, 'vulkan_driver');

        //GPU VOLTAGE   - Config Variable
         Savecheckbox (gpuvoltageCheckbox, GPUVOLTAGE, 'gpu_voltage');


        //GPU TEXT
        GPUTEXT := 'gpu_text=' + gpunameEdit.Text;




        //CPU
       //GPU TEXT - Config Variable
        CPUTEXT := 'cpu_text=' + cpunameEdit.Text;


       //AVG Load  - Config Variable
        Savecheckbox (cpuavgloadCheckbox, CPUAVGLOAD, 'cpu_stats');

       //Load by core  - Config Variable
        Savecheckbox (cpuloadcoreCheckbox, CPULOADCORE, 'core_load');

       //Load by core type - Config Variable
        if coreloadtypeBitbtn.ImageIndex = 7 then
          CORELOADTYPE := 'core_bars';


       //CPU Load color  - Config Variable
        if cpuloadcolorCheckbox.checked = true then
          begin
             CPULOADCHANGE := 'cpu_load_change';
             CPULOADVALUE := 'cpu_load_value=50,90';
             CPULOADCOLOR := 'cpu_load_color='+ ColorToHTMLColor(cpuload1ColorButton.ButtonColor) + ',' + ColorToHTMLColor(cpuload2ColorButton.ButtonColor) + ',' + ColorToHTMLColor(cpuload3ColorButton.ButtonColor);
          end;


        //   CPUCOREFREQ := 'cpu_mhz';
       Savecheckbox (cpufreqCheckbox, CPUCOREFREQ, 'cpu_mhz');

       ////CPU TEMP - Config Variable
       Savecheckbox (cputempCheckbox, CPUTEMP, 'cpu_temp');

        ////CPU Power - Config Variable
       Savecheckbox (cpupowerCheckbox, CPUPOWER, 'cpu_power');

       ////RAM - Config Variable
       Savecheckbox (ramusageCheckBox, RAM, 'ram');

       //Disk IO  - Config Variable
        if diskioCheckbox.checked = true then
          begin
             IOSTATS := 'io_stats';
             IOREAD := 'io_read';
             IOWRITE := 'io_write';
          end;

        ////RAM - Config Variable
       Savecheckbox (fpsCheckBox, FPS, 'fps');

        //###############################################################################################   Performance TAB

        ////FPS - Config Variable
       Savecheckbox (swapusageCheckBox, SWAP, 'swap');

       ////Frame time - Config Variable
       Savecheckbox (frametimegraphCheckBox, FRAMETIMING, 'frame_timing');

       //Frame time Color - Config Variable
       FRAMETIMEC := 'frametime_color=' + ColorToHTMLColor(frametimegraphColorButton.ButtonColor);

        ////Show fps limit - Config Variable
       Savecheckbox (showfpslimCheckBox, SHOWFPSLIM, 'show_fps_limit');


         ////Show fps limit - Config Variable
       Savecheckbox (framecountCheckBox, FRAMECOUNT, 'frame_count');

          //Histogram - Config Variable
        if frametimetypeBitbtn.ImageIndex = 7 then
          HISTOGRAM := 'histogram';



        // FPS limit - Config Variable

        FPSSEL := TStringList.Create; //store selected options here
        NOITEMCHECK := True; // Variable is true if no item is checked

        // Check fpslimCheckgroup items
        for i := 0 to fpslimCheckgroup.Items.Count - 1 do
          begin
          // check if item is checked
          if fpslimCheckgroup.Checked[i] then
          begin
            // Add item value to stringlist
            ValorItem := fpslimCheckgroup.Items[i];
            FPSSEL.Add(ValorItem);
            NOITEMCHECK := false; // Variable is become false
          end;
          end;

          if NOITEMCHECK = true then
             FPSLIM := 'fps_limit=0' //If no item is check fps_limit is unlimited
          else
          FPSLIM := 'fps_limit=' + FPSSEL.CommaText;
          FPSSEL.Free;

          //##################################################################################################################  Write config file
        //  end;

    //Visual Tab
    SaveConfig(HUDTITLE,MANGOHUDCFGFILE);
    SaveConfig(ORIENTATION,MANGOHUDCFGFILE);
    SaveConfig(HUDALPHA,MANGOHUDCFGFILE);
    SaveConfig(BORDERTYPE,MANGOHUDCFGFILE);
    SaveConfig(HUDALPHA,MANGOHUDCFGFILE);
    SaveConfig(HUDCOLOR,MANGOHUDCFGFILE);
    SaveConfig(FONTTYPE,MANGOHUDCFGFILE);
    SaveConfig(FONTSIZE,MANGOHUDCFGFILE);
    SaveConfig(FONTCOLOR,MANGOHUDCFGFILE);
    SaveConfig(HUDPOSITION,MANGOHUDCFGFILE);
    SaveConfig(TOGGLEHUD,MANGOHUDCFGFILE);
    SaveConfig(HIDEHUD,MANGOHUDCFGFILE);
    SaveConfig(PCIDEV,MANGOHUDCFGFILE);

    //Metrics - GPU
    SaveConfig(GPUTEXT,MANGOHUDCFGFILE);
    SaveConfig(GPUAVGLOAD,MANGOHUDCFGFILE);
    SaveConfig(GPULOADCHANGE,MANGOHUDCFGFILE);
    SaveConfig(GPULOADVALUE,MANGOHUDCFGFILE);
    SaveConfig(GPULOADCOLOR,MANGOHUDCFGFILE);
    SaveConfig(GPUVOLTAGE,MANGOHUDCFGFILE);
    SaveConfig(VRAM,MANGOHUDCFGFILE);
    SaveConfig(VRAMCOLOR,MANGOHUDCFGFILE);
    SaveConfig(GPUTHR,MANGOHUDCFGFILE);
    SaveConfig(GPUFREQ,MANGOHUDCFGFILE);
    SaveConfig(GPUMEMFREQ,MANGOHUDCFGFILE);
    SaveConfig(GPUTEMP,MANGOHUDCFGFILE);
    SaveConfig(GPUMEMTEMP,MANGOHUDCFGFILE);
    SaveConfig(GPUJUNCTEMP,MANGOHUDCFGFILE);
    SaveConfig(GPUFAN,MANGOHUDCFGFILE);
    SaveConfig(GPUPOWER,MANGOHUDCFGFILE);
    SaveConfig(GPUTHRG,MANGOHUDCFGFILE);
    SaveConfig(GPUMODEL,MANGOHUDCFGFILE);
    SaveConfig(VULKANDRIVER,MANGOHUDCFGFILE);

    //Metrics - CPU / MEM
    SaveConfig(CPUTEXT,MANGOHUDCFGFILE);
    SaveConfig(CPUAVGLOAD,MANGOHUDCFGFILE);
    SaveConfig(CPULOADCORE,MANGOHUDCFGFILE);
    SaveConfig(CORELOADTYPE,MANGOHUDCFGFILE);
    SaveConfig(CPULOADCHANGE,MANGOHUDCFGFILE);
    SaveConfig(CPULOADVALUE,MANGOHUDCFGFILE);
    SaveConfig(CPULOADCOLOR,MANGOHUDCFGFILE);
    SaveConfig(CPUCOREFREQ,MANGOHUDCFGFILE);
    SaveConfig(CPUTEMP,MANGOHUDCFGFILE);
    SaveConfig(CPUPOWER,MANGOHUDCFGFILE);
    SaveConfig(RAM,MANGOHUDCFGFILE);
    SaveConfig(IOSTATS,MANGOHUDCFGFILE);
    SaveConfig(IOREAD,MANGOHUDCFGFILE);
    SaveConfig(IOWRITE,MANGOHUDCFGFILE);
    SaveConfig(SWAP,MANGOHUDCFGFILE);

    //Performance
    SaveConfig(FPS,MANGOHUDCFGFILE);
    SaveConfig(FRAMETIMING,MANGOHUDCFGFILE);
    SaveConfig(SHOWFPSLIM,MANGOHUDCFGFILE);
    SaveConfig(FRAMECOUNT,MANGOHUDCFGFILE);
    SaveConfig(FRAMETIMEC,MANGOHUDCFGFILE);
    SaveConfig(HISTOGRAM,MANGOHUDCFGFILE);
    SaveConfig(FPSLIM,MANGOHUDCFGFILE);

end; // ########################################      end save button click       ###############################################################################

procedure Tgoverlayform.transpTrackBarChange(Sender: TObject);
begin
  //Display new values and trackbar changes
  alphavalueLabel.Caption:= FormatFloat('#0.0', transpTrackbar.Position/10);
end;





end.

