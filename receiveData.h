//用于拼接数据段
/*#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

  
	#include "Resource.h"
	
	  class ReceiveBlock{
	  
		private:
		CString receiveBlock;
		
		  public:
		  void input(CString cs){//存储接收数据
		  //	receiveBlock.ReleaseBuffer();
		  receiveBlock+=cs;
		  }
		  
			void LeftMove(int num){
			if(receiveBlock.GetLength()==8){
			receiveBlock.Empty();
			}
			else if(receiveBlock.GetLength()>8){
			for(int j=num;j<receiveBlock.GetLength();j++){
			receiveBlock.SetAt(j-num,receiveBlock[j]);
			}
			receiveBlock.Delete(receiveBlock.GetLength()-num,num);
			}
			}
			
			  int GetLength(){
			  return receiveBlock.GetLength();
			  }
			  
				CString output(){//取出8位数据并左移8位
				CString cs = "000000000";
				for(int i=0;i<8;i++){
				//	cs[i]=receiveBlock[i];
				cs.SetAt(i,receiveBlock[i]);
				}
				cs.SetAt(8,'\0');
				LeftMove(8);
				return cs;
				}
};*/

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


#include "Resource.h"

class ReceiveBlock{
private:
	char * receiveBlock;
	int Length;
	int test;
public:
	void input(CString cs);
	CString ByteToBit(BYTE bt); 
	void Empty();
	void remove(int Num);
	ReceiveBlock();
	void LeftMove(int Num);
	int GetLength();
	CString output();
	CString Get64bit();
};

