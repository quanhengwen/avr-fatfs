#ifndef _MAIN_H_
#define _MAIN_H_
 
unsigned char ReadSDFile(unsigned int index,char *data); //读取一条数据
void ftochr(float a,char * dest);                  //浮点型转换成字符型
void itochr(int a,char * dest);                    //整型数据转换成字符型
void StructToChar(void);                           //将结构体中的数据转成字符型
void check(void );
float SquareRootFloat(float number);
char *get_name( char fnamep[] );
#endif


