// dataPlotDlg.h : header file
//
//{{AFX_INCLUDES()
#include "mscomm.h"
#include "binaryData.h"
#include "linkData.h"
#include "receiveData.h"
#include "PointList.h"
#include "checkData.h"
//}}AFX_INCLUDES


#if !defined(AFX_DATAPLOTDLG_H__E7D4DDBA_A087_4823_848D_5F1E0DD13073__INCLUDED_)
#define AFX_DATAPLOTDLG_H__E7D4DDBA_A087_4823_848D_5F1E0DD13073__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDataPlotDlg dialog

//全局变量:


class CDataPlotDlg : public CDialog
{
	// Construction
public:
	class PointList;
	CDataPlotDlg(CWnd* pParent = NULL);	// standard constructor
	//BinaryData temp;
	LinkData ld;
	ReceiveBlock m_ReceiveBlock;
	CWinThread* m_pThrd;
	CWinThread* m_dThrd;
	CString m_str;
	CString cResult;
	CheckData cData;
	int count;		//接收的数据个数
	//static int oneFlag;		//值为1的位数
	static int state;		//为1接收数据，为0等待
	static int pause;		//暂停/启动标志,0为暂停，1为启动
	//PointList * pointList;
	
	/*static UINT ComputeThread(LPVOID pParam)
	{
	class PointList;
	CDataPlotDlg * dlg = (CDataPlotDlg *)pParam;
	pointList->GetMax();
	/*CDataPlotDlg * dlg = (CDataPlotDlg *)pParam;
	
	  if(dlg->cnt1 == 8){
	  dlg->cnt2++;
	  //数据处理
	  dlg->temp.putDataBit(dlg->m_ReceiveBlock.output());
	  dlg->ld.add(dlg->temp);//ld的左侧为低位
	  if(dlg->cnt2==2){//二段拼接
	  //转换计算
	  dlg->m_EditData.ReleaseBuffer();//解除CString长度锁定
	  dlg->m_EditData+= dlg->ld.compute();				
	  dlg->cnt2=0;
	  CPoint point;
	  point.x=dlg->pointList.GetLength();
	  point.y=atoi(dlg->ld.compute());
	  dlg->pointList.add(point);
	  dlg->pointList.Draw(dlg);
	  dlg->ld.Clear();
	  dlg->SetDlgItemText(IDC_EDIT_DATA,dlg->m_EditData);
	  CEdit *pEdit = (CEdit *)dlg->GetDlgItem(IDC_EDIT_DATA);//数据显示窗口自动滚动到最新
	  pEdit->LineScroll(pEdit->GetLineCount(),0);
	  }
	  }
	  return  0;
}*/
	
	
	// Dialog Data
	//{{AFX_DATA(CDataPlotDlg)
	enum { IDD = IDD_DATAPLOT_DIALOG };
	CButton	m_PaintBoardSetting;
	CButton	m_BtnSave;
	CButton	m_BtnOpenSI;
	CButton	m_BtnCloseSI;
	CComboBox	m_ComboSTOP;
	CComboBox	m_ComboSI;
	CComboBox	m_ComboDB;
	CComboBox	m_ComboCHECK;
	CComboBox	m_ComboBD;
	CMSComm	m_Mscomm1;
	CString	m_EditData;
	int		m_ObPointNumber;
	int		m_ObMax;
	int		m_ObMin;
	int		m_SaveNum;
	//}}AFX_DATA
	
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDataPlotDlg)
	protected:
		virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
		//}}AFX_VIRTUAL
		
		// Implementation
	protected:
		HICON m_hIcon;
		
		// Generated message map functions
		//{{AFX_MSG(CDataPlotDlg)
		virtual BOOL OnInitDialog();
		afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
		afx_msg void OnPaint();
		afx_msg HCURSOR OnQueryDragIcon();
		afx_msg void OnCommMscomm1();
		afx_msg void OnBtnopensi();
		afx_msg void OnBtnclosesi();
		afx_msg void OnBtnSave();
		afx_msg void OnPaintboardsetting();
		afx_msg void OnClear();
	afx_msg void OnPause();
	afx_msg void OnBtnPaint();
	afx_msg void OnBtnDataSet();
		DECLARE_EVENTSINK_MAP()
	//}}AFX_MSG
			DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DATAPLOTDLG_H__E7D4DDBA_A087_4823_848D_5F1E0DD13073__INCLUDED_)
