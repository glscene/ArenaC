//
(*  GLSceneAI based on GLScene https://github.com/glscene/glsceneai  *)
//
unit uGlobalsD;

interface

uses
  System.SysUtils,
  System.IniFiles;


const
  //cRegistryKey = 'Software\AudioScene';
  RegGLSViewer = PathDelim + 'SOFTWARE' + PathDelim + 'AudioScene' + PathDelim;


  CubeSizeKS = 1000;


var
  ExePath: TFileName;
  ModelPath:   TFileName;
  TexturePath: TFileName;
  IniFile: TIniFile;

  Language: integer;
  GeneralSection: string = RegGLSViewer + 'General';

  SplashStart : Boolean;
  TipOfTheDay : Boolean;

const
  // file types to import/export
  ftTXT = 'txt';  // text
  ftCSV = 'csv';  // csv
  ftDAT = 'dat';  // dat
  ftSQL = 'sql';  // sql
  ftTVN = 'tvn';  // treeview nodes

//==========================================================================
implementation
//==========================================================================



//---------------------------
 initialization

   FormatSettings.DecimalSeparator := '.';


end.
