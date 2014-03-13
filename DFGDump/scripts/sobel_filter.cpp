#define M 5
#define N 5
#define P 3

void sobel_filter(int w0, int w1, int w2, int w3, int w4, int w5, int w6, int w7, int w8, int image1[M][N], int pixel_value_init)
    /* Spatial filtering of image data */
    /* Sobel filter (horizontal differentiation */
    /* Input: image1[y][x] ---- Outout: image2[y][x] */
{
    /* Definition of Sobel filter in horizontal direction */
    int pixel_value1;
    int pixel_value2;
    int pixel_value3;
    int pixel_value;
    int x, y;  /* Loop variable */

    /* Maximum values calculation after filtering*/
    pixel_value=pixel_value_init;
    for (y = 1; y < M-1; y++) {
        for (x = 1; x < N-1; x++) {
            pixel_value1 = w0 * image1[y-1][x-1] + w1* image1[y-1][x] + w2*image1[y-1][x+1];
            pixel_value2 = w3 * image1[y][x-1] + w4 * image1[y][x] + w5*image1[y][x+1];
            pixel_value3 = w6 * image1[y+1][x-1] + w7* image1[y+1][x] + w8*image1[y+1][x+1];
            pixel_value = pixel_value+pixel_value1+pixel_value2+pixel_value3;

        }
    }

    //printf("min=%f, max=%f\n", min, max);
    /*
       x_size2 = x_size1;
       y_size2 = y_size1;
       for (y = 0; y < y_size2; y++) {
       for (x = 0; x < x_size2; x++) {
       image2[y][x] = 0;
       }
       }
       */

    /* Generation of image2 after linear transformtion */
    /*
       for (y = 1; y < y_size1 - 1; y++) {
       for (x = 1; x < x_size1 - 1; x++) {
       pixel_value = 0.0;
       for (j = -1; j <= 1; j++) {
       for (i = -1; i <= 1; i++) {
       pixel_value += weight[j + 1][i + 1] * image1[y + j][x + i];
       }
       }
       pixel_value = MAX_BRIGHTNESS * (pixel_value - min) / (max - min);
       image2[y][x] = (unsigned char)pixel_value;
       }
       }*/
}

