//
// Created by barto on 01.12.2020.
//

#ifndef GRAPROGRAMOWANIE_DEFINICJE_H
#define GRAPROGRAMOWANIE_DEFINICJE_H

#define ROZMIAR1 3
#define ROZMIAR2 3
#define POLACZENIA 3

#define KOLKO 'O'
#define KRZYZYK 'X'
#define DEPTH 6
#define ox -1
struct kik
{
    char komputer,postawieniepionka, pole[ROZMIAR1][ROZMIAR2];
};
struct ruch
{
    int wspolrzedne1,wspolrzedne2;
};
struct element
{
    struct ruch msc;
    struct element* nast;
};
struct wyniknega
{
    float wartosc;
    int wspX,wspY;
};
#endif //GRAPROGRAMOWANIE_DEFINICJE_H
