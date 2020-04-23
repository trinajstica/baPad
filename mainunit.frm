object MainForm: TMainForm
  Left = 431
  Height = 400
  Top = 192
  Width = 600
  ActiveControl = txt
  AllowDropFiles = True
  ClientHeight = 400
  ClientWidth = 600
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDropFiles = FormDropFiles
  OnResize = FormResize
  OnShow = FormShow
  Position = poScreenCenter
  SessionProperties = 'Height;Left;Top;txt.Font;Width'
  LCLVersion = '7.1'
  object Panel: TPanel
    Left = 1
    Height = 38
    Top = 1
    Width = 598
    Align = alTop
    BorderSpacing.Around = 1
    BevelInner = bvLowered
    BevelOuter = bvNone
    ClientHeight = 38
    ClientWidth = 598
    ParentFont = False
    TabOrder = 1
    object btnSave: TButton
      Left = 78
      Height = 34
      Hint = 'Shrani datoteko (Ctrl+S).'
      Top = 1
      Width = 75
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Shrani'
      OnClick = btnSaveClick
      ParentFont = False
      TabOrder = 1
    end
    object btnNew: TButton
      Left = 155
      Height = 34
      Hint = 'Nov dokument (Ctrl+N).'
      Top = 1
      Width = 75
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Nov'
      OnClick = btnNewClick
      ParentFont = False
      TabOrder = 2
    end
    object btnCalc: TButton
      Left = 232
      Height = 34
      Hint = 'Izračun označene formule (Ctrl+L).'
      Top = 1
      Width = 75
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Izračun'
      OnClick = btnCalcClick
      ParentFont = False
      TabOrder = 3
    end
    object btnFind: TButton
      Left = 309
      Height = 34
      Hint = 'Iskanje besedila (Ctrl+F / F3).'
      Top = 1
      Width = 75
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Iskanje'
      OnClick = btnFindClick
      ParentFont = False
      TabOrder = 4
    end
    object btnDonate: TButton
      Left = 520
      Height = 34
      Hint = 'Donirajte za razvoj brezplačnega programja.'
      Top = 1
      Width = 75
      Align = alRight
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = 'Donacija'
      OnClick = btnDonateClick
      ParentFont = False
      TabOrder = 7
    end
    object btnHelp: TButton
      Left = 498
      Height = 34
      Hint = 'Pomoč.'
      Top = 1
      Width = 20
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
      Height = 34
      Top = 1
      Width = 75
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      Caption = '&Odpri'
      OnClick = btnOpenClick
      ParentFont = False
      TabOrder = 0
    end
    object btnKriptiranje: TPanel
      Left = 386
      Height = 34
      Top = 1
      Width = 95
      Align = alLeft
      BorderSpacing.Right = 2
      BorderSpacing.Bottom = 2
      BevelInner = bvRaised
      BevelOuter = bvNone
      ClientHeight = 34
      ClientWidth = 95
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object EncDec: TCheckBox
        Left = 7
        Height = 32
        Hint = 'Kriptiranje'#13#10'(uporabi Ctrl+R za ponovno nalaganja datoteke).'
        Top = 1
        Width = 87
        Align = alClient
        BorderSpacing.Left = 6
        Caption = 'Kriptiranje'
        OnChange = EncDecChange
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object bar: TStatusBar
    Left = 0
    Height = 23
    Top = 377
    Width = 600
    Panels = <    
      item
        Width = 400
      end    
      item
        Alignment = taCenter
        Text = '1 : 1'
        Width = 40
      end>
    ParentFont = False
    SimplePanel = False
  end
  inline txt: TSynEdit
    Left = 0
    Height = 337
    Top = 40
    Width = 600
    Align = alClient
    Font.Height = -22
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Quality = fqNonAntialiased
    ParentColor = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnClick = txtClick
    OnKeyDown = txtKeyDown
    OnKeyUp = txtKeyUp
    Gutter.Width = 57
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
    inline SynLeftGutterPartList1: TSynGutterPartList
      object SynGutterLineNumber1: TSynGutterLineNumber
        Width = 27
        MouseActions = <>
        MarkupInfo.Background = clBtnFace
        MarkupInfo.Foreground = clNone
        DigitCount = 2
        ShowOnlyLineNumbersMultiplesOf = 1
        ZeroStart = False
        LeadingZeros = False
      end
      object SynGutterMarks1: TSynGutterMarks
        Width = 24
        MouseActions = <>
      end
      object SynGutterChanges1: TSynGutterChanges
        Width = 4
        MouseActions = <>
        ModifiedColor = 59900
        SavedColor = clGreen
      end
      object SynGutterSeparator1: TSynGutterSeparator
        Width = 2
        MouseActions = <>
        MarkupInfo.Background = clWhite
        MarkupInfo.Foreground = clGray
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Title = 'Odpri datoteko'
    Filter = 'Vse|*.*'
    Left = 303
    Top = 59
  end
  object SaveDialog1: TSaveDialog
    Title = 'Shrani datoteko'
    Left = 339
    Top = 61
  end
  object Parser1: TRLExpressionParser
    Left = 378
    Top = 61
  end
  object Standard: TActionList
    Left = 303
    Top = 95
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
  end
  object DCP_rijndael1: TDCP_rijndael
    Id = 9
    Algorithm = 'Rijndael'
    MaxKeySize = 256
    BlockSize = 128
    Left = 378
    Top = 95
  end
  object DCP_sha256_1: TDCP_sha256
    Id = 28
    Algorithm = 'SHA256'
    HashSize = 256
    Left = 414
    Top = 96
  end
  object NaloziObZagonu: TTimer
    Enabled = False
    Interval = 100
    OnTimer = NaloziObZagonuTimer
    Left = 303
    Top = 128
  end
  object storage: TIniPropStorage
    StoredValues = <>
    IniSection = 'NASTAVITVE'
    Left = 339
    Top = 95
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 339
    Top = 128
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
  end
  object PrintDialog1: TPrintDialog
    Left = 303
    Top = 160
  end
  object SynPHPSyn1: TSynPHPSyn
    DefaultFilter = 'PHP Files (*.php,*.php3,*.phtml,*.inc)|*.php;*.php3;*.phtml;*.inc'
    Enabled = False
    Left = 70
    Top = 51
  end
  object SynPasSyn1: TSynPasSyn
    Enabled = False
    CompilerMode = pcmDelphi
    NestedComments = False
    TypeHelpers = True
    Left = 102
    Top = 51
  end
  object SynHTMLSyn1: TSynHTMLSyn
    DefaultFilter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    Enabled = False
    Left = 134
    Top = 51
  end
  object SynXMLSyn1: TSynXMLSyn
    DefaultFilter = 'XML Document (*.xml,*.xsd,*.xsl,*.xslt,*.dtd)|*.xml;*.xsd;*.xsl;*.xslt;*.dtd'
    Enabled = False
    WantBracesParsed = False
    Left = 166
    Top = 53
  end
  object SynSQLSyn1: TSynSQLSyn
    DefaultFilter = 'SQL Files (*.sql)|*.sql'
    Enabled = False
    SQLDialect = sqlSybase
    Left = 198
    Top = 51
  end
  object SynVBSyn1: TSynVBSyn
    Enabled = False
    Left = 230
    Top = 53
  end
  object SynBatSyn1: TSynBatSyn
    DefaultFilter = 'MS-DOS Batch Files (*.bat;*.cmd)|*.bat;*.cmd'
    Enabled = False
    Left = 70
    Top = 87
  end
  object SynIniSyn1: TSynIniSyn
    DefaultFilter = 'INI Files (*.ini)|*.ini'
    Enabled = False
    Left = 102
    Top = 90
  end
  object SynAnySyn1: TSynAnySyn
    Enabled = False
    Comments = []
    DetectPreprocessor = False
    IdentifierChars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz'
    Markup = False
    Entity = False
    DollarVariables = False
    ActiveDot = False
    Left = 70
    Top = 122
  end
end
