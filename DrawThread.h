#if !defined(AFX_DRAWTHREAD_H__08E521F8_768E_4736_9C71_132105D98CB8__INCLUDED_)
#define AFX_DRAWTHREAD_H__08E521F8_768E_4736_9C71_132105D98CB8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// DrawThread.h : header file
//



/////////////////////////////////////////////////////////////////////////////
// DrawThread thread
#define WM_DRAWLINE    WM_USER + 2
class DrawThread : public CWinThread
{
	DECLARE_DYNCREATE(DrawThread)
protected:
	DrawThread();           // protected constructor used by dynamic creation

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(DrawThread)
	public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~DrawThread();

	// Generated message map functions
	//{{AFX_MSG(DrawThread)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	afx_msg void DrawLine(WPARAM wParam,LPARAM lParam);

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DRAWTHREAD_H__08E521F8_768E_4736_9C71_132105D98CB8__INCLUDED_)
