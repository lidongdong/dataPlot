//����ƴ�����ݶ�
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


#include "binaryData.h"
#include "Resource.h"

class LinkData{
private:
	char data[64];//�ܼ�64λ
	int tailL;//��־��β
	int minus;//������־
	
public:
	LinkData(){
		tailL=0;
		for(int i=0;i<64;i++){
			data[i]='0';
		}
		minus = 1;
	}
	
	/*BinaryData * getData(){
		return data;
	}
	
	void add(BinaryData bd){
		data[tailL].equals(bd);
		tailL++;
	}*/
	
	int add64(CString ch){
		for(int i=0;i<64;i++){			
				data[i]=ch.GetAt(i);
		}
		tailL=64;
		return 1;
	}
	
	void Clear(){
		for(int i=0;i<64;i++){
			data[i]='0';
		}
		tailL=0;
	}
	
	/*CString GetData(){
		CString str = "0000000000000000000000000000000000000000000000000000000000000000";
		for(int i=0;i<8;i++){
			for(int j=0;j<8;j++){
				str.SetAt(i*8+j,data[i].m_bit[j]);
			}
		}
		return str;
	}*/
	
	CString compute(){
		CString str = "00000000000000000000000";
		if(tailL!=0){
			int * bin = NULL;
			bin = (int *)malloc(sizeof(int)*DATALENGTH);
			for(int n=0;n<DATALENGTH;n++){//��ʼ��
				bin[n]=0;
			}
			for(int i=0;i<DATALENGTH;i++){//������ߵ�λ˳��
					int temp=(int)(unsigned char)data[i]-48;
					int abc  =(i/8)*8+7-(i%8);
					bin[abc] = temp;//i*DATALENGTH+j
			}
			int allZero=0;//��־ȫ0
			for(int q=0;q<DATALENGTH;q++){
				if(bin[q]==1)allZero=1;
			}
			if(allZero==0)return "z";
			int sum[20]={0},t=0;//����ת����ʮ��������20λ����
			int temp[20]={0};
			//char final;
			temp[0]=1;

			for(int k=0;k<DATALENGTH;k++){
				//0Ϊ��λ���ɵ�����
				if(bin[k]==1){ //����'0'ʱ��2��k�η�Ϊ0 
					for(int i=t;i<k;i++){ //��2��k�η���ÿ��ѭ����2������k-t�� tΪ�������ϴ�a[i]�ۼ� 
						for(int j=0;j<20;j++) //ÿһλ����2 
							temp[j]=2*temp[j]; 
						t=k; 
							for(int j=0;j<20;j++) //����a[0]��a[903]ÿλ�ǲ��Ƕ��Ǹ�λ�� 
							if(temp[j]>=10){ //����10��Ҫ��λ 
								temp[j]=temp[j]-10; //jλ����10��1 
								temp[j+1]=temp[j+1]+1; //��λ��j+1λҪ��1 
							} 
					} 
					for(int j=0;j<20;j++){ //b����Ϊ������飬��ֵΪ0 
						sum[j]=sum[j]+temp[j]; //���˴�kλ�ϵ�2��k�η����Ĵ�С��b��� 
						if(sum[j]>=10){ sum[j]=sum[j]-10; sum[j+1]=sum[j+1]+1;}//����10��1����һλ��1 
					} 
				} 
			}
			if((bin[63]==1)&&(bin[62]==1)){
				//�жϸ���
				minus = -1;
			}
			else{
				minus = 1;
			}
			free(bin);
			int l =0;
			for(int h=19;h>=0;h--){//�������˳��
				if(sum[h]!=0)
				{
					for(int j =h;j>=0;j--){
						//_itoa_s(sum[j],&final,1,10);
						str.SetAt(l,(char)(sum[j]+48));
						l++;
					}
					str.SetAt(l,' ');
					str.SetAt(l+1,'\0');
					break;
				}
			}
			if(minus==-1){
				//��������
				CString Max1 = "18446744073709551616";//2��64�η�
				CString result = "00000000000000000000000";
				result.SetAt(0,'-');
				int tempcount = 19;
				int p=0;
				for(int n=l-1;n>=0;n--,tempcount--){
					Max1.SetAt(tempcount,(char)((int)Max1[tempcount]-(int)str[n]+48));
				}
				for(int o=19;o>=0;o--){
					if(Max1.GetAt(o)<48){
						Max1.SetAt(o,Max1[o]+10);
						Max1.SetAt(o-1,Max1[o-1]-1);
					}
				}	
				//return (Max1+" ");
				for(;p<20;p++){
					if(Max1.GetAt(p)>48){
						break;
					}
				}
				result.SetAt(((20-p)+1),' ');
				result.SetAt(((20-p)+2),'\0');
				for(int r=1;p<20;r++,p++){
					result.SetAt(r,Max1.GetAt(p));
				}		
				return result;
			}	
			return str;
		}
		str.SetAt(0,'\0');
		return str;
	}
	
};


