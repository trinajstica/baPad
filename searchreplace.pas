unit searchreplace;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmSearchReplace }

  TfrmSearchReplace = class(TForm)
    btnSearchReplace: TButton;
    btnClose: TButton;
    edtPoisci: TEdit;
    edtZamenjaj: TEdit;
    lblPoisci: TLabel;
    lblZamenjaj: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmSearchReplace: TfrmSearchReplace;

implementation

{$R *.frm}

{ TfrmSearchReplace }

procedure TfrmSearchReplace.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSearchReplace.FormShow(Sender: TObject);
begin
  if visible then begin
    edtPoisci.SetFocus;
    edtPoisci.SelectAll;
  end;
end;

end.
