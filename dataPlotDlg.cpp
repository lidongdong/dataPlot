// dataPlotDlg.cpp : implementation file
//

#include "stdafx.h"
#include <fstream>
#include "receiveData.h"
#include "linkData.h"
#include "dataPlot.h"
#include "dataPlotDlg.h"
//#include "HandleThread.h"
#include "DrawThread.h"

using namespace std;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

//Custom Static Variable
int CDataPlotDlg::state = 0;
int CDataPlotDlg::pause = 0;
PointList pointList;
CString receive;
int SlowDown = 0;
int average = 0;
int tempResult = 0;

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();
	
	// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA
	
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL
	
	// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
//{{AFX_MSG_MAP(CAboutDlg)
// No message handlers
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDataPlotDlg dialog

CDataPlotDlg::CDataPlotDlg(CWnd* pParent /*=NULL*/)
: CDialog(CDataPlotDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDataPlotDlg)
	m_EditData = _T("");
	m_ObPointNumber = 1500;
	m_ObMax = 0;
	m_ObMin = 0;
	count = 0;
	m_SaveNum = 10000;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
	//m_pThrd = AfxBeginThread(RUNTIME_CLASS(HandleThread));
	m_dThrd = AfxBeginThread(RUNTIME_CLASS(DrawThread));
}

void CDataPlotDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDataPlotDlg)
	DDX_Control(pDX, IDC_PAINTBOARDSETTING, m_PaintBoardSetting);
	DDX_Control(pDX, IDC_BtnSave, m_BtnSave);
	DDX_Control(pDX, IDC_BTNOPENSI, m_BtnOpenSI);
	DDX_Control(pDX, IDC_BTNCLOSESI, m_BtnCloseSI);
	DDX_Control(pDX, IDC_COMBO_STOP, m_ComboSTOP);
	DDX_Control(pDX, IDC_COMBO_SI, m_ComboSI);
	DDX_Control(pDX, IDC_COMBO_DB, m_ComboDB);
	DDX_Control(pDX, IDC_COMBO_CHECK, m_ComboCHECK);
	DDX_Control(pDX, IDC_COMBO_BD, m_ComboBD);
	DDX_Control(pDX, IDC_MSCOMM1, m_Mscomm1);
	DDX_Text(pDX, IDC_EDIT_DATA, m_EditData);
	DDX_Text(pDX, IDC_OBPOINTNUMBER, m_ObPointNumber);
	DDV_MinMaxInt(pDX, m_ObPointNumber, 10, 10000);
	DDX_Text(pDX, IDC_OBSERVERMAX, m_ObMax);
	DDX_Text(pDX, IDC_OBSERVERMIN, m_ObMin);
	DDX_Text(pDX, IDC_SaveNum, m_SaveNum);
	DDV_MinMaxInt(pDX, m_SaveNum, 1, 1000000);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDataPlotDlg, CDialog)
//{{AFX_MSG_MAP(CDataPlotDlg)
ON_WM_SYSCOMMAND()
ON_WM_PAINT()
ON_WM_QUERYDRAGICON()
ON_BN_CLICKED(IDC_BTNOPENSI, OnBtnopensi)
ON_BN_CLICKED(IDC_BTNCLOSESI, OnBtnclosesi)
ON_BN_CLICKED(IDC_BtnSave, OnBtnSave)
ON_BN_CLICKED(IDC_PAINTBOARDSETTING, OnPaintboardsetting)
ON_BN_CLICKED(IDC_CLEAR, OnClear)
ON_BN_CLICKED(IDC_PAUSE, OnPause)
ON_BN_CLICKED(IDC_BtnPaint, OnBtnPaint)
ON_BN_CLICKED(IDC_BtnDataSet, OnBtnDataSet)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDataPlotDlg message handlers

