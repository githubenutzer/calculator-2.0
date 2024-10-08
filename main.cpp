#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a, b;
    
    std::cout << "Enter first number: ";
    std::cin >> a;
    std::cout << "Enter second number: ";
    std::cin >> b;

    double sum = calc.Add(a, b);
    std::cout << "Sum: " << sum << std::endl;

    double difference = calc.Sub(a, b);
    std::cout << "Difference: " << difference << std::endl;

    return 0;
}
