#include"stdafx.h"
#include "checkData.h"

CheckData::CheckData(){
	isTrue = 0;
}

void CheckData::Check(CString str){
	CString standard = "10101010";
	if(str == standard)
		isTrue+=1;
	else
		isTrue=0;
}

int CheckData::GetVal(){
	if(isTrue == 8){
		isTrue=0;
		return 8;
	}
	else{
		return -1;
	}
}