BOOL CDataPlotDlg::OnInitDialog()
{
	CDialog::OnInitDialog();
	//串口设置中ComboBox的初始化
	m_ComboSI.InsertString(0,"COM1");
	m_ComboSI.InsertString(1,"COM2");
	m_ComboSI.InsertString(2,"COM3");
	m_ComboSI.InsertString(3,"COM4");
	m_ComboSI.InsertString(4,"COM5");
	m_ComboSI.InsertString(5,"COM6");
	m_ComboSI.InsertString(6,"COM7");
	m_ComboSI.InsertString(7,"COM8");
	m_ComboSI.InsertString(8,"COM9");
	m_ComboSI.InsertString(9,"COM10");
	m_ComboSI.InsertString(10,"COM11");
	m_ComboSI.InsertString(11,"COM12");
	m_ComboSI.SetCurSel(4);
	
	m_ComboBD.InsertString(0,"9600");
	m_ComboBD.InsertString(1,"19200");
	m_ComboBD.InsertString(2,"38400");
	m_ComboBD.InsertString(3,"115200");
	m_ComboBD.SetCurSel(3);
	
	m_ComboDB.InsertString(0,"5");
	m_ComboDB.InsertString(1,"6");
	m_ComboDB.InsertString(2,"7");
	m_ComboDB.InsertString(3,"8");
	m_ComboDB.SetCurSel(3);
	
	m_ComboCHECK.InsertString(0,"None");
	m_ComboCHECK.InsertString(1,"Even");
	m_ComboCHECK.InsertString(2,"Odd");
	m_ComboCHECK.InsertString(3,"Mask");
	m_ComboCHECK.InsertString(4,"Space");
	m_ComboCHECK.SetCurSel(0);
	
	m_ComboSTOP.InsertString(0,"1");
	m_ComboSTOP.InsertString(1,"2");
	m_ComboSTOP.SetCurSel(0);
	
	// Add "About..." menu item to system menu.
	CRect   temprect(0,0,900,635);
    CWnd::SetWindowPos(NULL,0,0,temprect.Width(),temprect.Height(),SWP_NOZORDER|SWP_NOMOVE);//设置对话框的大小
	((CStatic *)GetDlgItem(IDC_PAINTBOARD))->MoveWindow(11,295,760,300,true);
	((CEdit *)GetDlgItem(IDC_EDIT_DATA))->SetLimitText(-1);
	
	m_dThrd->PostThreadMessage(WM_DRAWLINE, (WPARAM)this,(LPARAM)&pointList);
	
	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);
	
	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}
	
	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CDataPlotDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDataPlotDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting
		
		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);
		
		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;
		
		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CDataPlotDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

BEGIN_EVENTSINK_MAP(CDataPlotDlg, CDialog)
//{{AFX_EVENTSINK_MAP(CDataPlotDlg)
ON_EVENT(CDataPlotDlg, IDC_MSCOMM1, 1 /* OnComm */, OnCommMscomm1, VTS_NONE)
//}}AFX_EVENTSINK_MAP
END_EVENTSINK_MAP()



