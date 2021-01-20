unit mainunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ActnList, SynEdit, SynPluginSyncroEdit, RLParser, SynEditKeyCmds, LCLType,
  ComCtrls, SynEditMiscClasses, DCPrijndael, DCPsha256, LSControls, LCLProc,
  strutils, LCLIntf, IniPropStorage, Menus, searchreplace, message, lazutf8,
  lconvencoding, syneditmarkuphighall, SynEditSearch, SynEditTypes,
  SynHighlighterPHP, SynCompletion, SynHighlighterPas, SynHighlighterHTML,
  SynHighlighterXML, SynHighlighterSQL, SynHighlighterVB, SynHighlighterBat,
  SynHighlighterIni, SynHighlighterMulti, SynHighlighterAny, TplFileSearchUnit,
  SynUniHighlighter, PrintersDlgs, Printers, SourcePrinter, PasswordUnit,
  dialogunit, SynEditMarks;



type

  { TMainForm }

  TMainForm = class(TForm)
    actCalc: TAction;
    actFind: TAction;
    actF3: TAction;
    actFontPlus: TAction;
    actFontMinus: TAction;
    actFontReset: TAction;
    actEposta: TAction;
    actDatum: TAction;
    ActCountWords: TAction;
    ActRemoveLines: TAction;
    actRemoveDupes: TAction;
    actWordUnWrap: TAction;
    arcPassword: TAction;
    actTranslate: TAction;
    actStats: TAction;
    actPrint: TAction;
    actSort: TAction;
    actUrl: TAction;
    actWordWrap: TAction;
    actSearchReplace: TAction;
    actReload: TAction;
    actNew: TAction;
    actSave: TAction;
    actOpen: TAction;
    btnWrapText: TButton;
    btnDonate: TButton;
    btnHelp: TButton;
    btnOpen: TButton;
    DCP_rijndael1: TDCP_rijndael;
    DCP_sha256_1: TDCP_sha256;
    EncDec: TCheckBox;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    N5: TMenuItem;
    N4: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N3: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    btnKriptiranje: TPanel;
    IskanjeMap: TplFileSearch;
    PopupMenu1: TPopupMenu;
    PrintDialog1: TPrintDialog;
    storage: TIniPropStorage;
    Standard: TActionList;
    btnSave: TButton;
    btnNew: TButton;
    btnCalc: TButton;
    btnFind: TButton;
    OpenDialog1: TOpenDialog;
    Panel: TPanel;
    Parser1: TRLExpressionParser;
    SaveDialog1: TSaveDialog;
    bar: TStatusBar;
    NaloziObZagonu: TTimer;
    SynAnySyn1: TSynAnySyn;
    SynBatSyn1: TSynBatSyn;
    SynHTMLSyn1: TSynHTMLSyn;
    SynIniSyn1: TSynIniSyn;
    SynPasSyn1: TSynPasSyn;
    SynPHPSyn1: TSynPHPSyn;
    SynSQLSyn1: TSynSQLSyn;
    SynVBSyn1: TSynVBSyn;
    SynXMLSyn1: TSynXMLSyn;
    txt: TSynEdit;
    procedure ActCountWordsExecute(Sender: TObject);
    procedure actDatumExecute(Sender: TObject);
    procedure actF3Execute(Sender: TObject);
    procedure actFontMinusExecute(Sender: TObject);
    procedure actFontPlusExecute(Sender: TObject);
    procedure actFontResetExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
    procedure actRemoveDupesExecute(Sender: TObject);
    procedure ActRemoveLinesExecute(Sender: TObject);
    procedure actSearchReplaceExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actStatsExecute(Sender: TObject);
    procedure actUrlExecute(Sender: TObject);
    procedure actWordUnWrapExecute(Sender: TObject);
    procedure actWordWrapExecute(Sender: TObject);
    procedure arcPasswordExecute(Sender: TObject);
    procedure btnDonateClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure EncDecChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IskanjeMapChangeFolder(fullpath: string; info: TSearchRec);
    procedure IskanjeMapFileFind(fullpath: string; info: TSearchRec);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure NaloziObZagonuTimer(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure TxtChange(Sender: TObject);
    procedure txtClick(Sender: TObject);
    procedure txtGutterClick(Sender: TObject; X, Y, Line: integer;
      mark: TSynEditMark);
    procedure txtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtKeyPress(Sender: TObject; var Key: char);
    procedure txtKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    ctrlondrop: boolean;
    changes   : boolean;
    filename  : string;
    lastdir   : string;
    const ShraniKot : boolean = false;
    procedure LoadFile(s:string);
    function InputQuery2(frmCaption,frmText:string; var frmIO:string):integer;
  public

  end;

var
  MainForm: TMainForm;
  SynMarkup: TSynEditMarkupHighlightAllCaret;
  rChar: integer;

const version:string='baPad v1.0, © BArko, 2020-2021';
      ss:string='';
      pw:string='';
      seltext:string='';
      LTotmp:string='';

      TLowerAlpha = 'abcdefghijklmnopqrstuvwxyz';
      TUpperAlpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      TNumber = '0123456789';
      TSpecial = '!?$?%^&*()_-+={[}]:;@~#|\<,>./';

implementation

{$R *.frm}

{ TMainForm }

{$IFDEF WINDOWS}
// https://forum.lazarus.freepascal.org/index.php/topic,1709.msg225291.html#msg225291
uses
  Windows, ActiveX, ShlObj;

function GetShortcutTarget(const ShortcutFilename: string): string;
var
  Psl: IShellLink;
  Ppf: IPersistFile;
  WideName: array[0..MAX_PATH] of WideChar;
  pResult: array[0..MAX_PATH-1] of ansiChar;
  Data: TWin32FindData;
const
  IID_IPersistFile: TGUID = (
    D1:$0000010B; D2:$0000; D3:$0000; D4:($C0,$00,$00,$00,$00,$00,$00,$46));
begin
  CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER, IID_IShellLinkA, psl);
  psl.QueryInterface(IID_IPersistFile, ppf);
  MultiByteToWideChar(CP_ACP, 0, pAnsiChar(ShortcutFilename), -1, WideName, Max_Path);
  ppf.Load(WideName, STGM_READ);
  psl.Resolve(0, SLR_ANY_MATCH);
  psl.GetPath(@pResult, MAX_PATH, Data, SLGP_UNCPRIORITY);
  Result := StrPas(pResult);
