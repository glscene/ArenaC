unit fOptionsD;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,


  fInitialD;


type
  PMyRec = ^TMyRec;
  TMyRec = record
    FName: string;
    LName: string;
  end;


type
  TFormOptions = class(TFormInitial)
    TreeView1: TTreeView;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    MyRecPtr: PMyRec;
    TreeViewIndex: LongInt;
  public
  end;


var
  FormOptions: TFormOptions;

implementation

{$R *.dfm}

(*
Assuming these types are used, the following code adds a
node to TreeView1 as the last sibling of the selected node.
A TMyRec record is associated with the added item.
The FName and LName fields are obtained from edit boxes
    Edit1 and Edit2.
*)


procedure TFormOptions.FormCreate(Sender: TObject);
begin
  inherited;
  New(MyRecPtr);
end;


procedure TFormOptions.Button1Click(Sender: TObject);
var
  I : Integer;
begin
  inherited;
(*
  for I := 0 to (TreeView1.Selected.Count - 1) do
    ListBox1.Items.Add(TreeView1.Selected.Item[I].Text);
*)
  MyRecPtr^.FName := Edit1.Text;     // ?
  MyRecPtr^.LName := Edit2.Text;     // ?

  TreeViewIndex := TreeView1.Selected.AbsoluteIndex;
  if TreeView1.Items.Count = 0 then
    TreeView1.Items.AddObject(nil, 'Item' + IntToStr(TreeViewIndex), MyRecPtr)
  else if (TreeViewIndex < TreeView1.Items.Count) and (TreeViewIndex >= 0) then
//    TreeView1.Items.AddObject(TreeView1.Items[TreeViewIndex],
//    'Item' + IntToStr(TreeViewIndex), MyRecPtr);
    TreeView1.Items.AddObject(TreeView1.Items[TreeViewIndex], Edit1.Text, nil);
    TreeView1.Items.AddObject(TreeView1.Items[TreeViewIndex], Edit2.Text, nil);

end;

(*
After an item containing a TMyRec record has been added, the
following code retrieves the FName and LName values
associated with the item and displays the values in a label.
*)

procedure TFormOptions.Button2Click(Sender: TObject);
begin
  inherited;
  if (TreeView1.Selected.Data <> nil) then // Query only works on new nodes.
    Edit3.Text := PMyRec(TreeView1.Selected.Data)^.FName + ' ' +
                  PMyRec(TreeView1.Selected.Data)^.LName;
end;

procedure TFormOptions.Button3Click(Sender: TObject);
begin
  inherited;
  Edit4.Text := IntToStr(TreeView1.Selected.AbsoluteIndex);
end;

procedure TFormOptions.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  //
end;

procedure TFormOptions.FormDestroy(Sender: TObject);
begin
  inherited;
  Dispose(MyRecPtr);

end;


end.
