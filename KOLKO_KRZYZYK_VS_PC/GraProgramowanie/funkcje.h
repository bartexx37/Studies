
#include <stdio.h>
#include <stdlib.h>
#include "definicje.h"
#include <math.h>
struct element *mozliweruchy(struct kik k)
{
    struct element * glowa = calloc(1, sizeof(struct element)), *ptr = glowa;
    for(int i=0; i<ROZMIAR1; i++)
        for(int j=0; j<ROZMIAR2; j++)
        {
            if(k.pole[i][j]==' ')
            { //jest wolny pierwszy
                int drugi = 0;
                int pierwszez = 0;
                int pierwszem = 0;
                for(int z = 0; z < ROZMIAR1 ;z++)
                {
                    if (pierwszez == 0)
                    {
                        z=i;
                        pierwszez = 1;
                    }
                    for(int m = 0; m < ROZMIAR2 ;m++)
                    {
                        if (pierwszem == 0)
                        {
                            pierwszem = 1;
                            m =j;
                        }
                        if(k.pole[z][m] == ' ')
                        {
                            if(drugi == 1)
                            { //jest wolny drugi
                                drugi = 2;
                                ptr->msc.wspolrzedne1 = i;
                                ptr->msc.wspolrzedne2 = j;
                                ptr->nast = calloc(1, sizeof(struct element));
                                ptr= ptr->nast;
                                break;
                            }
                            if(drugi == 0)
                                drugi = 1;
                        }
                    }
                    if(drugi == 2)
                    {
                        break;
                    }
                }
                if(drugi == 1)
                { //ten piewszy to ostatni
                    ptr->msc.wspolrzedne1 = i;
                    ptr->msc.wspolrzedne2 = j;
                }
            }
        }
    return glowa;
}
void wypisz(struct kik k)
{
    printf("   ");
    for(int k=0; k<ROZMIAR2; k++)
    {
        printf("+-----");

    }
    printf("+\n");

    if(ROZMIAR1<10)
    {

        for (int i = 0; i < ROZMIAR1; i++) {
            printf("%d  ", i + 1);
            for (int j = 0; j < ROZMIAR2; j++) {
                printf("|  %c  ", k.pole[i][j]);

            }
            printf("|");
            printf("\n");
            printf("   ");
            for (int k = 0; k < ROZMIAR2; k++) {
                printf("+-----");

            }
            printf("+\n");

        }
        printf("    ");
    }

    else if(ROZMIAR1>9)
    {
        for (int i = 0; i < 9; i++)
        {
            printf("%d  ", i + 1);
            for (int j = 0; j < ROZMIAR2; j++) {
                printf("|  %c  ", k.pole[i][j]);

            }
            printf("|");
            printf("\n");
            printf("   ");
            for (int k = 0; k < ROZMIAR2; k++) {
                printf("+-----");

            }
            printf("+\n");

        }

        for (int i = 9; i < ROZMIAR1; i++)
        {
            printf("%d ", i + 1);
            for (int j = 0; j < ROZMIAR2; j++) {
                printf("|  %c  ", k.pole[i][j]);

            }
            printf("|");
            printf("\n");
            printf("   ");
            for (int k = 0; k < ROZMIAR2; k++) {
                printf("+-----");

            }
            printf("+\n");

        }
        printf("    ");
    }


    if(ROZMIAR2<10)
    {
        for(int i=0; i<ROZMIAR2; i++)
            printf("  %d   ", i+1);
    }
    else if(ROZMIAR2>9)
    {
        for(int j=1; j<10; j++ )
        {
            printf("  %d   ", j);
        }
        for(int i=10; i<=ROZMIAR2; i++)
        {
            printf("  %d  ", i);
        }
    }
    printf("\n");
}
struct kik plansza()
{
    struct kik k;
    for(int i=0;i<ROZMIAR1;i++)
    {
        for(int j=0;j<ROZMIAR2;j++)
        {
            k.pole[i][j]=' ';
        }
    }
    return k;
}
void zniszcz(struct element* glowa)
{
    if(glowa)
    {
        zniszcz(glowa->nast);
    }
    free(glowa);
}

int przekatna_prawa(struct kik k, int x, int y, char gracz)
{
    if(x>=0 && y>=0 && x<ROZMIAR1 && y<ROZMIAR2 && k.pole[x][y]==gracz)
    {
        return przekatna_prawa(k, x+1,y+1, gracz)+1;

    }
    else
    {
        return 0;
    }
}

int przekatna_lewa(struct kik k, int x, int y, char gracz)
{
    if(x>=0 && y>=0 && x<ROZMIAR1 && y<ROZMIAR2 && k.pole[x][y] == gracz)
    {
        return przekatna_lewa(k, x + 1, y - 1, gracz) + 1;

    }
    else
    {
        return 0;
    }
}