end;
{$ENDIF}

const
{$IFDEF WINDOWS}
  fi: string = '*.*';
{$ELSE}
  fi: string = '*';
{$ENDIF}

function baEncrypt(pw:string; x:string):string;
var
  c: TDCP_rijndael;
begin
  result:='';
  c := TDCP_rijndael.Create(nil);
  try
    c.InitStr(pw, TDCP_sha256);
    result := c.EncryptString(x);
  finally
    c.Free;
  end;
end;

function baDecrypt(pw:string; x:string):string;
var
  c: TDCP_rijndael;
begin
  result:='';
  c := TDCP_rijndael.Create(nil);
  try
    c.InitStr(pw, TDCP_sha256);
    result := c.DecryptString(x);
  finally
    c.Free;
  end;
end;

procedure LoadF(filename:string; var tmp:TSynEdit);
var
  FS : TFileStream;
begin
  FS := TFileStream.Create(filename, fmOpenRead + fmShareDenyNone);
  Try
    tmp.Lines.LoadFromStream(FS);
  finally
    FS.Free;
  end;
end;

procedure WhereXY;
var tmp:string;
begin
  tmp:=trim(ConvertEncoding(mainform.txt.seltext,GuessEncoding(mainform.txt.seltext),EncodingAnsi));
  mainform.bar.Panels[1].Text:='['+IntToStr(Length(tmp))+'] '+IntToStr(mainform.txt.CaretY)+' : '+IntToStr(mainform.txt.CaretX);
end;

procedure ResizeBar;
begin
  mainform.bar.Panels[0].Width:=mainform.Width-200;
end;

function GuessFEncoding(s:string):string;
var rez:string;
begin
  rez:=UpperCase(GuessEncoding(s));
  if rez='' then result:='UTF8' else result:=rez;
end;

//https://github.com/alrieckert/lazarus/blob/master/components/mrumenu/mrumanager.pp
function MinimizeFileName(const AFileName:string; AMaxLen:integer) : string;

  procedure SplitPath(const APath:String; Parts: TStrings);
  var
    i, j : Integer;
  begin
    if APath = '' then exit;
    if not Assigned(Parts) then exit;

    i := Length(APath);
    j := i;
    while (i >= 1) do begin
      if APath[i] = DirectorySeparator then begin
        Parts.Insert(0, copy(APath, i+1, j-i));
        j := i;
      end;
      dec(i);
    end;
    Parts.Insert(0, copy(APath, 1, j));
  end;

  function AddStringsFromTo(AList:TStrings; FromIndex,ToIndex:integer) : string;
  var
    i : integer;
  begin
    result := '';
    for i:=FromIndex to ToIndex do
      result := result + AList[i];
  end;

var
  Parts : TStringList;
  i : integer;
  tmp : string;
begin
  result := AFileName;
  if Length(AFileName) > AMaxLen then begin
    Parts := TStringList.Create;
    try
      SplitPath(AFileName, Parts);
      i := Parts.Count div 2;
      while (i < Parts.Count) do begin
        tmp := Format('%s...%s%s', [
          AddStringsFromTo(Parts, 0, i-1),
          DirectorySeparator,
          AddStringsFromTo(Parts, i+1, Parts.Count-1)
        ]);
        if Length(tmp) < AMaxLen then begin
          result := tmp;
          exit;
        end else
          Parts.Delete(i);
        i := Parts.Count div 2;
      end;
      result := ExtractFileName(AFileName);
    finally
      Parts.Free;
    end;
  end;
