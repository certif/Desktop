unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
ScreenDC:HDC;
Canvas:TCanvas;
begin
ScreenDC:=GetDC(0); //
Canvas:=TCanvas.Create();
Canvas.Handle:=ScreenDC;

Width:=Screen.Width;
Height:=Screen.Height;

Image1.Canvas.CopyRect(Rect(0,0,Image1.Width, Image1.Height), Canvas, Rect(0,0,Screen.Width,Screen.Height));
ReleaseDC(0,ScreenDC);
Canvas.Free;
end;

end.
