struct Point{
    int x;
    int y;
};
int sqdis(Point A, Point B){
    int tmp;
    tmp=(A.x-B.x)*(A.x-B.x)+(A.y-B.y)*(A.y-B.y);
    return tmp;
}
