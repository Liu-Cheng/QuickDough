/*
 *   FILE: edgeSob.c - WORKS!!
 *   AUTH: Bill Green
 *   DESC: 2 3x3 Sobel masks for edge detection
 *   DATE: 07/23/02
 *   REFS: edgeLap.c
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define BMP 19778

/*-------STRUCTURES---------*/
typedef struct {
    int rows; 
    int cols; 
    unsigned char* data;
} sImage;

/*-------PROTOTYPES---------*/
long getImageInfo(FILE*, long, int);
void copyImageInfo(FILE* inputFile, FILE* outputFile);
void copyColorTable(FILE* inputFile, FILE* outputFile, int nColors);
void bmpFileTest(FILE* inputFile);
int  getHeaderPixelOffset(FILE* inputFile);

int main(int argc, char* argv[]) {
    FILE          *bmpInput;
    FILE          *bmpOutput;
    sImage        originalImage;
    sImage        edgeImage;
    unsigned int  X;
    unsigned int  Y;
    int           I;
    int           J;
    long          sumX;
    long          sumY;
    int           nColors;
    int           SUM;
    unsigned long vectorSize;
    unsigned long fileSize;
    int           GX[3][3];
    int           GY[3][3];
    unsigned char *pChar;
    unsigned char someChar;
    unsigned int  row;
    unsigned int  col;
    int           header2pixelOffset;

    someChar = '0'; 
    pChar = &someChar;

    /* 3x3 GX Sobel mask.*/
    GX[0][0] = -1; 
    GX[0][1] =  0; 
    GX[0][2] =  1;
    GX[1][0] = -2; 
    GX[1][1] =  0; 
    GX[1][2] =  2;
    GX[2][0] = -1; 
    GX[2][1] =  0; 
    GX[2][2] =  1;

    /* 3x3 GY Sobel mask.*/
    GY[0][0] =  1; 
    GY[0][1] =  2; 
    GY[0][2] =  1;
    GY[1][0] =  0; 
    GY[1][1] =  0; 
    GY[1][2] =  0;
    GY[2][0] = -1; 
    GY[2][1] = -2; 
    GY[2][2] = -1;

    if(argc < 2) {
        printf("Usage: %s bmpInput.bmp\n", argv[0]);
        exit(0);
    };
    printf("Reading filename %s\n", argv[1]);

    /*---DECLARE INPUT & OUTPUT FILES--*/
    bmpInput = fopen(argv[1], "rb");
    bmpOutput = fopen("edgeSob.bmp", "wb");

    /*---SET POINTER TO BEGINNING OF FILE---*/
    fseek(bmpInput, 0L, SEEK_END);

    /*-Test if the input file is bmp-*/
    bmpFileTest(bmpInput);

    /*---GET INPUT BMP DATA---*/
    fileSize = getImageInfo(bmpInput, 2, 4);
    originalImage.cols = (int)getImageInfo(bmpInput, 18, 4);
    originalImage.rows = (int)getImageInfo(bmpInput, 22, 4);
    //nColors = (int)getImageInfo(bmpInput, 46, 4);
    nColors = 256;

    header2pixelOffset=getHeaderPixelOffset(bmpInput);

    edgeImage.rows = originalImage.rows;
    edgeImage.cols = originalImage.cols;

    /*--------Print DATA TO SCREEN----------*/
    printf("Width: %d\n", originalImage.cols);
    printf("Height: %d\n", originalImage.rows);
    printf("File size: %lu\n", fileSize);
    printf("nColors: %d\n", nColors);
    printf("Header to pixel data offset:%d\n", header2pixelOffset);

    /*------ALLOCATE MEMORY FOR FILES--------*/
    //vectorSize = fileSize - (14+40+4*nColors);
    vectorSize = originalImage.cols*originalImage.rows;

    printf("vectorSize: %lu\n", vectorSize);
    edgeImage.data = (unsigned char*)malloc(vectorSize*sizeof(unsigned char));
    if(edgeImage.data == NULL) {
        printf("Failed to malloc edgeImage.data\n");
        exit(0);
    }
    printf("%lu bytes malloc'ed for edgeImage.data\n", vectorSize);

    originalImage.data = (unsigned char*)malloc(vectorSize*sizeof(unsigned char));
    if(originalImage.data == NULL) {
        printf("Failed to malloc originalImage.data\n");
        exit(0);
    }
    printf("%lu bytes malloc'ed for originalImage.datt\n", vectorSize);

    /*------COPY HEADER AND COLOR TABLE---------*/
    copyImageInfo(bmpInput, bmpOutput);
    copyColorTable(bmpInput, bmpOutput, nColors);
    fseek(bmpInput, (14+40+4*nColors), SEEK_SET);
    fseek(bmpOutput, (14+40+4*nColors), SEEK_SET);

    /* Read input.bmp and store it's raster data into originalImage.data * */
    for(row=0; row<=originalImage.rows-1; row++) {
        for(col=0; col<=originalImage.cols-1; col++) {
            fread(pChar, sizeof(char), 1, bmpInput);
            *(originalImage.data + row*originalImage.cols + col) = *pChar;
        }
    }

    /*---------------------------------------------------
     *       SOBEL ALGORITHM STARTS HERE
     *---------------------------------------------------*/
    for(Y=0; Y<=(originalImage.rows-1); Y++)  {
        for(X=0; X<=(originalImage.cols-1); X++)  {
            sumX = 0;
            sumY = 0;

            /* image boundaries */
            if(Y==0 || Y==originalImage.rows-1)
                SUM = 0;
            else if(X==0 || X==originalImage.cols-1)
                SUM = 0;

            else {
                for(I=-1; I<=1; I++) {
                    for(J=-1; J<=1; J++) {
                        sumX = sumX + (int)( (*(originalImage.data + X + I + 
                               (Y + J)*originalImage.cols)) * GX[I+1][J+1]);
                    }
                }

                for(I=-1; I<=1; I++)  {
                    for(J=-1; J<=1; J++)  {
                        sumY = sumY + (int)( (*(originalImage.data + X + I + 
                               (Y + J)*originalImage.cols)) * GY[I+1][J+1]);
                    }
                }

                SUM = abs(sumX) + abs(sumY);
                
            }

            if(SUM>255) SUM=255;
            if(SUM<0) SUM=0;

            *(edgeImage.data + X + Y*originalImage.cols) = 255 - (unsigned char)(SUM);
            fwrite((edgeImage.data + X + Y*originalImage.cols),sizeof(char),1,bmpOutput);
            int tmp=(int)(*(originalImage.data + X + (Y)*originalImage.cols));
            printf("fig[%d][%d]=%d, edge=%d\n", Y, X, 255-tmp, SUM);
        }
    }

    printf("See edgeSob.bmp for results\n");
    fclose(bmpInput);
    fclose(bmpOutput);
    free(edgeImage.data);      /* Finished with edgeImage.data */
    free(originalImage.data);  /* Finished with originalImage.data */
    return 0;
}

