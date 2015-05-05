#define WM_DRAW    WM_USER + 1

class HandleThread : public CWinThread
{
    DECLARE_DYNCREATE(HandleThread)
protected:
	CString receive;
	int SlowDown;//½µµÍË¢ÐÂ´ÎÊý
    HandleThread ();        
    virtual ~HandleThread ();
public:
    virtual BOOL InitInstance();
    virtual int  ExitInstance();
protected:
    afx_msg void OnDraw(WPARAM wParam,LPARAM lParam);
    DECLARE_MESSAGE_MAP()
};