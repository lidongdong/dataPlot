//用于拼接数据段
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Resource.h"
#include "dataPlotDlg.h"
#include <fstream>
using namespace std;
struct PointNode{
	char digitalData[22];//64位最大长度,第一位为符号位
	int voltage;
	int order;
	PointNode * next;
	PointNode(CString str, int num){
		for(int i=0;i<22;i++){
			digitalData[i]=str.GetAt(i);
			if(str.GetAt(i)=='\0')break;
		}
		voltage = atoi(str);
		order = num-1;
		next = NULL;
	}
};

class PointList{
public:
	struct PointNode * header;
	struct PointNode * tail;
	char max[20];
	int Length;
	int SumNumber;
	//int x;
	int y_max;
	int y_min;
	
	public:
		PointList::PointList(){
			header = NULL;
			tail = NULL;
			for(int i=0;i<20;i++){
				max[i]='0';
			}
			Length = 0;
			SumNumber = 1500;
			//x=0;
			y_max=0;
			y_min=0;
		}
		
		PointNode * GetHeader(){
			return header;
		}
		
		void SetSumNumber(int num){
			SumNumber = num;
		}
		
		int compare(char * b, char *c){
			//b>c,return 1
			//b<c,return -1
			//b=c,return 0
			for(int i=0;i<20;i++){
				if(b[i]>c[i])return 1;
				else{
					if(b[i]<c[i])return -1;
				}
			}
			return 0;
		}
		
		void add(CString str){
			if(Length==SumNumber){
				header=header->next;
				tail->next = new PointNode(str,SumNumber);
				tail = tail->next;
				PointNode * temp;
				temp = header;
				for(int k=0;k<SumNumber;k++){
					temp->order=k;
					temp=temp->next;
				}
				
			}
			else{
				if(header==NULL){//第一节点
					header = new PointNode(str,0);
					tail = header;
					Length++;
				}
				else{//最大长度以内节点
					tail->next = new PointNode(str, Length);
					tail = tail->next;
					Length++;
				}
			}
		}
		
		void Empty(){
			PointNode * temp;
			PointNode * temp1;
			temp1 = temp = header;
			for(int i=0;i<Length;i++){
				if(temp->next!=NULL){
					temp=temp->next;
					delete temp1;
					temp1 = temp;
				}
				else{
					delete temp;
				}
			}
			header=tail=NULL;
			for(int q=0;q<20;q++){
				max[q]='0';
			}
			Length = 0;
			y_min=0;
			y_max=0;
		}
		
		int GetLength(){
			return Length;
		}
		
		void DrawLine(CDataPlotDlg * dlg) 
		{
			/*int pointNumber = Length;
			if((pointNumber!=0)&&(pointNumber%100==0)){
				PointNode * temp;
				temp = header;
				COleSafeArray XValues;    
				COleSafeArray YValues;    
				DWORD numElements[] = {pointNumber};    
				// 创建安全数组   
				XValues.Create(VT_R8, 1, numElements);    
				YValues.Create(VT_R8, 1, numElements);    
				// 初始化 
				long i;    
				double dval;
				for(i=0; i<pointNumber; i++) 
				{       
					dval = i;
					XValues.PutElement(&i, &dval);
					dval = atof(temp->digitalData);
					YValues.PutElement(&i, &dval);
					if(temp->next!=NULL)temp=temp->next;
					else
						break;
				};
				CSeries lineSeries = (CSeries)dlg->m_chart.Series(0);
				lineSeries.Clear();
				lineSeries.AddArray(pointNumber,YValues,XValues);
			}
			*/
		}
		
