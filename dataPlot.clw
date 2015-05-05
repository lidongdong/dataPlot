; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDataPlotDlg
LastTemplate=CWinThread
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "dataPlot.h"

ClassCount=5
Class1=CDataPlotApp
Class2=CDataPlotDlg
Class3=CAboutDlg

ResourceCount=3
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class4=PaintBoard
Class5=DrawThread
Resource3=IDD_DATAPLOT_DIALOG

[CLS:CDataPlotApp]
Type=0
HeaderFile=dataPlot.h
ImplementationFile=dataPlot.cpp
Filter=N

[CLS:CDataPlotDlg]
Type=0
HeaderFile=dataPlotDlg.h
ImplementationFile=dataPlotDlg.cpp
Filter=D
LastObject=IDC_EDIT_DATA
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=dataPlotDlg.h
ImplementationFile=dataPlotDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_DATAPLOT_DIALOG]
Type=1
Class=CDataPlotDlg
ControlCount=32
Control1=IDC_SI_SETTING,button,1342177287
Control2=IDC_T_SI,static,1342308352
Control3=IDC_T_BD,static,1342308352
Control4=IDC_T_DB,static,1342308352
Control5=IDC_T_CHECK,static,1342308352
Control6=IDC_T_STOP,static,1342308352
Control7=IDC_COMBO_SI,combobox,1344340226
Control8=IDC_COMBO_BD,combobox,1344340226
Control9=IDC_COMBO_DB,combobox,1344340226
Control10=IDC_COMBO_CHECK,combobox,1344340226
Control11=IDC_COMBO_STOP,combobox,1344340226
Control12=IDC_BTNOPENSI,button,1342242816
Control13=IDC_BTNCLOSESI,button,1342242816
Control14=IDC_MSCOMM1,{648A5600-2C6E-101B-82B6-000000000014},1342242816
Control15=IDC_EDIT_DATA,edit,1352730628
Control16=IDC_STATIC,button,1342177287
Control17=IDC_BtnSave,button,1342242816
Control18=IDC_PAINTBOARD,static,1342312448
Control19=IDC_OBSERVERMIN,edit,1350639746
Control20=IDC_OBSERVERMAX,edit,1350639746
Control21=IDC_OBPOINTNUMBER,edit,1350639746
Control22=IDC_STATIC,static,1342308865
Control23=IDC_STATIC,static,1342308865
Control24=IDC_STATIC,static,1342308865
Control25=IDC_PAINTBOARDSETTING,button,1342242816
Control26=IDC_CLEAR,button,1342242816
Control27=IDC_TIPS,static,1342308352
Control28=IDC_PAUSE,button,1342242816
Control29=IDC_TCHART,{BDEB0088-66F9-4A55-ABD2-0BF8DEEC1196},1342242816
Control30=IDC_STATIC,static,1342308865
Control31=IDC_SaveNum,edit,1350639746
Control32=IDC_BtnDataSet,button,1342242816

[CLS:PaintBoard]
Type=0
HeaderFile=PaintBoard.h
ImplementationFile=PaintBoard.cpp
BaseClass=CStatic
Filter=W

[CLS:DrawThread]
Type=0
HeaderFile=DrawThread.h
ImplementationFile=DrawThread.cpp
BaseClass=CWinThread
Filter=N

