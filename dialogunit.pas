unit dialogunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmDialog }

  TfrmDialog = class(TForm)
    btnCancel: TButton;
    btnOk: TButton;
    edText: TEdit;
    lblText: TLabel;
  private

  public

  end;

var
  frmDialog: TfrmDialog;

implementation

{$R *.frm}

end.

