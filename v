
//V0

#include <stdio.h>
int main()
{
	char str[]="3+4";
	int a=str[0]-'0';
	int b=str[2]-'0';
	int sum = a + b;
	printf("sum=%d\n",sum);
	return 0;
}
//V1

#include <stdio.h>
#include <string.h>
int main()
{
	char str[]="1+2+2+1+2+5+4-1-3+4-8";
	int a=str[0]-'0';
	for(int i=0;i<strlen(str);i++)
	{
		if(str[i] == '+')
		{
			int a1= str[i+1] -'0';
			a = a + a1;
			i++;
		}
		else if(str[i] == '-')
		{
			int a1=str[i+1] -'0';
			a = a- a1;
			i++;
			
		}
	}
	printf("a=%d\n",a);
	return 0;
}


//V2
#include <stdio.h>
#include <string.h>
int main()
{
	char str[]="2*2/4*1/1*2*3/2";
	int a=str[0]-'0';
	for(int i=0;i<strlen(str);i++)
	{
		if(str[i] == '*')
		{
			int a1= str[i+1] -'0';
			a = a * a1;
			i++;
		}
		else if(str[i] == '/')
		{
			int a1=str[i+1] -'0';
			a = a / a1;
			i++;
			
		}
	}
	printf("a=%d\n",a);
	return 0;
}

//v3
#include <stdio.h>
#include <string.h>
int main()
{
	char str[]="2+2*3+2/2-1";
	char strtow[1000];
	int j=-1;
	for(int i=0;i<strlen(str);i++)
	{
		if(str[i] == '*')
		{
			int a1= str[j] -'0';
			int a2= str[i+1] - '0';
			strtow[j]= a1* a2+'0';
			i++;
		}
		else if(str[i] == '/')
		{
			int a1=str[j]-'0';
			int a2=str[i+1] -'0';
			strtow[j]=a1/ a2+ '0';
			i++;
		}
		else strtow[++j]=str[i];
	}


	int res=strtow[0]-'0';
	int i;
	for(i=1;i<strlen(strtow);i++)
	{
		if(strtow[i]=='+') res += strtow[++i]-'0';
		else if(strtow[i]=='-') res -=strtow[++i]-'0';
	}
	printf("res=%d\n",res);
	return 0;
}


