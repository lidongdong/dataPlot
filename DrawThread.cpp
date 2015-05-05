// DrawThread.cpp : implementation file
//

#include "stdafx.h"
#include "dataPlot.h"
#include "DrawThread.h"
#include "PointList.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// DrawThread

IMPLEMENT_DYNCREATE(DrawThread, CWinThread)

DrawThread::DrawThread()
{
}

DrawThread::~DrawThread()
{
}

BOOL DrawThread::InitInstance()
{
	// TODO:  perform and per-thread initialization here
	return TRUE;
}

int DrawThread::ExitInstance()
{
	// TODO:  perform any per-thread cleanup here
	return CWinThread::ExitInstance();
}
 
void DrawThread::DrawLine(WPARAM wParam, LPARAM lParam){
	CDataPlotDlg * pWnd = (CDataPlotDlg *)wParam;
	PointList * pl = (PointList *)lParam;
	while(1){
		pl->Draw(pWnd);
		Sleep(20);
	}
}

BEGIN_MESSAGE_MAP(DrawThread, CWinThread)
	//{{AFX_MSG_MAP(DrawThread)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
ON_THREAD_MESSAGE(WM_DRAWLINE,DrawLine)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// DrawThread message handlers