/*----------GET IMAGE INFO SUBPROGRAM--------------*/
long getImageInfo(FILE* inputFile, long offset, int numberOfChars) {
    unsigned char         *ptrC;
    long                  value = 0L;
    unsigned char         dummy;
    int                   i;

    dummy = '0';
    ptrC = &dummy;

    fseek(inputFile, offset, SEEK_SET);

    for(i=1; i<=numberOfChars; i++) {
        fread(ptrC, sizeof(char), 1, inputFile);
        /* calculate value based on adding bytes */
        value = (long)(value + (*ptrC)*(pow(256, (i-1))));
    }
    return(value);

} /* end of getImageInfo */

/*-------------COPIES HEADER AND INFO HEADER----------------*/
void copyImageInfo(FILE* inputFile, FILE* outputFile) {
    unsigned char     *ptrC;
    unsigned char     dummy;
    int               i;

    dummy = '0';
    ptrC = &dummy;

    fseek(inputFile, 0L, SEEK_SET);
    fseek(outputFile, 0L, SEEK_SET);

    for(i=0; i<=50; i++) {
        fread(ptrC, sizeof(char), 1, inputFile);
        fwrite(ptrC, sizeof(char), 1, outputFile);
    }

}

/*----------------COPIES COLOR TABLE-----------------------------*/
void copyColorTable(FILE* inputFile, FILE* outputFile, int nColors)
{
    unsigned char     *ptrC;
    unsigned char     dummy;
    int               i;

    dummy = '0';
    ptrC = &dummy;

    fseek(inputFile, 54L, SEEK_SET);
    fseek(outputFile, 54L, SEEK_SET);

    for(i=0; i<=(4*nColors); i++)  /* there are (4*nColors) bytesin color table */
    {
        fread(ptrC, sizeof(char), 1, inputFile); 
        fwrite(ptrC, sizeof(char), 1, outputFile);
    }

}

/*--Test the type of the image file to see if it is bmp--*/
void bmpFileTest(FILE* inputFile){
    unsigned short fType=0;
    fseek(inputFile, 0L, SEEK_SET);
    fread(&fType, sizeof(char), 2, inputFile);
    if(BMP!=fType){
        printf("This is not a bmp file!\n");
        exit(0);
    }
    else{
        printf("Input file format is correct!\n");
    }
}

/*-Get the offset that is from header to pixel data part-*/
int getHeaderPixelOffset(FILE* inputFile){
    int offset;
    fseek(inputFile, 10L, SEEK_SET);
    fread(&offset, sizeof(char), 4, inputFile);
    return offset;
}
