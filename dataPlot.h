// dataPlot.h : main header file for the DATAPLOT application
//

#if !defined(AFX_DATAPLOT_H__0B06E6B1_C374_4AE0_BCA7_471976F25210__INCLUDED_)
#define AFX_DATAPLOT_H__0B06E6B1_C374_4AE0_BCA7_471976F25210__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDataPlotApp:
// See dataPlot.cpp for the implementation of this class
//

class CDataPlotApp : public CWinApp
{
public:
	CDataPlotApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDataPlotApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDataPlotApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DATAPLOT_H__0B06E6B1_C374_4AE0_BCA7_471976F25210__INCLUDED_)
