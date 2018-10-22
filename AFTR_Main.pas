unit AFTR_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Math;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i: Integer;
  s: string;

implementation

{$R *.dfm}

procedure GetTreeDirs(Root: string; OutPaper: TStringList);

  procedure InsDirs(s: string; ind: Integer; Path: string; OPaper: TStringList);
  var { ��������� � Memo ������ ��������� ���������� }
    sr: TSearchRec;
    attr: Integer;
  begin
    attr := 0;
    attr := faAnyFile;
    if DirectoryExists(Path) then
      if FindFirst(IncludeTrailingBackslash(Path) + '*.*', attr, sr) = 0 then
      begin
        repeat
          if (sr.attr = faDirectory) and (sr.Name[Length(sr.Name)] <> '.') then
            OPaper.Insert(ind, s + sr.Name);
        until (FindNext(sr) <> 0);
        FindClose(sr);
      end
  end;

begin
  { ��������� ������������ ��������� ������� }
  if not DirectoryExists(Root) then
    exit;
  { ������� ������ ��������� ������ ����������� }
  if Root[Length(Root)] <> '\' then
    InsDirs(Root + '\', OutPaper.Count, Root, OutPaper)
  else
    InsDirs(Root, OutPaper.Count, Root, OutPaper);
  i := 0;
  repeat
    s := OutPaper[i]; // � s �������� ���� � ��� ���������� � ������ ���.
    // ��������� ����� �� ������ ����������� � ������,
    // ������ ��������� � ��� ����������.
    // ShowMessage(s);
    // ��� ����� ����������� OutPaper.Lines.Count.
    // ����� ������� �������� � ������� ����� ��� �� ������������,
    // ����������� ���� � ������ �� ��� ��� ������.
    InsDirs(s + '\', i + 1, OutPaper[i], OutPaper);
    inc(i);
  until (i = OutPaper.Count);
end;

procedure GetAllFiles(Path: string; Lb: TListBox);
var
  sRec: TSearchRec;
  isFound: boolean;
begin
  isFound := FindFirst(Path + '\*.*', faAnyFile, sRec) = 0;
  while isFound do
  begin
    if (sRec.Name <> '.') and (sRec.Name <> '..') then
    begin
      if (sRec.attr and faDirectory) = faDirectory then
        GetAllFiles(Path + '\' + sRec.Name, Lb);
      Lb.Items.Add(Path + '\' + sRec.Name);
    end;
    Application.ProcessMessages;
    isFound := FindNext(sRec) = 0;
  end;
  FindClose(sRec);
end;

procedure ListFileDir(Path: string; FileList: TStrings);
var
  sr: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if (sr.attr <> faDirectory) then
      begin
        FileList.Add(sr.Name);
      end;
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  myList, FileList: TStringList;
  path, dir, source, destination: string;
  z, k, w, pg, step: Integer;


begin
  path:=Edit1.Text;
  myList := TStringList.Create();
  FileList := TStringList.Create();

  Button1.Enabled := false;
  GetTreeDirs(path, myList);

  step := round(100 / (myList.Count));
  ProgressBar1.step := step;

  z := 0;

  repeat

    ListBox1.Items.Add(myList[z]);
    dir := myList[z];


    ListFileDir((dir + '\'), FileList);

    w := 0;
    if (FileList.Count <> 0) then
    begin

      repeat

        ListBox2.Items.Add(FileList[w]);

        source := dir + '\' + FileList[w];
        destination := path + FileList[w];
        ListBox3.Items.Add(source + '  = >  ' + destination);
        MoveFile(PWideChar(WideString(source)),
          PWideChar(WideString(destination)));

        inc(w);
      until (w = FileList.Count);
    end;

FileList.Clear;

    ProgressBar1.Position := step;
    step := step + step;
    ProgressBar1.Repaint;
    ProgressBar1.Refresh;
    ProgressBar1.Update;

    inc(z);
  until (z = myList.Count);
  myList.Free;
  FileList.Free;

  Button1.Enabled := true;
  Button1.Caption := '���!';
  label1.Caption := '���������� ' + inttostr(listbox2.Items.Count) + ' ������.';
end;

procedure TForm2.Button2Click(Sender: TObject);

var
//  FileList: TStringList;
  myList, FileList: TStringList;
  path, fn, dir, source, destination: string;
  z, k, w, pg, step: Integer;


begin

ListBox1.Clear;
ListBox2.Clear;
ListBox3.Clear;


  path:=Edit1.Text;
//  myList := TStringList.Create();

 FileList := TStringList.Create();

  Button2.Enabled := false;

 //GetTreeDirs(path, myList);


ListFileDir((path + '\'), FileList);

    w := 0;
    if (FileList.Count <> 0) then
    begin

      repeat

        ListBox1.Items.Add(FileList[w]);

        source := path + '\' + FileList[w];
       // destination := path + FileList[w];
fn:= StringReplace(ExtractFileName(FileList[w]),ExtractFileExt(FileList[w]),'',[]);
        ListBox2.Items.Add(fn);
if (fn[Length(fn)]='1') then
begin



    DeleteFile(source);

        ListBox3.Items.Add(fn + ' ������');
end;

        inc(w);
      until (w = FileList.Count);





end;
end;

end.