void CDataPlotDlg::OnCommMscomm1() 
{
	// TODO: Add your control notification handler code here
	VARIANT variant_inp;
	COleSafeArray safearray_inp;
	LONG len,k;
	BYTE rxdata[4096];
	CString strtemp;
	if(m_Mscomm1.GetCommEvent()==2){//收到信息
		variant_inp = m_Mscomm1.GetInput();
		safearray_inp=variant_inp;
		len = safearray_inp.GetOneDimSize();
		for(k=0;k<len;k++){
			safearray_inp.GetElement(&k,rxdata+k);
		}
		for(k=0;k<len;k++){
			BYTE bt=*(char*)(rxdata+k);//转换为char	
			strtemp.Format("%c",bt);		
			if (pause == 0){
				CString CheckTemp;
				CheckTemp = m_ReceiveBlock.ByteToBit(bt);
				m_str += CheckTemp;
				cData.Check(CheckTemp);
				if (cData.GetVal() == 8){
					if (state == 0){
						m_str.Empty();
					}
					else{
						//m_str回退64位
						if (m_str.GetLength() <= 64)m_str.Empty();
						else{
							m_str.Delete(m_str.GetLength() - 64, 64);
						}
					}
					m_ReceiveBlock.Empty();
					state = 1;
				}
			}
			//state=1;
		}
		if((state==1)){
			m_ReceiveBlock.input(m_str);
			m_str.Empty();
			while(m_ReceiveBlock.GetLength()>=64){
				CString receiveUnit;
				receiveUnit = m_ReceiveBlock.Get64bit();
				ld.add64(receiveUnit);
				cResult = ld.compute(); //数据处理
				//均值处理*****************************************************************
				if (average != 5){
					if (cResult!="z")tempResult += _ttoi(cResult);
					average++;
				}
				else{
					if (tempResult == 0)cResult = "z";
					else
					{
						int ld = tempResult / 5;
						cResult.Format("%d", ld);
						cResult += " ";
						count++;
					}
					tempResult = 0;
					average = 0;
					if (cResult == "z"){
						receive += "0 ";
					}
					else{
						receive += (cResult);
					}
					SlowDown++;
					//计数器
					CString showCount;
					showCount.Format("%d", count);
					((CStatic *)GetDlgItem(IDC_COUNT))->SetWindowText(showCount);
					//文本框刷新
					if (count == m_SaveNum+50){
						UpdateData(true);
						int pos = -1;
						for (int i = 0; i < 50; i++){
							pos = m_EditData.Find(" ", pos + 1);
						}
						m_EditData = m_EditData.Mid(pos + 1);
						UpdateData(false);
						count = m_SaveNum;
					}
					if (SlowDown = 10){
						CEdit *pEdit = (CEdit *)GetDlgItem(IDC_EDIT_DATA);//数据显示窗口自动滚动到最新
						int textLength = pEdit->GetWindowTextLength();
						pEdit->SetSel(textLength, textLength);
						pEdit->ReplaceSel(receive);
						SlowDown = 0;
						receive.Empty();
					}

					//添加到画图序列
					if (cResult == "z"){
						pointList.add("000000000000000000000");
					}
					else{
						pointList.add(cResult);
					}
					ld.Clear();
				}
				//************************************************************************
			//	if(cResult=="z"){
			//		receive+="0 ";
			//	}
			//	else{
			//		receive+=(cResult);
			//	}
			//	SlowDown++;
			//	count++;
			//	//计数器
			//	CString showCount;
			//	showCount.Format("%d",count);
			//	((CStatic *)GetDlgItem(IDC_COUNT))->SetWindowText(showCount);
			//	//文本框刷新
			//	if (count == MAX_TEXT){
			//		UpdateData(true);
			//		int pos = -1;
			//		for (int i = 0; i < MAX_TEXT - m_SaveNum; i++){
			//			pos = m_EditData.Find(" ", pos + 1);
			//		}
			//		m_EditData = m_EditData.Mid(pos + 1);
			//		UpdateData(false);
			//		count = m_SaveNum;
			//	}
			//	if(SlowDown=10){
			//		CEdit *pEdit = (CEdit *)GetDlgItem(IDC_EDIT_DATA);//数据显示窗口自动滚动到最新
			//		int textLength = pEdit->GetWindowTextLength();
			//		pEdit->SetSel(textLength,textLength);
			//		pEdit->ReplaceSel(receive);
			//		SlowDown=0;
			//		receive.Empty();
			//	}
			//	//添加到画图序列
			//	if(cResult=="z"){
			//		pointList.add("000000000000000000000");
			//	}else{
			//		pointList.add(cResult);
			//	}
			//	ld.Clear();
			}
		}
	}
	if(this->m_Mscomm1.GetCommEvent()==1006)AfxMessageBox("数据丢失");
	if(this->m_Mscomm1.GetCommEvent()==1008)AfxMessageBox("接收缓冲区溢出");
}	