end;

//https://rosettacode.org/wiki/URL_encoding#Free_Pascal
function urlEncode(data: string): AnsiString;
var
  ch: AnsiChar;
begin
  Result := '';
  for ch in data do begin
    if ((Ord(ch) < 65) or (Ord(ch) > 90)) and ((Ord(ch) < 97) or (Ord(ch) > 122)) then begin
      Result := Result + '%' + IntToHex(Ord(ch), 2);
    end else
      Result := Result + ch;
  end;
end;

//https://forum.lazarus.freepascal.org/index.php?topic=14513.0
function GetPassword(PasswordMask: string; pLength: integer): string;
var
  Counter: integer;
  rPass: string;
begin
  rPass := '';
  for Counter := 1 to pLength do
  begin
    rChar := Random(Length(PasswordMask));
    rPass := rPass + Copy(PasswordMask, rChar, 1);
  end;
  Result := rPass;
end;

function TMainForm.InputQuery2(frmCaption,frmText:string; var frmIO:string):integer;
begin
  frmDialog.Caption:=frmCaption;
  frmDialog.lblText.caption:=frmText;
  frmDialog.edText.Text:=frmIO;
  result:=frmDialog.ShowModal;
  frmIO:=frmDialog.edText.Text;
end;

// https://www.howtobuildsoftware.com/index.php/how-do/d4Y/delphi-listbox-duplicate-removal-how-to-remove-duplicates-in-listbox
procedure RemoveDuplicates(StrList : TStringList);
var   NoDuplicate: TStringList;
      i: Integer;
begin
  NoDuplicate := TStringList.Create;
  try
    NoDuplicate.Sorted := True;
    NoDuplicate.Duplicates := dupIgnore;
    NoDuplicate.CaseSensitive := False;
    for i := 0 to StrList.Count - 1 do
    NoDuplicate.Add(StrList[i]) ;
    NoDuplicate.Sorted:= False;
    StrList.Assign(NoDuplicate) ;
  finally
    NoDuplicate.Free;
  end;
end;

// *** *** *** ****************************************

procedure TMainForm.LoadFile(s:string);
var t:TSynEdit;
    ChrEnc:string;
begin
  IskanjeMap.Stop:=true;
  bar.Panels[0].Text:='Prebiram podatke ...';Application.ProcessMessages;
  if ExtractFileExt(s) = '.lcked' then
  begin
    changes:=false; filename:=s;
    EncDec.Checked:=true;
  end;
  {$IFDEF WINDOWS}
    if ExtractFileExt(s) = '.lnk' then
    begin
      if EncDec.Checked then
      begin
        try t:=TSynEdit.Create(self);
        LoadF(GetShortcutTarget(s),t);
        ChrEnc:=GuessFEncoding(t.Text);
        txt.lines.beginupdate;
        txt.text:=baDecrypt(pw,t.text);
        txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
        txt.lines.endupdate;
        changes:=false; filename:=GetShortcutTarget(s);caption:=version;
        finally t.free; end;
      end else
      begin
        txt.lines.BeginUpdate;
        try LoadF(GetShortcutTarget(s),txt); changes:=false; filename:=GetShortcutTarget(s); caption:=version;except Txt.Text:=''; end;
        ChrEnc:=GuessFEncoding(txt.Text);
        txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
        txt.lines.EndUpdate;
      end;
    end else
    begin
      if EncDec.Checked then
      begin
        try t:=TSynEdit.Create(self);
        LoadF(s,t);
        ChrEnc:=GuessFEncoding(t.Text);
        txt.lines.beginupdate;
        txt.text:=baDecrypt(pw,t.text);
        txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
        txt.lines.endupdate;
        changes:=false; filename:=s;caption:=version;
        finally t.free; end;
      end else
      begin
         txt.lines.BeginUpdate;
         try LoadF(s,txt); changes:=false; filename:=s; caption:=version; except Txt.Text:=''; end;
         ChrEnc:=GuessFEncoding(txt.Text);
         txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
         txt.lines.EndUpdate;
      end;
    end;
  {$ELSE}
    if EncDec.Checked then
      begin
        try t:=TSynEdit.Create(self);
        LoadF(s,t);
        ChrEnc:=GuessFEncoding(t.Text);
        txt.lines.beginupdate;
        txt.text:=baDecrypt(pw,t.text);
        txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
        txt.lines.endupdate;
        changes:=false; filename:=s;caption:=version;
        finally t.free; end;
      end else
      begin
         txt.lines.BeginUpdate;
         try LoadF(s,txt); changes:=false; filename:=s; caption:=version; except Txt.Text:=''; end;
         ChrEnc:=GuessFEncoding(txt.Text);
         txt.Text:=ConvertEncoding(txt.text,GuessEncoding(txt.Text),EncodingUTF8);
         txt.lines.EndUpdate;
      end;
  {$ENDIF}
  bar.Panels[0].Text:='['+ChrEnc+'] '+MinimizeFileName(filename,80);WhereXY;
  lastdir:=ExtractFilePath(filename);
  case lowercase(ExtractFileExt(filename)) of

    '.php','.php3','.phtml','.inc': begin
              txt.Highlighter:=SynPHPSyn1;
    end;
    '.pas','.dpr','.dpk': begin
              txt.Highlighter:=SynPasSyn1;
    end;
    '.htm', '.html': begin
              txt.Highlighter:=SynHTMLSyn1;
    end;
    '.xml','.xsd', '.xsl','.xslt','.dtd': begin
              txt.Highlighter:=SynXMLSyn1;
    end;
    '.sql': begin
              txt.Highlighter:=SynSQLSyn1;
    end;
    '.bas': begin
              txt.Highlighter:=SynVBSyn1;
    end;
    '.bat','.cmd': begin
              txt.Highlighter:=SynBatSyn1;
    end;
    '.ini': begin
              txt.Highlighter:=SynIniSyn1;
    end;
  else
    txt.Highlighter:=SynAnySyn1;
  end;
