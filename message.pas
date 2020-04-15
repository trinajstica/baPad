unit message;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmMessage }

  TfrmMessage = class(TForm)
    lblMessage: TLabel;
  private

  public

  end;

var
  frmMessage: TfrmMessage;

implementation

{$R *.frm}

end.
