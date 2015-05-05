#include "stdafx.h"
#include "HandleThread.h"
#include "dataPlotDlg.h"
#include "DrawThread.h"

extern PointList pointList;
IMPLEMENT_DYNCREATE(HandleThread, CWinThread)

HandleThread::HandleThread()
{
}

HandleThread::~HandleThread()
{
}

BEGIN_MESSAGE_MAP(HandleThread, CWinThread)
ON_THREAD_MESSAGE(WM_DRAW,OnDraw)
END_MESSAGE_MAP()//��Ϣ��Ӧ

BOOL HandleThread::InitInstance()
{
	SlowDown=0;
	return TRUE;
}

int HandleThread::ExitInstance()
{
    return CWinThread::ExitInstance();
}

void HandleThread::OnDraw(WPARAM wParam,LPARAM lParam)
{//�ı���ˢ��
	CDataPlotDlg * pWnd = (CDataPlotDlg *)wParam;
	if(pWnd->cResult=="z"){
			receive+="0 ";
		}
		else{
			receive+=(pWnd->cResult);
		}
	SlowDown++;
	if(SlowDown=10){
		CEdit *pEdit = (CEdit *)pWnd->GetDlgItem(IDC_EDIT_DATA);//������ʾ�����Զ�����������
		int textLength = pEdit->GetWindowTextLength();
		pEdit->SetSel(textLength,textLength);
		pEdit->ReplaceSel(receive);
		pWnd->count+=1;
		SlowDown=0;
		receive.Empty();
	}
}