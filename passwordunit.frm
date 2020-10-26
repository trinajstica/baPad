object frmPassword: TfrmPassword
  Left = 459
  Height = 125
  Top = 242
  Width = 350
  ActiveControl = edPassword
  BorderStyle = bsDialog
  Caption = 'Geslo'
  ClientHeight = 125
  ClientWidth = 350
  DesignTimePPI = 120
  OnShow = FormShow
  Position = poMainFormCenter
  ShowInTaskBar = stNever
  LCLVersion = '7.2'
  object lblPassword: TLabel
    Left = 10
    Height = 20
    Top = 10
    Width = 87
    Caption = 'Vpišite geslo:'
    ParentColor = False
    ParentFont = False
  end
  object edPassword: TEdit
    Left = 10
    Height = 28
    Top = 40
    Width = 326
    Anchors = [akTop, akLeft, akRight]
    EchoMode = emPassword
    ParentFont = False
    PasswordChar = '*'
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
