object frmSearchReplace: TfrmSearchReplace
  Left = 464
  Height = 177
  Top = 248
  Width = 350
  ActiveControl = edtPoisci
  BorderStyle = bsDialog
  Caption = 'Poišči in zamenjaj'
  ClientHeight = 177
  ClientWidth = 350
  Constraints.MinHeight = 177
  Constraints.MinWidth = 350
  DesignTimePPI = 120
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.1'
  object lblPoisci: TLabel
    Left = 8
    Height = 20
    Top = 8
    Width = 37
    Caption = 'Poišči'
    ParentColor = False
  end
  object edtPoisci: TEdit
    Left = 8
    Height = 28
    Top = 32
    Width = 334
    Anchors = [akTop, akLeft, akRight]
    TabOrder = 0
  end
  object lblZamenjaj: TLabel
    Left = 8
    Height = 20
    Top = 72
    Width = 62
    Caption = 'Zamenjaj'
    ParentColor = False
  end
  object edtZamenjaj: TEdit
    Left = 8
    Height = 28
    Top = 96
    Width = 334
    Anchors = [akTop, akLeft, akRight]
    TabOrder = 1
  end
  object btnSearchReplace: TButton
    Left = 8
    Height = 31
    Top = 139
    Width = 184
    Anchors = [akLeft, akBottom]
    Caption = 'Poišči && Zamenjaj'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object btnClose: TButton
    Left = 200
    Height = 31
    Top = 139
    Width = 94
    Cancel = True
    Caption = 'Zapri'
    OnClick = btnCloseClick
    TabOrder = 3
  end
end
