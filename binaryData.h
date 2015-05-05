#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "resource.h"	
#include <math.h>

class BinaryData
{
public:
	char m_bit[8];
	int tail;
	
public:
	BinaryData(){
		tail = 0;
		for(int i =0;i<8;i++){
			m_bit[i]='0';
		}
	}
	
	void clear(){
		tail = 0;
		for(int i =0;i<8;i++){
			m_bit[i]='0';
		}
	}
	
	void addTail(int n){
		tail+=n;
	}
	
	bool isFull(){
		if(tail == 7)return true;
		else
			return false;
	}
	
	void putDataBit(CString ch){
		//strcpy(m_bit,ch);			
	}
	
	void putDataBit(char * data){
		for(int i=0;i<8;i++){
			m_bit[i]=data[i];
		}
	}
	
	char * getAddress(){
		return m_bit;
	}
	
	void equals(BinaryData bd){
		for(int i=0;i<DATALENGTH;i++){
			m_bit[i] = bd.getBitNumber(i);
			tail++;
		}
	}
	
	BOOL isAllOne(){
		for(int i=0;i<8;i++){
			if(m_bit[i]=='0')return false;
		}
		return true;
	}
	
	char getBitNumber(int num){
		return m_bit[num];
	}
	
	void toBinary(unsigned char * str){
		for(int i=0;i<8;i++){
			m_bit[i]=str[i];
			m_bit[i]=(*str)&(0x01<<i);
		}
	}
	
};