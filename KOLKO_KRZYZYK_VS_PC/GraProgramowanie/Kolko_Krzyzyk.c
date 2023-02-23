#include "funkcje.h"



void main(void)
{
    struct kik k = plansza();
    k.postawieniepionka = KRZYZYK;
    k.komputer = KRZYZYK;
    wypisz(k);
    struct kik a = rozgrywka(k);
    struct element *tablica = mozliweruchy(k);

}






    //printf("%d\n",ocena(b));


    //printf("%.0f",negamax(a, 3, -INFINITY, INFINITY, 1));