end;

procedure TMainForm.btnOpenClick(Sender: TObject);
begin
  OpenDialog1.FileName:=filename;
  OpenDialog1.InitialDir:=lastdir;
  if OpenDialog1.Execute then
  begin
    try LoadFile(OpenDialog1.FileName);except end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.btnFindClick(Sender: TObject);
begin
  if txt.seltext<>'' then ss:=txt.SelText;
  if InputQuery2('Iskanje (CTRL+H poišči in zamenjaj)','Iskano besedilo',ss)=mrOk then
  begin
    ss:=frmDialog.edText.Text;
    if ss<>seltext then seltext:='';
    frmMessage.lblMessage.Caption:='*** TRENUTEK, IŠČEM ***';
    frmMessage.Show;Application.ProcessMessages;
    try
     txt.SearchReplace(ss,'',[]);
    finally
      frmMessage.Close;
    end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.btnHelpClick(Sender: TObject);
begin
  showmessage(

  version+' - zelo preprost urejevalnik besedilnih datotek'+#13#10+
  'https://barko.ga'+#13#10+#13#10+
  'Odpri - CTRL+O - odpremo poljubno datoteko, ki jo urejevalnik poskuša prebrati.'+#13#10+
  'CTRL+R - v kolikor imamo že prebrano datoteko, jo lahko ponovno preberemo.'+#13#10+
  'Shrani  -  CTRL+S - Shranimo spremembe. Ob shranjevanju se ANSI kodiranje pretvori v UTF8.'+#13#10+
  'Nov - CTRL+N - Izpraznimo urejevalnik in pripravimo za delo z novimi podatki.'+#13#10+
  'Izračun - CTRL+L - Izračunamo izbrano formulo, primer: 10+20'+#13#10+
  'Iskanje - CTRL+F - Iskanje besedila. Iskanje poteka od kurzorja naprej.'+#13#10+
  'Prevedi - CTRL+G - označeno besedilo prevedete na https://translate.google.com.'+#13#10+
  'F3 - Iskanje/nadaljujemo iskanje.'+#13#10+#13#10+
  'Kriptiranje - V kolikor preberemo že zakodirano datoteko, moramo vključiti Kriptiranje, nato vpišemo geslo in ponovno preberemo (avtomatsko) naloženo datoteko, da se dekodira s trenutnim geslom. Geslo ostane aktivno dokler je vključeno Kriptiranje (tako lahko shranjujemo spremembe brez ponovnega vpisovanja gesla).'+#13#10+#13#10+
  'CTRL+H - Poišči in zamenjaj.'+#13#10+
  'CTRL+W - Zavijanje označenega besedila na 80 znakov na vrstico.'+#13#10+
  'CTRL+ALT+W - Odvijanje označenega besedila.'+#13#10+
  'CTRL+E - Odpri izbrani URL naslov.'+#13#10+
  'CTRL+T - Razvrščanje označenega besedila.'+#13#10+
  'CTRL+P - Tiskanje.'+#13#10+
  'CTRL+K - Statistika trenutne datoteke.'+#13#10+
  'CTRL+M - Označeno besedilo pošljemo v privzet epoštni program.'+#13#10+
  'CTRL + povleci in spusti mapo - Generira spisek vsebine.'+#13#10+
  'CTRL+Q - Privzeto generira 12 (ali označeno številko 1 do 255) naključnih znakov.'+#13#10+
  'CTRL+D - Odstranjevanje dvojnikov v izbranem besedilu.'+#13#10+
  'Alt+D - Vstavi trenutni datum.'+#13#10+
  'Alt+R - Odstrani vse vrstice, ki vsebujejo označeno besedilo.'+#13#10+
  'Alt+W - Število označenih besed.'
  );
  Txt.SetFocus;
