#if _MSC_VER > 1000
#pragma once	
#endif // _MSC_VER > 1000

#include "resource.h"

class CheckData{
private:
	char sign[8];
	int isTrue;
public:
	CheckData();
	void Check(CString str);
	int GetVal();
};