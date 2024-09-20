#include <iostream>
#include <cstdint>
using namespace std;

extern "C"

int64_t maior(int64_t a, int64_t b);

int main(){
    int64_t n1, n2, m;

    cout << "Informe dois valores: ";
    cin >> n1 >> n2;
    m = maior(n1, n2);
    
    cout << "Maior: " << m << endl;

    return 0;
}