object frmPassword: TfrmPassword
  Left = 476
  Height = 108
  Top = 214
  Width = 419
  ActiveControl = edPassword
  BorderStyle = bsDialog
  Caption = 'Geslo'
  ClientHeight = 108
  ClientWidth = 419
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
    Width = 400
    Anchors = [akTop, akLeft, akRight]
    EchoMode = emPassword
    PasswordChar = '*'
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 248
    Height = 25
    Top = 72
    Width = 75
    Anchors = [akTop, akRight]
    Caption = 'V redu'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 333
    Height = 25
    Top = 72
    Width = 75
    Anchors = [akTop, akRight]
    Caption = 'Prekliči'
    ModalResult = 2
    TabOrder = 2
  end
end
