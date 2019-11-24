#include <windows.h>
#define ggggg ((LPCTSTR)&(const char[]){0x46,0})
#define pllll ((UINT[]){2L,6L,0x4000L,0,1L,5L,4L,3L})
INT WinMain(HINSTANCE h,HINSTANCE p,PSTR l,INT n){
    char x=2;
    for(;!0;)MessageBox('\0',ggggg,ggggg,pllll[x=(x+3)%8]);
}
