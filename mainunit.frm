object MainForm: TMainForm
  Left = 444
  Height = 500
  Top = 242
  Width = 750
  ActiveControl = txt
  AllowDropFiles = True
  ClientHeight = 500
  ClientWidth = 750
  Constraints.MinHeight = 500
  Constraints.MinWidth = 750
  DesignTimePPI = 120
  KeyPreview = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDropFiles = FormDropFiles
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  Position = poScreenCenter
  SessionProperties = 'Height;Left;Top;txt.Font;Width'
  LCLVersion = '7.2'
  object Panel: TPanel
    Left = 1
    Height = 48
    Top = 1
    Width = 748
    Align = alTop
    BorderSpacing.Around = 1
    BevelInner = bvLowered
    BevelOuter = bvNone
    ClientHeight = 48
    ClientWidth = 748
    ParentFont = False
    TabOrder = 1
    object btnSave: TButton
      Left = 97
      Height = 44
      Hint = 'Shrani datoteko (Ctrl+S).'
      Top = 1
      Width = 94
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Shrani'
      OnClick = btnSaveClick
      ParentFont = False
      TabOrder = 1
    end
    object btnNew: TButton
      Left = 193
      Height = 44
      Hint = 'Nov dokument (Ctrl+N).'
      Top = 1
      Width = 94
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Nov'
      OnClick = btnNewClick
      ParentFont = False
      TabOrder = 2
    end
    object btnCalc: TButton
      Left = 289
      Height = 44
      Hint = 'Izračun označene formule (Ctrl+L).'
      Top = 1
      Width = 94
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Izračun'
      OnClick = btnCalcClick
      ParentFont = False
      TabOrder = 3
    end
    object btnFind: TButton
      Left = 385
      Height = 44
      Hint = 'Iskanje besedila (Ctrl+F / F3).'
      Top = 1
      Width = 94
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Iskanje'
      OnClick = btnFindClick
      ParentFont = False
      TabOrder = 4
    end
    object btnDonate: TButton
      Left = 651
      Height = 44
      Hint = 'Donirajte za razvoj brezplačnega programja.'
      Top = 1
      Width = 94
      Align = alRight
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Donacija'
      OnClick = btnDonateClick
      ParentFont = False
      TabOrder = 7
    end
    object btnHelp: TButton
      Left = 624
      Height = 44
      Hint = 'Pomoč.'
      Top = 1
      Width = 25
      Align = alRight
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '?'
      OnClick = btnHelpClick
      ParentFont = False
      TabOrder = 6
    end
    object btnOpen: TButton
      Left = 1
      Height = 44
      Top = 1
      Width = 94
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Odpri'
      OnClick = btnOpenClick
      ParentFont = False
      TabOrder = 0
    end
    object btnKriptiranje: TPanel
      Left = 481
      Height = 44
      Top = 1
      Width = 138
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      BevelInner = bvRaised
      BevelOuter = bvNone
      ClientHeight = 44
      ClientWidth = 138
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object EncDec: TCheckBox
        Left = 9
        Height = 42
        Hint = 'Kriptiranje'#13#10'(uporabi Ctrl+R za ponovno nalaganja datoteke).'
        Top = 1
        Width = 128
        Align = alClient
        BorderSpacing.Left = 8
        Caption = 'Kriptiranje'
        OnChange = EncDecChange
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object bar: TStatusBar
    Left = 0
    Height = 29
    Top = 471
    Width = 750
    Panels = <    
      item
        Width = 500
      end    
      item
        Alignment = taCenter
        Text = '[0] 1 : 1'
        Width = 50
      end>
    ParentFont = False
    SimplePanel = False
  end
  inline txt: TSynEdit
    Left = 0
    Height = 421
    Top = 50
    Width = 750
    Align = alClient
    Font.Height = -28
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Quality = fqNonAntialiased
    ParentColor = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnClick = txtClick
    OnKeyDown = txtKeyDown
    OnKeyPress = txtKeyPress
    OnKeyUp = txtKeyUp
    Gutter.Width = 73
    Gutter.MouseActions = <>
    RightGutter.Width = 0
    RightGutter.MouseActions = <>
    Keystrokes = <    
      item
        Command = ecUp
        ShortCut = 38
      end    
      item
        Command = ecSelUp
        ShortCut = 8230
      end    
      item
        Command = ecScrollUp
        ShortCut = 16422
      end    
      item
        Command = ecDown
        ShortCut = 40
      end    
      item
        Command = ecSelDown
        ShortCut = 8232
      end    
      item
        Command = ecScrollDown
        ShortCut = 16424
      end    
      item
        Command = ecLeft
        ShortCut = 37
      end    
      item
        Command = ecSelLeft
        ShortCut = 8229
      end    
      item
        Command = ecWordLeft
        ShortCut = 16421
      end    
      item
        Command = ecSelWordLeft
        ShortCut = 24613
      end    
      item
        Command = ecRight
        ShortCut = 39
      end    
      item
        Command = ecSelRight
        ShortCut = 8231
      end    
      item
        Command = ecWordRight
        ShortCut = 16423
      end    
      item
        Command = ecSelWordRight
        ShortCut = 24615
      end    
      item
        Command = ecPageDown
        ShortCut = 34
      end    
      item
        Command = ecSelPageDown
        ShortCut = 8226
      end    
      item
        Command = ecPageBottom
        ShortCut = 16418
      end    
      item
        Command = ecSelPageBottom
        ShortCut = 24610
      end    
      item
        Command = ecPageUp
        ShortCut = 33
      end    
      item
        Command = ecSelPageUp
        ShortCut = 8225
      end    
      item
        Command = ecPageTop
        ShortCut = 16417
      end    
      item
        Command = ecSelPageTop
        ShortCut = 24609
      end    
      item
        Command = ecLineStart
        ShortCut = 36
      end    
      item
        Command = ecSelLineStart
        ShortCut = 8228
      end    
      item
        Command = ecEditorTop
        ShortCut = 16420
      end    
      item
        Command = ecSelEditorTop
        ShortCut = 24612
      end    
      item
        Command = ecLineEnd
        ShortCut = 35
      end    
      item
        Command = ecSelLineEnd
        ShortCut = 8227
      end    
      item
        Command = ecEditorBottom
        ShortCut = 16419
      end    
      item
        Command = ecSelEditorBottom
        ShortCut = 24611
      end    
      item
        Command = ecToggleMode
        ShortCut = 45
      end    
      item
        Command = ecCopy
        ShortCut = 16429
      end    
      item
        Command = ecPaste
        ShortCut = 8237
      end    
      item
        Command = ecDeleteChar
        ShortCut = 46
      end    
      item
        Command = ecCut
        ShortCut = 8238
      end    
      item
        Command = ecDeleteLastChar
        ShortCut = 8
      end    
      item
        Command = ecDeleteLastChar
        ShortCut = 8200
      end    
      item
        Command = ecDeleteLastWord
        ShortCut = 16392
      end    
      item
        Command = ecUndo
        ShortCut = 32776
      end    
      item
        Command = ecRedo
        ShortCut = 40968
      end    
      item
        Command = ecLineBreak
        ShortCut = 13
      end    
      item
        Command = ecSelectAll
        ShortCut = 16449
      end    
      item
        Command = ecCopy
        ShortCut = 16451
      end    
      item
        Command = ecBlockIndent
        ShortCut = 24649
      end    
      item
        Command = ecBlockUnindent
        ShortCut = 24661
      end    
      item
        Command = ecPaste
        ShortCut = 16470
      end    
      item
        Command = ecCut
        ShortCut = 16472
      end    
      item
        Command = ecDeleteLine
        ShortCut = 16473
      end    
      item
        Command = ecDeleteEOL
        ShortCut = 24665
      end    
      item
        Command = ecUndo
        ShortCut = 16474
      end    
      item
        Command = ecRedo
        ShortCut = 24666
      end    
      item
        Command = ecTab
        ShortCut = 9
      end    
      item
        Command = ecShiftTab
        ShortCut = 8201
      end    
      item
        Command = ecMatchBracket
        ShortCut = 24642
      end    
      item
        Command = ecColSelUp
        ShortCut = 40998
      end    
      item
        Command = ecColSelDown
        ShortCut = 41000
      end    
      item
        Command = ecColSelLeft
        ShortCut = 40997
      end    
      item
        Command = ecColSelRight
        ShortCut = 40999
      end    
      item
        Command = ecColSelPageDown
        ShortCut = 40994
      end    
      item
        Command = ecColSelPageBottom
        ShortCut = 57378
      end    
      item
        Command = ecColSelPageUp
        ShortCut = 40993
      end    
      item
        Command = ecColSelPageTop
        ShortCut = 57377
      end    
      item
        Command = ecColSelLineStart
        ShortCut = 40996
      end    
      item
        Command = ecColSelLineEnd
        ShortCut = 40995
      end    
      item
        Command = ecColSelEditorTop
        ShortCut = 57380
      end    
      item
        Command = ecColSelEditorBottom
        ShortCut = 57379
      end>
    MouseActions = <>
    MouseTextActions = <>
    MouseSelActions = <>
    Options = [eoAutoIndent, eoBracketHighlight, eoGroupUndo, eoSmartTabs, eoTabsToSpaces, eoTrimTrailingSpaces]
    MouseOptions = [emCtrlWheelZoom]
    VisibleSpecialChars = [vscSpace, vscTabAtLast]
    ScrollBars = ssAutoBoth
    SelectedColor.BackPriority = 50
    SelectedColor.ForePriority = 50
    SelectedColor.FramePriority = 50
    SelectedColor.BoldPriority = 50
    SelectedColor.ItalicPriority = 50
    SelectedColor.UnderlinePriority = 50
    SelectedColor.StrikeOutPriority = 50
    ScrollOnEditLeftOptions.ScrollExtraPercent = 20
    ScrollOnEditLeftOptions.ScrollExtraMax = 10
    ScrollOnEditRightOptions.ScrollExtraPercent = 30
    ScrollOnEditRightOptions.ScrollExtraMax = 25
    BracketHighlightStyle = sbhsBoth
    BracketMatchColor.Background = clNone
    BracketMatchColor.Foreground = clNone
    BracketMatchColor.Style = [fsBold]
    FoldedCodeColor.Background = clNone
    FoldedCodeColor.Foreground = clGray
    FoldedCodeColor.FrameColor = clGray
    MouseLinkColor.Background = clNone
    MouseLinkColor.Foreground = clBlue
    LineHighlightColor.Background = clNone
    LineHighlightColor.Foreground = clNone
    OnChange = txtChange
    OnGutterClick = txtGutterClick
    inline SynLeftGutterPartList1: TSynGutterPartList
      object SynGutterLineNumber1: TSynGutterLineNumber
        Width = 35
        MouseActions = <>
        MarkupInfo.Background = clBtnFace
        MarkupInfo.Foreground = clNone
        DigitCount = 2
        ShowOnlyLineNumbersMultiplesOf = 1
        ZeroStart = False
        LeadingZeros = False
      end
      object SynGutterMarks1: TSynGutterMarks
        Width = 30
        MouseActions = <>
      end
      object SynGutterChanges1: TSynGutterChanges
        Width = 5
        MouseActions = <>
        ModifiedColor = 59900
        SavedColor = clGreen
      end
      object SynGutterSeparator1: TSynGutterSeparator
        Width = 3
        MouseActions = <>
        MarkupInfo.Background = clWhite
        MarkupInfo.Foreground = clGray
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Title = 'Odpri datoteko'
    Filter = 'Vse datoteke|*.*|LCKED datoteke|*.lcked'
    Left = 379
    Top = 74
  end
  object SaveDialog1: TSaveDialog
    Title = 'Shrani datoteko'
    Filter = 'Vse datoteke|*.*|LCKED datoteke|*.lcked'
    Left = 416
    Top = 73
  end
  object Parser1: TRLExpressionParser
    Left = 456
    Top = 74
  end
  object Standard: TActionList
    Left = 379
    Top = 119
    object actSave: TAction
      Caption = '&Save'
      OnExecute = btnSaveClick
      ShortCut = 16467
    end
    object actOpen: TAction
      Caption = '&Open'
      OnExecute = btnOpenClick
      ShortCut = 16463
    end
    object actNew: TAction
      Caption = '&New'
      OnExecute = btnNewClick
      ShortCut = 16462
    end
    object actCalc: TAction
      Caption = 'Ca&lc'
      OnExecute = btnCalcClick
      ShortCut = 16460
    end
    object actFind: TAction
      Caption = '&Find'
      OnExecute = btnFindClick
      ShortCut = 16454
    end
    object actF3: TAction
      Caption = 'actF3'
      OnExecute = actF3Execute
      ShortCut = 114
    end
    object actReload: TAction
      Caption = 'actReload'
      OnExecute = actReloadExecute
      ShortCut = 16466
    end
    object actSearchReplace: TAction
      Caption = 'actSearchReplace'
      OnExecute = actSearchReplaceExecute
      ShortCut = 16456
    end
    object actFontPlus: TAction
      Caption = 'actFontPlus'
      OnExecute = actFontPlusExecute
      ShortCut = 16491
    end
    object actFontMinus: TAction
      Caption = 'actFontMinus'
      OnExecute = actFontMinusExecute
      SecondaryShortCuts.Strings = (
        'Ctrl+0'
      )
      ShortCut = 16493
    end
    object actFontReset: TAction
      Caption = 'actFontReset'
      OnExecute = actFontResetExecute
      ShortCut = 16490
    end
    object actWordWrap: TAction
      Caption = 'actWordWrap'
      OnExecute = actWordWrapExecute
      ShortCut = 16471
    end
    object actUrl: TAction
      Caption = 'actUrl'
      OnExecute = actUrlExecute
      ShortCut = 16453
    end
    object actSort: TAction
      Caption = 'actSort'
      OnExecute = actSortExecute
      ShortCut = 16468
    end
    object actPrint: TAction
      Caption = 'actPrint'
      OnExecute = actPrintExecute
      ShortCut = 16464
    end
    object actStats: TAction
      Caption = 'actStats'
      OnExecute = actStatsExecute
      ShortCut = 16459
    end
    object actEposta: TAction
      Caption = 'actEposta'
      OnExecute = MenuItem14Click
      ShortCut = 16461
    end
    object actTranslate: TAction
      Caption = 'actTranslate'
      OnExecute = MenuItem13Click
      ShortCut = 16455
    end
    object arcPassword: TAction
      Caption = 'arcPassword'
      OnExecute = arcPasswordExecute
      ShortCut = 16465
    end
    object actWordUnWrap: TAction
      Caption = 'actWordUnWrap'
      OnExecute = actWordUnWrapExecute
      ShortCut = 49239
    end
    object actRemoveDupes: TAction
      Caption = 'actRemoveDupes'
      OnExecute = actRemoveDupesExecute
      ShortCut = 16452
    end
  end
  object DCP_rijndael1: TDCP_rijndael
    Id = 9
    Algorithm = 'Rijndael'
    MaxKeySize = 256
    BlockSize = 128
    Left = 456
    Top = 119
  end
  object DCP_sha256_1: TDCP_sha256
    Id = 28
    Algorithm = 'SHA256'
    HashSize = 256
    Left = 456
    Top = 160
  end
  object NaloziObZagonu: TTimer
    Enabled = False
    Interval = 100
    OnTimer = NaloziObZagonuTimer
    Left = 379
    Top = 160
  end
  object storage: TIniPropStorage
    StoredValues = <>
    IniSection = 'NASTAVITVE'
    Left = 416
    Top = 119
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 416
    Top = 160
    object MenuItem16: TMenuItem
      Caption = 'Shrani kot'
      OnClick = MenuItem16Click
    end
    object MenuItem17: TMenuItem
      Caption = '-'
    end
    object MenuItem1: TMenuItem
      Caption = 'Izreži'
      ShortCut = 16472
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Kopiraj'
      ShortCut = 16451
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Prilepi'
      ShortCut = 16470
      OnClick = MenuItem3Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Izberi vse'
      ShortCut = 16449
      OnClick = MenuItem5Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = 'V velike črke'
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = 'V male črke'
      OnClick = MenuItem7Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MenuItem13: TMenuItem
      Caption = 'Prevedi'
      ShortCut = 16455
      OnClick = MenuItem13Click
    end
    object MenuItem14: TMenuItem
      Caption = 'E-pošta'
      ShortCut = 16461
      OnClick = MenuItem14Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = 'Odpri datoteko'
      ShortCut = 24655
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Iskanje na spletu'
      ShortCut = 24646
      OnClick = MenuItem9Click
    end
    object MenuItem11: TMenuItem
      Caption = 'Odpri URL na spletu'
      ShortCut = 16453
      OnClick = actUrlExecute
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = 'Razvrsti izbrano'
      ShortCut = 16468
      OnClick = actSortExecute
    end
    object MenuItem18: TMenuItem
      Caption = 'Odstrani dvojnike'
      ShortCut = 16452
      OnClick = actRemoveDupesExecute
    end
    object MenuItem10: TMenuItem
      Caption = 'Izračunaj izbrano'
      ShortCut = 16460
      OnClick = btnCalcClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MenuItem12: TMenuItem
      Caption = 'Zavij označeno besedilo'
      ShortCut = 16471
      OnClick = actWordWrapExecute
    end
    object MenuItem15: TMenuItem
      Caption = 'Odvij označeno besedilo'
      ShortCut = 49239
      OnClick = actWordUnWrapExecute
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 379
    Top = 200
  end
  object SynPHPSyn1: TSynPHPSyn
    DefaultFilter = 'PHP Files (*.php,*.php3,*.phtml,*.inc)|*.php;*.php3;*.phtml;*.inc'
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    InvalidSymbolAttri.BackPriority = 0
    InvalidSymbolAttri.ForePriority = 0
    InvalidSymbolAttri.FramePriority = 0
    InvalidSymbolAttri.BoldPriority = 0
    InvalidSymbolAttri.ItalicPriority = 0
    InvalidSymbolAttri.UnderlinePriority = 0
    InvalidSymbolAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    VariableAttri.BackPriority = 0
    VariableAttri.ForePriority = 0
    VariableAttri.FramePriority = 0
    VariableAttri.BoldPriority = 0
    VariableAttri.ItalicPriority = 0
    VariableAttri.UnderlinePriority = 0
    VariableAttri.StrikeOutPriority = 0
    Left = 88
    Top = 64
  end
  object SynPasSyn1: TSynPasSyn
    Enabled = False
    AsmAttri.BackPriority = 0
    AsmAttri.ForePriority = 0
    AsmAttri.FramePriority = 0
    AsmAttri.BoldPriority = 0
    AsmAttri.ItalicPriority = 0
    AsmAttri.UnderlinePriority = 0
    AsmAttri.StrikeOutPriority = 0
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    DirectiveAttri.BackPriority = 0
    DirectiveAttri.ForePriority = 0
    DirectiveAttri.FramePriority = 0
    DirectiveAttri.BoldPriority = 0
    DirectiveAttri.ItalicPriority = 0
    DirectiveAttri.UnderlinePriority = 0
    DirectiveAttri.StrikeOutPriority = 0
    CompilerMode = pcmDelphi
    NestedComments = False
    TypeHelpers = True
    Left = 128
    Top = 64
  end
  object SynHTMLSyn1: TSynHTMLSyn
    DefaultFilter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    Enabled = False
    AndAttri.BackPriority = 0
    AndAttri.ForePriority = 0
    AndAttri.FramePriority = 0
    AndAttri.BoldPriority = 0
    AndAttri.ItalicPriority = 0
    AndAttri.UnderlinePriority = 0
    AndAttri.StrikeOutPriority = 0
    ASPAttri.BackPriority = 0
    ASPAttri.ForePriority = 0
    ASPAttri.FramePriority = 0
    ASPAttri.BoldPriority = 0
    ASPAttri.ItalicPriority = 0
    ASPAttri.UnderlinePriority = 0
    ASPAttri.StrikeOutPriority = 0
    CDATAAttri.BackPriority = 0
    CDATAAttri.ForePriority = 0
    CDATAAttri.FramePriority = 0
    CDATAAttri.BoldPriority = 0
    CDATAAttri.ItalicPriority = 0
    CDATAAttri.UnderlinePriority = 0
    CDATAAttri.StrikeOutPriority = 0
    DOCTYPEAttri.BackPriority = 0
    DOCTYPEAttri.ForePriority = 0
    DOCTYPEAttri.FramePriority = 0
    DOCTYPEAttri.BoldPriority = 0
    DOCTYPEAttri.ItalicPriority = 0
    DOCTYPEAttri.UnderlinePriority = 0
    DOCTYPEAttri.StrikeOutPriority = 0
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    TextAttri.BackPriority = 0
    TextAttri.ForePriority = 0
    TextAttri.FramePriority = 0
    TextAttri.BoldPriority = 0
    TextAttri.ItalicPriority = 0
    TextAttri.UnderlinePriority = 0
    TextAttri.StrikeOutPriority = 0
    UndefKeyAttri.BackPriority = 0
    UndefKeyAttri.ForePriority = 0
    UndefKeyAttri.FramePriority = 0
    UndefKeyAttri.BoldPriority = 0
    UndefKeyAttri.ItalicPriority = 0
    UndefKeyAttri.UnderlinePriority = 0
    UndefKeyAttri.StrikeOutPriority = 0
    ValueAttri.BackPriority = 0
    ValueAttri.ForePriority = 0
    ValueAttri.FramePriority = 0
    ValueAttri.BoldPriority = 0
    ValueAttri.ItalicPriority = 0
    ValueAttri.UnderlinePriority = 0
    ValueAttri.StrikeOutPriority = 0
    Left = 168
    Top = 64
  end
  object SynXMLSyn1: TSynXMLSyn
    DefaultFilter = 'XML Document (*.xml,*.xsd,*.xsl,*.xslt,*.dtd)|*.xml;*.xsd;*.xsl;*.xslt;*.dtd'
    Enabled = False
    ElementAttri.BackPriority = 0
    ElementAttri.ForePriority = 0
    ElementAttri.FramePriority = 0
    ElementAttri.BoldPriority = 0
    ElementAttri.ItalicPriority = 0
    ElementAttri.UnderlinePriority = 0
    ElementAttri.StrikeOutPriority = 0
    AttributeAttri.BackPriority = 0
    AttributeAttri.ForePriority = 0
    AttributeAttri.FramePriority = 0
    AttributeAttri.BoldPriority = 0
    AttributeAttri.ItalicPriority = 0
    AttributeAttri.UnderlinePriority = 0
    AttributeAttri.StrikeOutPriority = 0
    NamespaceAttributeAttri.BackPriority = 0
    NamespaceAttributeAttri.ForePriority = 0
    NamespaceAttributeAttri.FramePriority = 0
    NamespaceAttributeAttri.BoldPriority = 0
    NamespaceAttributeAttri.ItalicPriority = 0
    NamespaceAttributeAttri.UnderlinePriority = 0
    NamespaceAttributeAttri.StrikeOutPriority = 0
    AttributeValueAttri.BackPriority = 0
    AttributeValueAttri.ForePriority = 0
    AttributeValueAttri.FramePriority = 0
    AttributeValueAttri.BoldPriority = 0
    AttributeValueAttri.ItalicPriority = 0
    AttributeValueAttri.UnderlinePriority = 0
    AttributeValueAttri.StrikeOutPriority = 0
    NamespaceAttributeValueAttri.BackPriority = 0
    NamespaceAttributeValueAttri.ForePriority = 0
    NamespaceAttributeValueAttri.FramePriority = 0
    NamespaceAttributeValueAttri.BoldPriority = 0
    NamespaceAttributeValueAttri.ItalicPriority = 0
    NamespaceAttributeValueAttri.UnderlinePriority = 0
    NamespaceAttributeValueAttri.StrikeOutPriority = 0
    TextAttri.BackPriority = 0
    TextAttri.ForePriority = 0
    TextAttri.FramePriority = 0
    TextAttri.BoldPriority = 0
    TextAttri.ItalicPriority = 0
    TextAttri.UnderlinePriority = 0
    TextAttri.StrikeOutPriority = 0
    CDATAAttri.BackPriority = 0
    CDATAAttri.ForePriority = 0
    CDATAAttri.FramePriority = 0
    CDATAAttri.BoldPriority = 0
    CDATAAttri.ItalicPriority = 0
    CDATAAttri.UnderlinePriority = 0
    CDATAAttri.StrikeOutPriority = 0
    EntityRefAttri.BackPriority = 0
    EntityRefAttri.ForePriority = 0
    EntityRefAttri.FramePriority = 0
    EntityRefAttri.BoldPriority = 0
    EntityRefAttri.ItalicPriority = 0
    EntityRefAttri.UnderlinePriority = 0
    EntityRefAttri.StrikeOutPriority = 0
    ProcessingInstructionAttri.BackPriority = 0
    ProcessingInstructionAttri.ForePriority = 0
    ProcessingInstructionAttri.FramePriority = 0
    ProcessingInstructionAttri.BoldPriority = 0
    ProcessingInstructionAttri.ItalicPriority = 0
    ProcessingInstructionAttri.UnderlinePriority = 0
    ProcessingInstructionAttri.StrikeOutPriority = 0
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    DocTypeAttri.BackPriority = 0
    DocTypeAttri.ForePriority = 0
    DocTypeAttri.FramePriority = 0
    DocTypeAttri.BoldPriority = 0
    DocTypeAttri.ItalicPriority = 0
    DocTypeAttri.UnderlinePriority = 0
    DocTypeAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    WantBracesParsed = False
    Left = 208
    Top = 64
  end
  object SynSQLSyn1: TSynSQLSyn
    DefaultFilter = 'SQL Files (*.sql)|*.sql'
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    DataTypeAttri.BackPriority = 0
    DataTypeAttri.ForePriority = 0
    DataTypeAttri.FramePriority = 0
    DataTypeAttri.BoldPriority = 0
    DataTypeAttri.ItalicPriority = 0
    DataTypeAttri.UnderlinePriority = 0
    DataTypeAttri.StrikeOutPriority = 0
    DefaultPackageAttri.BackPriority = 0
    DefaultPackageAttri.ForePriority = 0
    DefaultPackageAttri.FramePriority = 0
    DefaultPackageAttri.BoldPriority = 0
    DefaultPackageAttri.ItalicPriority = 0
    DefaultPackageAttri.UnderlinePriority = 0
    DefaultPackageAttri.StrikeOutPriority = 0
    ExceptionAttri.BackPriority = 0
    ExceptionAttri.ForePriority = 0
    ExceptionAttri.FramePriority = 0
    ExceptionAttri.BoldPriority = 0
    ExceptionAttri.ItalicPriority = 0
    ExceptionAttri.UnderlinePriority = 0
    ExceptionAttri.StrikeOutPriority = 0
    FunctionAttri.BackPriority = 0
    FunctionAttri.ForePriority = 0
    FunctionAttri.FramePriority = 0
    FunctionAttri.BoldPriority = 0
    FunctionAttri.ItalicPriority = 0
    FunctionAttri.UnderlinePriority = 0
    FunctionAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    PLSQLAttri.BackPriority = 0
    PLSQLAttri.ForePriority = 0
    PLSQLAttri.FramePriority = 0
    PLSQLAttri.BoldPriority = 0
    PLSQLAttri.ItalicPriority = 0
    PLSQLAttri.UnderlinePriority = 0
    PLSQLAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    SQLPlusAttri.BackPriority = 0
    SQLPlusAttri.ForePriority = 0
    SQLPlusAttri.FramePriority = 0
    SQLPlusAttri.BoldPriority = 0
    SQLPlusAttri.ItalicPriority = 0
    SQLPlusAttri.UnderlinePriority = 0
    SQLPlusAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    TableNameAttri.BackPriority = 0
    TableNameAttri.ForePriority = 0
    TableNameAttri.FramePriority = 0
    TableNameAttri.BoldPriority = 0
    TableNameAttri.ItalicPriority = 0
    TableNameAttri.UnderlinePriority = 0
    TableNameAttri.StrikeOutPriority = 0
    VariableAttri.BackPriority = 0
    VariableAttri.ForePriority = 0
    VariableAttri.FramePriority = 0
    VariableAttri.BoldPriority = 0
    VariableAttri.ItalicPriority = 0
    VariableAttri.UnderlinePriority = 0
    VariableAttri.StrikeOutPriority = 0
    SQLDialect = sqlSybase
    Left = 248
    Top = 64
  end
  object SynVBSyn1: TSynVBSyn
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    Left = 288
    Top = 64
  end
  object SynBatSyn1: TSynBatSyn
    DefaultFilter = 'MS-DOS Batch Files (*.bat;*.cmd)|*.bat;*.cmd'
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    VariableAttri.BackPriority = 0
    VariableAttri.ForePriority = 0
    VariableAttri.FramePriority = 0
    VariableAttri.BoldPriority = 0
    VariableAttri.ItalicPriority = 0
    VariableAttri.UnderlinePriority = 0
    VariableAttri.StrikeOutPriority = 0
    Left = 88
    Top = 109
  end
  object SynIniSyn1: TSynIniSyn
    DefaultFilter = 'INI Files (*.ini)|*.ini'
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    TextAttri.BackPriority = 0
    TextAttri.ForePriority = 0
    TextAttri.FramePriority = 0
    TextAttri.BoldPriority = 0
    TextAttri.ItalicPriority = 0
    TextAttri.UnderlinePriority = 0
    TextAttri.StrikeOutPriority = 0
    SectionAttri.BackPriority = 0
    SectionAttri.ForePriority = 0
    SectionAttri.FramePriority = 0
    SectionAttri.BoldPriority = 0
    SectionAttri.ItalicPriority = 0
    SectionAttri.UnderlinePriority = 0
    SectionAttri.StrikeOutPriority = 0
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    Left = 128
    Top = 109
  end
  object SynAnySyn1: TSynAnySyn
    Enabled = False
    CommentAttri.BackPriority = 0
    CommentAttri.ForePriority = 0
    CommentAttri.FramePriority = 0
    CommentAttri.BoldPriority = 0
    CommentAttri.ItalicPriority = 0
    CommentAttri.UnderlinePriority = 0
    CommentAttri.StrikeOutPriority = 0
    Comments = []
    DetectPreprocessor = False
    IdentifierAttri.BackPriority = 0
    IdentifierAttri.ForePriority = 0
    IdentifierAttri.FramePriority = 0
    IdentifierAttri.BoldPriority = 0
    IdentifierAttri.ItalicPriority = 0
    IdentifierAttri.UnderlinePriority = 0
    IdentifierAttri.StrikeOutPriority = 0
    IdentifierChars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz'
    KeyAttri.BackPriority = 0
    KeyAttri.ForePriority = 0
    KeyAttri.FramePriority = 0
    KeyAttri.BoldPriority = 0
    KeyAttri.ItalicPriority = 0
    KeyAttri.UnderlinePriority = 0
    KeyAttri.StrikeOutPriority = 0
    ConstantAttri.BackPriority = 0
    ConstantAttri.ForePriority = 0
    ConstantAttri.FramePriority = 0
    ConstantAttri.BoldPriority = 0
    ConstantAttri.ItalicPriority = 0
    ConstantAttri.UnderlinePriority = 0
    ConstantAttri.StrikeOutPriority = 0
    ObjectAttri.BackPriority = 0
    ObjectAttri.ForePriority = 0
    ObjectAttri.FramePriority = 0
    ObjectAttri.BoldPriority = 0
    ObjectAttri.ItalicPriority = 0
    ObjectAttri.UnderlinePriority = 0
    ObjectAttri.StrikeOutPriority = 0
    EntityAttri.BackPriority = 0
    EntityAttri.ForePriority = 0
    EntityAttri.FramePriority = 0
    EntityAttri.BoldPriority = 0
    EntityAttri.ItalicPriority = 0
    EntityAttri.UnderlinePriority = 0
    EntityAttri.StrikeOutPriority = 0
    VariableAttri.BackPriority = 0
    VariableAttri.ForePriority = 0
    VariableAttri.FramePriority = 0
    VariableAttri.BoldPriority = 0
    VariableAttri.ItalicPriority = 0
    VariableAttri.UnderlinePriority = 0
    VariableAttri.StrikeOutPriority = 0
    DotAttri.BackPriority = 0
    DotAttri.ForePriority = 0
    DotAttri.FramePriority = 0
    DotAttri.BoldPriority = 0
    DotAttri.ItalicPriority = 0
    DotAttri.UnderlinePriority = 0
    DotAttri.StrikeOutPriority = 0
    NumberAttri.BackPriority = 0
    NumberAttri.ForePriority = 0
    NumberAttri.FramePriority = 0
    NumberAttri.BoldPriority = 0
    NumberAttri.ItalicPriority = 0
    NumberAttri.UnderlinePriority = 0
    NumberAttri.StrikeOutPriority = 0
    PreprocessorAttri.BackPriority = 0
    PreprocessorAttri.ForePriority = 0
    PreprocessorAttri.FramePriority = 0
    PreprocessorAttri.BoldPriority = 0
    PreprocessorAttri.ItalicPriority = 0
    PreprocessorAttri.UnderlinePriority = 0
    PreprocessorAttri.StrikeOutPriority = 0
    SpaceAttri.BackPriority = 0
    SpaceAttri.ForePriority = 0
    SpaceAttri.FramePriority = 0
    SpaceAttri.BoldPriority = 0
    SpaceAttri.ItalicPriority = 0
    SpaceAttri.UnderlinePriority = 0
    SpaceAttri.StrikeOutPriority = 0
    StringAttri.BackPriority = 0
    StringAttri.ForePriority = 0
    StringAttri.FramePriority = 0
    StringAttri.BoldPriority = 0
    StringAttri.ItalicPriority = 0
    StringAttri.UnderlinePriority = 0
    StringAttri.StrikeOutPriority = 0
    SymbolAttri.BackPriority = 0
    SymbolAttri.ForePriority = 0
    SymbolAttri.FramePriority = 0
    SymbolAttri.BoldPriority = 0
    SymbolAttri.ItalicPriority = 0
    SymbolAttri.UnderlinePriority = 0
    SymbolAttri.StrikeOutPriority = 0
    Markup = False
    Entity = False
    DollarVariables = False
    ActiveDot = False
    Left = 88
    Top = 153
  end
  object IskanjeMap: TplFileSearch
    OnFileFind = IskanjeMapFileFind
    OnChangeFolder = IskanjeMapChangeFolder
    Left = 416
    Top = 200
  end
end