end;

procedure TMainForm.actF3Execute(Sender: TObject);
begin
  if ss<>'' then
  begin
    frmMessage.lblMessage.Caption:='*** TRENUTEK, IŠČEM ***';
    frmMessage.Show;Application.ProcessMessages;
    txt.SearchReplace(ss,'',[]);
    frmMessage.Close;
  end else
  begin
    btnFindClick(Sender);
  end;
  Txt.SetFocus;
end;

procedure TMainForm.actDatumExecute(Sender: TObject);
begin
  txt.SelText:=DateToStr(now);
end;

procedure TMainForm.ActCountWordsExecute(Sender: TObject);

  function UnWrap(sss:string):string;
  var s:tstringlist;
      tmp:string;
      i:integer;
  begin
    s:=TStringlist.Create;
    s.text:=sss; tmp:='';
    for i:=0 to s.Count-1 do
    begin
      tmp:=tmp+s[i]+' ';
    end;
    s.Free;
    result:=trim(tmp);
  end;

var s:string;
begin
  s:=txt.SelText;
  if s<>'' then begin
    ShowMessage('Število besed: '+IntToStr(WordCount(UnWrap(s),[' '])));
  end;
end;

procedure TMainForm.actFontMinusExecute(Sender: TObject);
begin
  txt.Font.Size:=txt.Font.Size-1;
end;

procedure TMainForm.actFontPlusExecute(Sender: TObject);
begin
  txt.Font.Size:=txt.Font.Size+1;
end;

procedure TMainForm.actFontResetExecute(Sender: TObject);
begin
  txt.font.size:=16;
end;

procedure TMainForm.actPrintExecute(Sender: TObject);
var
  sp: TSourcePrinter;
  L : TStrings;
begin
  L:=TStringList.Create;
  try
     L.Assign(txt.Lines);
     sp := TSourcePrinter.Create;
    try
      sp.Execute(L)
    finally
      sp.Free
    end;
  finally
    L.Free;
  end;
  txt.SetFocus;
end;

procedure TMainForm.actReloadExecute(Sender: TObject);
begin
  if filename<>'' then
  begin
    try LoadFile(FileName);except end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.actRemoveDupesExecute(Sender: TObject);
var StrList : TStringList;
begin
  if txt.SelText<>'' then begin
    try
      StrList:=TStringList.Create;
      StrList.Text:=txt.SelText;
      RemoveDuplicates(StrList);
      txt.SelText:=StrList.Text;
    finally
      StrList.Free;
    end;
  end;
end;

procedure TMainForm.ActRemoveLinesExecute(Sender: TObject);
var tmp:string;
    i:integer;
    t:tSynEdit;
    label start;
begin // grda rešitev, predelaj (s tem ne deluje REDO)
  if txt.SelText<>'' then begin
    tmp:=txt.SelText;
    t:=tSynEdit.Create(self);
    try
      t.Lines.Text:=txt.Lines.Text;
      // varovalka, če si premisliš, ctrl+a in ctrl+v dobiš vse nazaj
      txt.SelectAll;
      txt.CutToClipboard;
      start:
      for i:=0 to t.Lines.Count-1 do
      begin
        if t.lines[i].Contains(tmp) then begin
          t.Lines.Delete(i);goto start;
        end;
      end;
      txt.Lines.beginupdate;
      txt.Lines.Text:=t.Lines.text;
      txt.Lines.endupdate;
    finally
      t.free;
    end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.actSearchReplaceExecute(Sender: TObject);
begin
  if txt.SelText<>'' then begin
    frmSearchReplace.edtPoisci.Text:=txt.SelText;
  end;
  if frmSearchReplace.ShowModal = mrOk then
  begin
    frmMessage.lblMessage.Caption:='*** TRENUTEK, DELAM ***';
    frmMessage.Show;Application.ProcessMessages;
    try
      txt.SelStart:=0;
      txt.Lines.beginupdate;
      txt.SearchReplace(frmSearchReplace.edtPoisci.Text,frmSearchReplace.edtZamenjaj.Text,[ssoReplace,ssoReplaceAll]);
      txt.Lines.endupdate;
    finally
      frmMessage.Close;
    end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.actSortExecute(Sender: TObject);
var l:tstringlist;
begin
  l:=tstringlist.Create;
  try
    if txt.SelText<>'' then
    begin
      l.Text:=txt.SelText;
      l.Sort;
      txt.lines.BeginUpdate;
      txt.SelText:=l.text;
      txt.lines.EndUpdate;
    end;
  finally
    l.Free;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.actStatsExecute(Sender: TObject);
var iVse,iBrez,iVrstic:integer;
    tmp:string;
