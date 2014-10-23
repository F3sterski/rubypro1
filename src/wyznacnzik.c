#include<stdio.h>

float wyznacznik(int n,float matrix[n][n]){

float m[n-1][n-1];
float suma=0;
int i,j,k,w=1;
if(n==1) return matrix[0][0];
else{
	for(i=n-1;i>=0;i--){
		for(j=0;j<n-1;j++){
			for(k=0;k<i;k++) m[j][k]=matrix[j][k];
			for(k=i;k<n-1;k++) m[j][k]=matrix[j][k+1];
		}
	suma=suma+w*matrix[n-1][i]*wyznacznik(n-1,m);
	w=(-1)*w;
	}
return suma;
}
}


int main(){
int i,j,n;
printf("Podaj wymiar macierzy: ");
scanf("%d",&n);
while(n<1){
	printf("Podaj wymiar macierzy: ");
	scanf("%d",&n);
}
float matrix[n][n];
for(i=0;i<n;i++){
	printf("Podaj %d wiersz macierzy: ",i+1);
	for(j=0;j<n;j++){
		scanf("%f",&matrix[i][j]);
	}
}

for(i=0;i<n;i++){
	printf("|");
	for(j=0;j<n;j++){
		printf(" %f ",matrix[i][j]);
	}
	printf("|\n");
}


printf("\nWyznacznik wynosi: %f\n",wyznacznik(n,matrix));

}
