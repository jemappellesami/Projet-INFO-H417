
typedef signed short int16;		/* == 16 bits */
typedef unsigned long int	uintptr_t;
typedef uintptr_t Datum;


#include <stdio.h>
#include <math.h>
int main(int argc, char const *argv[])
{
    int num_hist = 101 ;

    Datum   *frequency_hist_values;
    int16   *elementary_frquency_hist_value = palloc(num_hist*sizeof(int)) ;
    int16   frequency_at_index ;
    
    // Initialisation des tableaux et remplissage
    for (int i = 0; i < num_hist; i++)
    {
        elementary_frquency_hist_value[i] = 0 ;
    }
    for (int i = 0; i < num_hist; i++)
    {
        elementary_frquency_hist_value[i] ++ ;
    }

    for (int idx = 0; idx < num_hist; idx++)
    {
        frequency_at_index =  elementary_frquency_hist_value[idx];
        printf("Frequency for index %i : %d \n", idx, frequency_at_index) ; 
        frequency_hist_values[idx] = Int16GetDatum(frequency_at_index) ;

    }
    for (int idx = 0; idx < num_hist; idx++)
    {
        printf("Frequency for index %i : %d \n", idx, (int)(frequency_hist_values[idx])) ; 
    }



    return 0;
}