		void Draw(CDataPlotDlg * dlg){
			if(Length!=0){
				//DrawLine(dlg);
				//CDataPlotDlg * dlg = (CDataPlotDlg *)pParam;
				/*CWnd * pWnd = dlg->GetDlgItem(IDC_PAINTBOARD);
				CRect rect;
				pWnd->GetClientRect(rect);//获取控件大小
				
				CDC *pControlDC=pWnd->GetDC();   //获取画布
				//pWnd->Invalidate();   
				//pWnd->UpdateWindow();  
				
				CBrush myBrush;
				myBrush.CreateSolidBrush(RGB(255,255,255));
				pControlDC->FillRect(rect,&myBrush);//白色背景
				
				pControlDC->DPtoLP(&rect);
				CSize org(2,rect.bottom-150);
				pControlDC->SetViewportOrg(org.cx,org.cy);//坐标原点设定
				
				//画图
				CPen pen;
				pen.CreatePen(PS_SOLID, 1,RGB(0,0,0));
				pControlDC->SelectObject(&pen);
				pControlDC->MoveTo(0,0);
				pControlDC->LineTo(rect.Width()-3,0);//横轴		
				
				pControlDC->MoveTo(0,-148);
				pControlDC->LineTo(0,148);//纵轴
				
				CPen tempPen;
				if(header!=NULL){
					tempPen.CreatePen(PS_SOLID, 1,RGB(0,0,255));
					pControlDC->SelectObject(&tempPen);
					PointNode * temp;
					temp = header;
					int y=0;
					int l=0;
					int tempLength = Length;
					for(int j=0;j<tempLength;j++){
						y = -(148*temp->voltage)/1024;
						int x = (temp->order)*755/SumNumber;
						if(j!=0){
							pControlDC->LineTo(x,y);
						}
						pControlDC->MoveTo(x,y);
						temp = temp->next;
					}
				}
				pen.DeleteObject();
				tempPen.DeleteObject();
				pWnd->ReleaseDC(pControlDC); */

				


				CWnd * pWnd = dlg->GetDlgItem(IDC_PAINTBOARD);
				CRect rect;
				pWnd->GetClientRect(rect);//获取控件大小
				
				CDC *pControlDC=pWnd->GetDC();   //获取画布 
				
				CDC* pMem=new CDC;   
				CBitmap* pBmp=new CBitmap;
				CBitmap* pOldBmp;
				pMem->CreateCompatibleDC(pControlDC);
				pBmp->CreateCompatibleBitmap(pControlDC, rect.Width(), rect.Height());
				pOldBmp=pMem->SelectObject(pBmp);

				CBrush myBrush;
				myBrush.CreateSolidBrush(RGB(255,255,255));
				pMem->FillRect(rect,&myBrush);//白色背景
				
				pMem->DPtoLP(&rect);
				CSize org(0,0);
				pMem->SetViewportOrg(org.cx,org.cy);//坐标原点设定
				
				//画图
				CPen pen;
				pen.CreatePen(PS_SOLID, 1,RGB(0,0,0));
				pMem->SelectObject(&pen);
				pMem->MoveTo(0,150);
				pMem->LineTo(rect.Width(),150);//横轴		
				
				pMem->MoveTo(0,2);
				pMem->LineTo(5,2);

				pMem->MoveTo(0,296);
				pMem->LineTo(5,296);

				pMem->MoveTo(0,2);
				pMem->LineTo(0,296);//纵轴
				
				CPen tempPen;
				if(header!=NULL){
					tempPen.CreatePen(PS_SOLID, 1,RGB(0,0,255));
					pMem->SelectObject(&tempPen);
					PointNode * temp;
					temp = header;
					int y=0;
					int l=0;
					int tempLength = Length;
					y_max = header->voltage;
					y_min = header->voltage;
					for(int k=0;k<tempLength;k++){
						if(temp->voltage>y_max)y_max = temp->voltage;
						if(temp->voltage<y_min)y_min = temp->voltage;
						if(temp->next!=NULL)temp= temp->next;
						else
							break;
					}
					//显示峰值
					dlg->SetDlgItemInt(IDC_OBSERVERMIN,y_min);
					dlg->SetDlgItemInt(IDC_OBSERVERMAX, y_max);
					temp=header;
					for(int j=0;j<tempLength;j++){
						if(y_max==y_min){
							y=2;
						}else{
							y=(294*abs(y_max-temp->voltage))/abs(y_max-y_min)+2;
						}
						int x = (temp->order)*755/SumNumber;
						if(j!=0){
							pMem->LineTo(x,y);
						}
						pMem->MoveTo(x,y);
						if(temp->next!=NULL)temp = temp->next;
					}
				}
				pControlDC->BitBlt(rect.left,rect.top,rect.Width(),rect.Height(),pMem,0,0,SRCCOPY);
				pMem->SelectObject(pOldBmp);
				pBmp->DeleteObject() ;
				pMem->DeleteDC();
				pen.DeleteObject();
				tempPen.DeleteObject();
				pWnd->ReleaseDC(pControlDC);
			}
		}
};