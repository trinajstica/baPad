object frmPassword: TfrmPassword
  Left = 487
  Height = 100
  Top = 198
  Width = 420
  ActiveControl = edPassword
  BorderStyle = bsDialog
  Caption = 'Geslo'
  ClientHeight = 100
  ClientWidth = 420
  OnShow = FormShow
  Position = poMainFormCenter
  ShowInTaskBar = stNever
  LCLVersion = '7.1'
  object lblPassword: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 69
    Caption = 'Vpišite geslo:'
    ParentColor = False
  end
  object edPassword: TEdit
    Left = 8
    Height = 23
    Top = 32
    Width = 401
    Anchors = [akTop, akLeft, akRight]
    EchoMode = emPassword
    PasswordChar = '*'
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 249
    Height = 25
    Top = 64
    Width = 75
    Anchors = [akTop, akRight]
    Caption = 'V redu'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 334
    Height = 25
    Top = 64
    Width = 75
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Prekliči'
    ModalResult = 2
    TabOrder = 2
  end
end