begin
  tmp:=trim(ConvertEncoding(txt.text,GuessEncoding(txt.text),EncodingAnsi));
  iVse:=length(tmp);
  tmp:=ReplaceText(tmp,' ','');
  iBrez:=length(tmp);tmp:='';
  iVrstic:=txt.lines.count-1;if iVrstic<=0 then iVrstic:=1;
  ShowMessage(

   'Vseh znakov: '+inttostr(iVse)+#13#10+
   'Vseh vrstic: '+inttostr(iVrstic)+#13#10+
   'Vseh znakov brez presledkov: '+inttostr(iBrez)

  );
end;

procedure TMainForm.actUrlExecute(Sender: TObject);
begin
  OpenURL(txt.seltext);
  Txt.SetFocus;
end;

procedure TMainForm.actWordUnWrapExecute(Sender: TObject);
var s:tstringlist;
    tmp:string;
    i:integer;
begin
  if txt.SelText<>'' then
  begin
    txt.lines.BeginUpdate;
    s:=TStringlist.Create;
    s.text:=txt.SelText;
    tmp:='';
    for i:=0 to s.Count-1 do
    begin
      tmp:=tmp+s[i]+' ';
    end;
    s.Free;
    txt.SelText:=trim(tmp);
    txt.Lines.EndUpdate;
  end;
  txt.SetFocus;
end;

procedure TMainForm.actWordWrapExecute(Sender: TObject);
var loc:integer;
begin
  loc:=txt.SelStart;
  txt.lines.BeginUpdate;
  if txt.seltext<>'' then
  begin
    txt.seltext:=WrapText(txt.seltext, 75);
  end;
  txt.lines.EndUpdate;
  txt.SelStart:=loc;
  txt.SetFocus;
end;

procedure TMainForm.arcPasswordExecute(Sender: TObject);
var t:byte;
begin
  if txt.SelText<>'' then
  begin
    try
      t:=StrToInt(txt.SelText);
    except
      t:=12;
    end;
    if t>=255 then t:=255;
    if t<1 then t:=1;
    txt.SelText:=GetPassword(TUpperAlpha+TLowerAlpha+TNumber+TSpecial, t);
  end
  else begin
    txt.SelText:=GetPassword(TUpperAlpha+TLowerAlpha+TNumber+TSpecial, 12);
  end;
end;

procedure TMainForm.btnDonateClick(Sender: TObject);
begin
  OpenURL(baDecrypt('','1XWKpxjtoavoKU2dPBTCCsqZe3SDyTyHTOVnI95nIxzd/lMPr8+42DGS32Y6xmEAQMTqxWs5toVn1BE5y8mL62XHpwqD/0DGXya4oFSicdFehA1AikxdMU8jS3IP'));
  Txt.SetFocus;
end;

procedure TMainForm.btnSaveClick(Sender: TObject);
var t:tSynEdit;
    ok:boolean;
begin
  bar.Panels[0].Text:='Shranjujem podatke ...';Application.ProcessMessages;
  SaveDialog1.FileName:=filename;ok:=false;
  SaveDialog1.InitialDir:=lastdir;
  if (filename='') or ShraniKot then
  begin
    ShraniKot:=false;
    if SaveDialog1.Execute then
    begin
      if ExtractFileExt(SaveDialog1.FileName) = '.lcked' then
      begin
        EncDec.Checked:=true;
      end;
      if EncDec.Checked then
      begin
        try t:=TSynEdit.Create(self);
        t.text:=baEncrypt(pw,txt.text);
        try t.Lines.SaveToFile(SaveDialog1.FileName);ok:=true;except end;
        txt.MarkTextAsSaved;
        finally t.free; end;
      end else
      begin
        try Txt.Lines.SaveToFile(SaveDialog1.FileName);ok:=true;except end;
      end;
      changes:=False;caption:=version;
      filename:=SaveDialog1.FileName;
    end;
  end else
  begin
    if EncDec.Checked then
    begin
      try t:=TSynEdit.Create(self);
      t.text:=baEncrypt(pw,txt.text);
      try t.Lines.SaveToFile(SaveDialog1.FileName);ok:=true;except end;
      txt.MarkTextAsSaved;
      finally t.free; end;
    end else
    begin
      try Txt.Lines.SaveToFile(SaveDialog1.FileName);ok:=true;except end;
    end;
    changes:=False;caption:=version;
  end;
  Txt.SetFocus;
  if ok then
  begin
    bar.Panels[0].Text:='['+GuessFEncoding(txt.text)+'] '+MinimizeFileName(filename,80)+' [Shranjeno]'
  end else
  begin
    if filename<>'' then bar.Panels[0].Text:='['+GuessFEncoding(txt.text)+'] '+MinimizeFileName(filename,80)+' [Ni shranjeno]' else bar.Panels[0].Text:='[Ni shranjeno]';
  end;
  WhereXY;
