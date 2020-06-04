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
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmDialog: TfrmDialog;

implementation

{$R *.frm}

{ TfrmDialog }

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  edText.SetFocus;
  edText.SelectAll;
end;

end.

