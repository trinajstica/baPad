object frmDialog: TfrmDialog
  Left = 459
  Height = 125
  Top = 242
  Width = 350
  ActiveControl = edText
  BorderStyle = bsDialog
  ClientHeight = 125
  ClientWidth = 350
  DesignTimePPI = 120
  OnClose = FormClose
  OnShow = FormShow
  Position = poMainFormCenter
  ShowInTaskBar = stNever
  LCLVersion = '7.2'
  object lblText: TLabel
    Left = 10
    Height = 20
    Top = 10
    Width = 25
    Caption = 'text'
    ParentColor = False
    ParentFont = False
  end
  object edText: TEdit
    Left = 10
    Height = 28
    Top = 40
    Width = 326
    Anchors = [akTop, akLeft, akRight]
    ParentFont = False
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 136
    Height = 31
    Top = 80
    Width = 94
    Anchors = [akTop, akRight]
    Caption = 'V redu'
    Default = True
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 242
    Height = 31
    Top = 80
    Width = 94
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Prekliči'
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
end