end;

procedure TMainForm.btnNewClick(Sender: TObject);
var ok:boolean;
begin
  ok:=false;
  case changes of
    true: begin
            if MessageDlg('Nov dokument', 'Ali ste prepričani?', mtConfirmation, [mbYes, mbNo],0) = mrYes
            then begin
              ok:=true;
            end;
          end;
    false: begin
             ok:=true;
           end;
  end;
  if ok then
  begin
    IskanjeMap.Stop:=true;
    txt.Highlighter:=SynAnySyn1;
    Txt.Lines.Clear;
    changes:=False;
    filename:='';
    pw:='';
    EncDec.Checked:=false;
  end;
  if filename<>'' then bar.Panels[0].Text:='['+GuessFEncoding(txt.text)+'] '+MinimizeFileName(filename,80) else bar.Panels[0].Text:='';
  WhereXY;
  Txt.SetFocus;
end;

procedure TMainForm.btnCalcClick(Sender: TObject);
var pr:String;
begin
  try
    if trim(Txt.SelText)<>'' then
    begin
      pr:=Parser1.Evaluate(Txt.SelText);
      if pr<>'' then
      begin
        Txt.SelStart := Txt.SelEnd;
        Txt.SelText := '='+pr;
      end;
    end;
  except
  end;
  Txt.SetFocus;
end;

procedure TMainForm.EncDecChange(Sender: TObject);
begin
  frmPassword.edPassword.Text:='';
  if EncDec.Checked then
  begin
    if frmPassword.ShowModal=mrCancel then
    begin
      pw:='';EncDec.Checked:=False;
    end else
    begin
      pw:=frmPassword.edPassword.Text;
      actReloadExecute(Sender);
    end;
  end else pw:='';
  Txt.SetFocus;
end;

procedure TMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  IskanjeMap.Stop:=true;
  storage.Save;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if changes then
  begin
    canclose:=false;
    if MessageDlg('Izhod brez shranjevanja', 'Ali ste prepričani?', mtConfirmation, [mbYes, mbNo],0) = mrYes
    then begin
       canclose:=true;
    end;
  end else canclose:=true;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  caption:=version;
  storage.IniFileName:=ChangeFileExt(paramstr(0),'.ini');
  ResizeBar;

  SynMarkup := TSynEditMarkupHighlightAllCaret(txt.MarkupByClass[TSynEditMarkupHighlightAllCaret]);

  SynMarkup.MarkupInfo.FrameColor := clMoneyGreen; //clSilver
  SynMarkup.MarkupInfo.Background := clSkyBlue;    //clGray

  SynMarkup.WaitTime := 100;
  SynMarkup.Trim := True;
  SynMarkup.FullWord := True;
  SynMarkup.IgnoreKeywords := False;

end;

procedure TMainForm.FormDropFiles(Sender: TObject;
  const FileNames: array of string);
var tmp:string;
begin
  if ctrlondrop then
  begin
    if DirectoryExists(filenames[0],true) then
    begin
      tmp:=filenames[0]+PathDelim+fi;
    end else
    begin
      tmp:=ExtractFileDir(filenames[0])+PathDelim+fi;
    end;
    ctrlondrop:=false;
    IskanjeMap.Stop:=true;
    IskanjeMap.SearchFile:=tmp;
    IskanjeMap.Start;
  end else
  begin
    try LoadFile(filenames[0]);except end;
  end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssCtrl in Shift then ctrlondrop:=true;
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  ctrlondrop:=false;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  ResizeBar;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  storage.Restore;
  Application.ProcessMessages;
  NaloziObZagonu.Enabled:=true;
end;

procedure TMainForm.IskanjeMapChangeFolder(fullpath: string; info: TSearchRec);
begin
  try txt.Lines.Add(info.Name);changes:=True;except end;
end;

procedure TMainForm.IskanjeMapFileFind(fullpath: string; info: TSearchRec);
begin
  try txt.Lines.Add('  '+info.Name);changes:=True;except end;
end;

procedure TMainForm.MenuItem13Click(Sender: TObject);
var LTo:string;
begin
  LTo:=LTotmp;
  if InputQuery2('Prevajanje','V jezik (en,sl,de,ipd.) :',LTo)=mrOk then
  begin
    LTotmp:=LTo;
    OpenURL('https://translate.google.com/#view=home&op=translate&sl=auto&tl='+LTo+'&text='+UrlEncode(txt.SelText));
  end;
  Txt.SetFocus;
end;

procedure TMainForm.MenuItem14Click(Sender: TObject);
var MTo,MSubject:string;
begin
  if txt.seltext<>'' then
  begin
    if InputQuery2('Za','Prejemnikov e-naslov:',MTo)=mrOk then
    begin
       if InputQuery2('Tema','Tema sporočila:',MSubject)=mrOk then
       begin
         OpenURL('mailto:'+MTo+'?subject='+urlEncode(MSubject)+'&body='+urlEncode(txt.SelText));
       end;
    end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.MenuItem16Click(Sender: TObject);
