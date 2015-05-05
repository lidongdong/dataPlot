#include"stdafx.h"
#include "receiveData.h"

ReceiveBlock::ReceiveBlock(){
	Length=0;
	receiveBlock = new char[99999];
	test =0;
}

void ReceiveBlock::input(CString cs){
	for(int i=0;i<cs.GetLength();i++){
		receiveBlock[Length] = cs.GetAt(i);
		Length++;
	}
//	receiveBlock[Length] = '\0';
}

CString ReceiveBlock::ByteToBit(BYTE bt){
	CString result = "00000000";
	for(int i=0;i<8;i++){
		if((int)((bt>>i)&(0x01))==1){
			result.SetAt(7-i,'1');
		}
	}
	return result;
}

void ReceiveBlock::LeftMove(int Num){
	for(int i=Num;i<Length;i++){
		receiveBlock[i-Num]=receiveBlock[i];
	}
	Length = Length-Num;
	receiveBlock[Length] = '\0';
}

int ReceiveBlock::GetLength(){
	return Length;
}

void ReceiveBlock::Empty(){
	Length=0;
}

void ReceiveBlock::remove(int Num){
	for(int i=1;i<=Num;i++){
		receiveBlock[Length-i] = '0';
	}
	Length = Length-7;
	receiveBlock[Length]='\0';
}

/*CString ReceiveBlock::output(){//È¡°ËÎ»
	char temp[8];
	for(int i=0;i<8;i++){
		temp[i]=receiveBlock[i];
		test++;
	}
	LeftMove(8);
	return temp;
}*/

CString ReceiveBlock::Get64bit(){
	CString temp = "00000000000000000000000000000000000000000000000000000000000000000";
	for(int i=0;i<64;i++){
		temp.SetAt(i,receiveBlock[i]);
	}
	temp.SetAt(64,'\0');
	LeftMove(64);
	return temp;
}