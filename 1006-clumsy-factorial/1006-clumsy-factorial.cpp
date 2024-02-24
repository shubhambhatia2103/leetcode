#include <stack>

class Solution {
public:
    int clumsy(int N) {
        std::stack<int> numStack; // A stack to keep track of numbers and calculations
        numStack.push(N); // Push the initial number onto the stack

        int operation = 0; // Variable to cycle through the operations: 0 for multiply, 1 for divide, 2 for addition, 3 for subtraction

        // Iterate from N-1 down to 1
        for (int i = N - 1; i > 0; --i) {
            switch (operation) {
                case 0: // Multiply
                    numStack.top() *= i;
                    break;
                case 1: // Divide
                    numStack.top() /= i;
                    break;
                case 2: // Addition
                    numStack.push(i); // We push the number directly onto the stack for addition
                    break;
                case 3: // Subtraction
                    numStack.push(-i); // We push the negative number for subtraction
                    break;
            }
            // Cycle through the operations by using modulo 4
            operation = (operation + 1) % 4;
        }

        // Compute the sum of all numbers in the stack
        int result = 0; // Variable to store the final result
        while (!numStack.empty()) {
            result += numStack.top(); // Add the top element of the stack to result
            numStack.pop(); // Remove the top element from the stack
        }

        return result; // Return the computed result
    }
};