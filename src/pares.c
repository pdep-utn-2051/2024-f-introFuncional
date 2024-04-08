
// Mejorando expresividad
void losPares(int numeros[], int cant, int pares[]){
  int i, j = 0;  
  for (i = 0; i < cant; i++) { 
    if (numeros[i] % 2 == 0) { 
      pares[j] = numeros[i]; 
      j = j + 1; 
    }
  }
}