begin
  ShraniKot:=true;btnSaveClick(sender);
end;

procedure TMainForm.MenuItem1Click(Sender: TObject);
begin
  txt.CutToClipboard;
end;

procedure TMainForm.MenuItem2Click(Sender: TObject);
begin
  txt.CopyToClipboard;
end;

procedure TMainForm.MenuItem3Click(Sender: TObject);
begin
  txt.PasteFromClipboard;
end;

procedure TMainForm.MenuItem5Click(Sender: TObject);
begin
  txt.SelectAll;
end;

procedure TMainForm.MenuItem6Click(Sender: TObject);
begin
  txt.SelText:=UpperCase(txt.SelText);
end;

procedure TMainForm.MenuItem7Click(Sender: TObject);
begin
  txt.SelText:=LowerCase(txt.SelText);
end;

procedure TMainForm.MenuItem8Click(Sender: TObject);
begin
  OpenDialog1.FileName:=txt.SelText;
  OpenDialog1.InitialDir:=lastdir;
  if OpenDialog1.Execute then
  begin
    try LoadFile(OpenDialog1.FileName);except end;
  end;
  Txt.SetFocus;
end;

procedure TMainForm.MenuItem9Click(Sender: TObject);
begin
  OpenURL('https://duckduckgo.com/?q='+txt.SelText);
  Txt.SetFocus;
end;

procedure TMainForm.NaloziObZagonuTimer(Sender: TObject);
var s:string;
begin
  NaloziObZagonu.Enabled:=False;
  filename:='';
  if ParamCount > 0 then
  begin
    s := ParamStr(1);
    try LoadFile(s);except end;
  end;
end;

procedure TMainForm.PopupMenu1Popup(Sender: TObject);
begin
  if txt.SelText<>'' then
  begin
    menuitem1.Enabled:=true;
    menuitem2.Enabled:=true;
    menuitem6.Enabled:=true;
    menuitem7.Enabled:=true;
    menuitem8.Enabled:=true;
    menuitem9.Enabled:=true;
    menuitem4.enabled:=true;
    menuitem10.enabled:=true;
    menuitem11.enabled:=true;
    menuitem12.enabled:=true;
    menuitem13.enabled:=true;
    menuItem14.enabled:=true;
    menuItem15.enabled:=true;
  end else
  begin
    menuitem1.Enabled:=false;
    menuitem2.Enabled:=false;
    menuitem6.Enabled:=false;
    menuitem7.Enabled:=false;
    menuitem8.Enabled:=false;
    menuitem9.Enabled:=false;
    menuitem4.enabled:=false;
    menuitem10.enabled:=false;
    menuitem11.enabled:=false;
    menuitem12.enabled:=false;
    menuitem13.enabled:=false;
    menuItem14.enabled:=false;
    menuItem15.enabled:=false;
  end;
end;

procedure TMainForm.TxtChange(Sender: TObject);
begin
  changes:=True;
  bar.Panels[0].Text:=MinimizeFileName(filename,80)+' *** [Ni shranjeno]';
  WhereXY;
end;

procedure TMainForm.txtClick(Sender: TObject);
begin
  WhereXY;
end;

procedure TMainForm.txtGutterClick(Sender: TObject; X, Y, Line: integer;
  mark: TSynEditMark);
begin
  txt.SelectLine(true);
end;

procedure TMainForm.txtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  WhereXY;
end;

procedure TMainForm.txtKeyPress(Sender: TObject; var Key: char);
var tmp:string;
begin
   tmp:=txt.SelText;if tmp='' then exit;
   case key of
     '(': begin
            txt.SelText:='('+tmp+')';key:=#00;
          end;
     ')': begin
            txt.SelText:='('+tmp+')';key:=#00;
          end;
     '[': begin
            txt.SelText:='['+tmp+']';key:=#00;
          end;
     ']': begin
            txt.SelText:='['+tmp+']';key:=#00;
          end;
     '{': begin
            txt.SelText:='{'+tmp+'}';key:=#00;
          end;
     '}': begin
            txt.SelText:='{'+tmp+'}';key:=#00;
          end;
     '"': begin
            txt.SelText:='"'+tmp+'"';key:=#00;
          end;
     '''': begin
            txt.SelText:=''''+tmp+'''';key:=#00;
          end;
     '<': begin
            txt.SelText:='<'+tmp+'>';key:=#00;
          end;
     '>': begin
            txt.SelText:='<'+tmp+'>';key:=#00;
          end;
   end;
end;

procedure TMainForm.txtKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  WhereXY;
end;

initialization
   FormatSettings.DecimalSeparator:='.';
   FormatSettings.ThousandSeparator:=',';


end.
