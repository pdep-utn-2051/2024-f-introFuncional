

void bobEsponja(int a[], int b, int c[]){
  int d, e = 0;  
  for (d = 0; d < b; d++) { 
    if (a[d] % 2 == 0) { 
      c[e] = a[d]; 
      e = e + 1; 
    }
  }
}
