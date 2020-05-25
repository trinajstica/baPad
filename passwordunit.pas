unit passwordunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPassword }

  TfrmPassword = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;
    edPassword: TEdit;
    lblPassword: TLabel;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmPassword: TfrmPassword;

implementation

{$R *.frm}

{ TfrmPassword }

procedure TfrmPassword.FormShow(Sender: TObject);
begin
  edPassword.SetFocus;
end;

end.

