
 void main() {
  List<int> n = [5,2,8,3,1,9,4];
    int i = 0;
    int x = n[i];
    int k = i + 2;
    //INSERTION SORTING
  for ( i = 0; i < n.length; i++ ) {
        while(j > 0 && n[j - 1]  > x) {
    int j = i - 1;
      n[j]=
    n[j] = n[j - 1];
    j = j - 1;
  }
  n[j] = x;
  }
  print(n);

  //BACKWARD SORTING

    for ( i = n.length - 1; i >= 0; i--) {
      while (k < n.length && x > n[k]);
      k = k + 1;
    }
    print(n);

  
}