int wiersz_prawo(struct kik k, int x, int y, char gracz)
{
    if(x>=0 && y>=0 && x<ROZMIAR1 && y<ROZMIAR2 && k.pole[x][y] == gracz)
    {
        return wiersz_prawo(k, x, y + 1, gracz) + 1;

    }

    else
    {
        return 0;
    }
}

int kolumna_dol(struct kik k, int x, int y, char gracz)
{
    if(x>=0 && y>=0 && x<ROZMIAR1 && y<ROZMIAR2 && k.pole[x][y] == gracz)
    {
        return kolumna_dol(k, x + 1, y, gracz) + 1;

    }
    else
    {
        return 0;
    }
}

int ocena(struct kik k)
{
    int ocenaO = 0;
    int ocenaX = 0;


    for(int x=0; x<ROZMIAR2; x++)
    {
        for (int y = 0; y <ROZMIAR1; y++)
        {
            int liczba_znakow = przekatna_prawa(k, x, y, KRZYZYK);
            if(liczba_znakow >= POLACZENIA) return (ox);
            ocenaX = liczba_znakow> ocenaX ? liczba_znakow : ocenaX;

            liczba_znakow = przekatna_lewa(k, x, y, KRZYZYK);
            if(liczba_znakow >= POLACZENIA) return (ox);
            ocenaX = liczba_znakow> ocenaX ? liczba_znakow : ocenaX;

            liczba_znakow = wiersz_prawo(k, x, y, KRZYZYK);
            if(liczba_znakow >= POLACZENIA) return (ox);
            ocenaX = liczba_znakow> ocenaX ? liczba_znakow : ocenaX;

            liczba_znakow = kolumna_dol(k, x, y, KRZYZYK);
            if(liczba_znakow >= POLACZENIA) return (ox);
            ocenaX = liczba_znakow> ocenaX ? liczba_znakow : ocenaX;

            liczba_znakow = przekatna_prawa(k, x, y, KOLKO);
            if(liczba_znakow >= POLACZENIA) return (-ox);
            ocenaO = liczba_znakow> ocenaO ? liczba_znakow : ocenaO;

            liczba_znakow = przekatna_lewa(k, x, y, KOLKO);
            if(liczba_znakow >= POLACZENIA) return (-ox);
            ocenaO = liczba_znakow> ocenaO ? liczba_znakow : ocenaO;

            liczba_znakow = wiersz_prawo(k, x, y, KOLKO);
            if(liczba_znakow >= POLACZENIA) return (-ox);
            ocenaO = liczba_znakow> ocenaO ? liczba_znakow : ocenaO;

            liczba_znakow = kolumna_dol(k, x, y, KOLKO);
            if(liczba_znakow >= POLACZENIA) return (-ox);
            ocenaO = liczba_znakow> ocenaO ? liczba_znakow : ocenaO;
        }

    }
    return 0;
}

struct kik uzup_plansze(struct kik gra,int wiersz, int kolumna)
{
    if(gra.pole[wiersz-1][kolumna-1] == ' ' && wiersz<=ROZMIAR1 && kolumna<=ROZMIAR2)
    {
        if (gra.postawieniepionka == KOLKO)
        {
            gra.pole[wiersz-1][kolumna-1] = KOLKO;
            gra.postawieniepionka = KRZYZYK;
        }
        else
        {
            gra.pole[wiersz-1][kolumna-1] = KRZYZYK;
            gra.postawieniepionka = KOLKO;
        }
    }
    return gra;
}

float max(float a, float b)
{
    if(a>b)
        return a;
    else
        return b;
}

