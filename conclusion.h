#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "resource.h"	

class Conclusion{
private:
	CString ccs;

public:
	void Clear(){
		ccs.Empty();
	}

	void Input(CString str){
		CString temp;
		temp =ccs+str;
		ccs.Empty();
	}

	CString GetContent(){
		return ccs;
	}
};