void CDataPlotDlg::OnBtnopensi() 
{
	// TODO: Add your control notification handler code here
	//	mscomm从combox获取属性参数
	m_Mscomm1.SetCommPort((m_ComboSI.GetCurSel()+1));//端口号
	m_Mscomm1.SetInBufferSize(1024);//接收缓冲区大小
	
	CString settings;
	settings.Empty();
	m_ComboBD.GetLBText(m_ComboBD.GetCurSel(),settings);//波特率参数
	settings = settings + ",";
	switch(m_ComboCHECK.GetCurSel()){//校验位参数
	case 0:settings = settings + "n,";
		break;
	case 1:settings = settings + "e,";
		break;
	case 2:settings = settings + "o,";
		break;
	case 3:settings = settings + "m,";
		break;
	case 4:settings = settings + "s,";
		break;
	default:
		break;
	}
	
	switch(m_ComboDB.GetCurSel()){//数据位参数
	case 0:settings = settings + "5,";
		break;
	case 1:settings = settings + "6,";
		break;
	case 2:settings = settings + "7,";
		break;
	case 3:settings = settings + "8,";
		break;
	default:
		break;
	}
	
	switch(m_ComboSTOP.GetCurSel()){//停止位参数
	case 0:settings = settings + "1";
		break;
	case 1:settings = settings + "2";
		break;
	default:
		break;
	}
	
	m_Mscomm1.SetSettings(settings);//波特率等参数
	m_Mscomm1.SetSThreshold(0); //不触发发送事件
	m_Mscomm1.SetInputMode(1);//1，二进制方式检取数据
	m_Mscomm1.SetRThreshold(8);//参数1表示当数据接收缓冲区有大于等于一个字符时，引发OnComm事件
	m_Mscomm1.SetInputLen(0);//设置缓冲区长度为0
	
	if(!m_Mscomm1.GetPortOpen()){
		m_Mscomm1.SetPortOpen(true);
		CString text;
		m_ComboSI.GetLBText(m_ComboSI.GetCurSel(),text);
		((CStatic *)GetDlgItem(IDC_TIPS))->SetWindowText(text+"已开启");
		count = 0;
	}
	else
		AfxMessageBox("cannot open serial port");
	m_Mscomm1.GetInput();//预读缓冲区清除数据
	UpdateData(false);
	m_dThrd->ResumeThread();
}

void CDataPlotDlg::OnBtnclosesi() 
{
	// TODO: Add your control notification handler code here
	m_Mscomm1.SetPortOpen(false);
	CString text;
	m_ComboSI.GetLBText(m_ComboSI.GetCurSel(),text);
	((CStatic *)GetDlgItem(IDC_TIPS))->SetWindowText(text+"已关闭");
	m_dThrd->SuspendThread();
}

void CDataPlotDlg::OnBtnSave() 
{
	// TODO: Add your control notification handler code here
	//文件保存
	if(m_Mscomm1.GetPortOpen()){
		AfxMessageBox("请先关闭串口！");
	}
	else{
		CString outFile;
		CFileDialog FileDlg(FALSE, "txt","bat",OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,"txt||");
		if(FileDlg.DoModal()==IDOK){
			ofstream ofs(FileDlg.GetPathName());
			GetDlgItem(IDC_EDIT_DATA)->GetWindowText(outFile);
			int position = -1;
			if (count <= m_SaveNum){
				outFile.Replace(" ", "\n");
				ofs << outFile;
			}
			else{
				for (int i = 0; i < count-m_SaveNum; i++){
					position = outFile.Find(" ", position + 1);
				}
				outFile.Replace(" ", "\n");
				ofs << outFile.Mid(position + 1);
			}
		}
		AfxMessageBox("保存完成！");
	}
}

void CDataPlotDlg::OnPaintboardsetting() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);
	pointList.SetSumNumber(m_ObPointNumber);
}

void CDataPlotDlg::OnClear() 
{
	// TODO: Add your control notification handler code here
	m_EditData.Empty();
	count=0;
	UpdateData(false);
	pointList.Empty();
}

void CDataPlotDlg::OnPause() 
{
	// TODO: Add your control notification handler code here
	if(pause==0){
		pause=1;
		m_dThrd->SuspendThread();
		pointList.Empty();
		state=0;
	}else{
		pause=0;
		m_dThrd->ResumeThread();
	}
}

void CDataPlotDlg::OnBtnPaint() 
{
	// TODO: Add your control notification handler code here
}

void CDataPlotDlg::OnBtnDataSet() 
{
	// TODO: Add your control notification handler code here
	UpdateData(true);
}
