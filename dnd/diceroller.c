#include <time.h>
#include <stdlib.h>
#include <stdio.h>
const int dicenum=1000000L;void 🤣(){
srand((unsigned)time(NULL));}int 😂(int Max){
return(rand()%Max)+1;}int main(int argc,char* argv[]){int 😑=0;int i;int 😇[19];printf("Rolling...\n");🤣();for(i=3;i<=18;i++)😇[i]=0;for(i=0;i<dicenum;i++){int 🤩=😂(6);int 😙=😂(6);int 😝=😂(6);int 🤐=🤩+😙+😝;😇[🤐]++;}for(i=3;i<=18;i++){printf("%i %i\n\r",i,😇[i]);}return(😑);}
