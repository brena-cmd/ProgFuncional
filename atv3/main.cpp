#include <iostream>
#include <string>
using namespace std;

struct Pessoa{
    string nome;
    int idade;
};

int main(){
    char vogais[5] = {'A', 'E','I', 'O', 'U'};
    Pessoa p[5] = {{"Brena",18},{"Joana", 60}, "Ana", 29};

    for(int i=0; i<5; i++){
        if(p[i].idade>=60){
            cout << "Pessoa idosa:" << p[i].nome << " idade:"<<p[i].idade;
        }
    }
    int cont=0;
    for(int i=0; i<qtd; i++){
        if(cont<2 && p[i].nome[0]==vogais){
            cout << "Pessoa:" << p[i].nome << " idade:"<<p[i].idade;
            cont+=1;
        }
    }


    return 0;
}