struct wyniknega negamax(struct kik gra1, float depth, float alpha, float beta, int kolor) // kolor - kolka 1, krzyzyki -1
{
    if (depth == 0 || ocena(gra1) == 1 || ocena(gra1) == -1 )
    {
        struct wyniknega k = {kolor * ocena(gra1)};
        return k;
    }
    struct element* zmienna1 = mozliweruchy(gra1);
    struct wyniknega k;
    k.wartosc = -INFINITY;
    struct element* ptr = zmienna1;
    for (; ptr; ptr=ptr->nast)
    {
        struct kik zmienna2 = uzup_plansze(gra1, ptr->msc.wspolrzedne1 + 1, ptr->msc.wspolrzedne2 + 1);
        if (k.wartosc < -1*(negamax(zmienna2,(depth-1), (-beta), (-alpha),-kolor)).wartosc)
        {
            k.wartosc = -1*(negamax(zmienna2,(depth-1), (-beta), (-alpha),-kolor)).wartosc;
            if(DEPTH == depth)
            {
                k.wspX = ptr->msc.wspolrzedne1 + 1;
                k.wspY = ptr->msc.wspolrzedne2 + 1;

            }
        }
        alpha = max(alpha, k.wartosc);
        if (alpha >= beta)
            break;
    }
    zniszcz(zmienna1);
    return k;
}
struct kik graczvsgracz(struct kik k) {
    struct kik l;
    int i;
    int j;
    int koniec = 0;
    for (int i = 0; i < ROZMIAR1; i++) {
        for (int j = 0; j < ROZMIAR2; j++) {

            if (ocena(k) == 0 && k.pole[i][j] != ' ') {
                koniec++;
            }
        }
    }
    if (koniec == ROZMIAR1 * ROZMIAR2)
    {
        printf("Remis");
        return l;
    }
    if (k.postawieniepionka == KRZYZYK) {
        printf("\n\nPodaj wiersz i kolumne w ktorej chcesz postawic krzyzyk(Wpisujac wiersz,kolumna): ");
        printf("\n");
        scanf("%d,%d", &i, &j);
        if (k.pole[i - 1][j - 1] == ' ' && i <= ROZMIAR1 && j <= ROZMIAR2) {
            k.pole[i - 1][j - 1] = KRZYZYK;
            k.postawieniepionka = KOLKO;
            wypisz(k);
            l = k;
        } else {
            printf("Te pole jest zajete lub jest poza plansza, wpisz w inne");
            k.postawieniepionka = KRZYZYK;
            l = k;
            return graczvsgracz(l);
        }
    } else if (k.postawieniepionka == KOLKO) {
        printf("\n\nPodaj wiersz i kolumne w ktorej chcesz postawic kolko(Wpisujac wiersz,kolumna): ");
        printf("\n");
        scanf("%d,%d", &i, &j);
        if (k.pole[i - 1][j - 1] == ' ' && i <= ROZMIAR1 && j <= ROZMIAR2) {
            k.pole[i - 1][j - 1] = KOLKO;
            k.postawieniepionka = KRZYZYK;
            wypisz(k);
            l = k;
        } else {
            printf("Te pole jest zajete lub jest poza plansza, wpisz w inne");
            k.postawieniepionka = KOLKO;
            l = k;
            return graczvsgracz(l);
        }
    }
    while (ocena(l) != 1 && ocena(l) != -1)
        return graczvsgracz(l);
    if(ocena(k) == -1)
        printf("Wygraly krzyzyki");
    if(ocena(k) == 1)
        printf("Wygraly kolka");
}

struct kik rozgrywka(struct kik k) {

    int tryb;
    int glebokosc;
    printf("Wybierz tryb gry, gracz vs gracz = 1 ; gracz vs komputer = 0\n");
    scanf("%d",&tryb);
    if(tryb == 0)
    {
        while (ocena(k) != 1 && ocena(k) != -1) {
            int koniec = 0;
            for (int i = 0; i < ROZMIAR1; i++) {
                for (int j = 0; j < ROZMIAR2; j++) {

                    if (ocena(k) == 0 && k.pole[i][j] != ' ') {
                        koniec++;
                    }
                }
            }
            if (koniec == ROZMIAR1 * ROZMIAR2)
            {
                printf("Remis");
                return k;
            }
            if (k.komputer == k.postawieniepionka) {
                if (k.postawieniepionka == KRZYZYK) {
                    struct wyniknega innanizk = negamax(k, DEPTH, -INFINITY, INFINITY, -1);
                    k = uzup_plansze(k, innanizk.wspX, innanizk.wspY);
                    wypisz(k);
                    k.postawieniepionka = KOLKO;
                } else {
                    struct wyniknega innanizk = negamax(k, DEPTH, -INFINITY, INFINITY, 1);
                    k = uzup_plansze(k, innanizk.wspX, innanizk.wspY);
                    wypisz(k);
                    k.postawieniepionka = KRZYZYK;
                }


            } else {
                int i;
                int j;
                if (k.postawieniepionka == KRZYZYK) {
                    printf("\n\nPodaj wiersz i kolumne w ktorej chcesz postawic krzyzyk(Wpisujac wiersz,kolumna): ");
                    printf("\n");
                    scanf("%d,%d", &i, &j);
                    if (k.pole[i - 1][j - 1] == ' ' && i <= ROZMIAR1 && j <= ROZMIAR2) {
                        k.pole[i - 1][j - 1] = KRZYZYK;
                        k.postawieniepionka = KOLKO;
                        wypisz(k);
                    }

                } else if (k.postawieniepionka == KOLKO) {
                    printf("\n\nPodaj wiersz i kolumne w ktorej chcesz postawic kolko(Wpisujac wiersz,kolumna): ");
                    printf("\n");
                    scanf("%d,%d", &i, &j);
                    if (k.pole[i - 1][j - 1] == ' ' && i <= ROZMIAR1 && j <= ROZMIAR2) {
                        k.pole[i - 1][j - 1] = KOLKO;
                        k.postawieniepionka = KRZYZYK;
                        wypisz(k);
                    }
                }
            }

        }
    }
    else if(tryb == 1)
    {
        graczvsgracz(k);
    }
    if(ocena(k) == -1)
        printf("Wygraly krzyzyki");
    if(ocena(k) == 1)
        printf("Wygraly kolka");
}


