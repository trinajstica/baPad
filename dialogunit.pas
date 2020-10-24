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
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmDialog: TfrmDialog;

implementation uses mainunit;

{$R *.frm}

{ TfrmDialog }

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  edText.SetFocus;
  edText.SelectAll;
end;

procedure TfrmDialog.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ss:=edText.Text;
end;

end.

