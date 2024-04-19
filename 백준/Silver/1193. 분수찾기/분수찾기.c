#include <stdio.h>

void findAns(int N);

int main(){
	int n = 0;
	
	scanf("%d",&n);

	findAns(n);
	
	return 0;
}

void findAns(int N){
	int i = 1;
	int k = 0;
	int j = 0;
	while(1){
		k = i * (i + 1) / 2;
		if(k >= N){
			if(i % 2 == 0){
				printf("%d/%d\n",i-(k-N),1+(k-N));
				break;
			}else{
				printf("%d/%d\n",1+(k-N),i-(k-N));
				break;
			}
		}else{
			i++;
		}
			
	}
}