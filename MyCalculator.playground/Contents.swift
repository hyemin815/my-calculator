class Calculator {
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func sum() -> Double {
        return num1 + num2
    }
    
    func difference() -> Double {
        return num1 - num2
    }
    
    func product() -> Double {
        return num1 * num2
    }
    
    func quotient() -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1 / num2
        }
    }
    
    func remainder() -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1.truncatingRemainder(dividingBy: num2)
        }
    }
}

let calculator = Calculator(num1: 1.24, num2: 1)

print(calculator.sum())
print(calculator.difference())
print(calculator.product())
print(calculator.quotient())
print(calculator.remainder())

// num1이 0, 마이너스, 소수점일 때 문제 없이 계산됨
// num2가 마이너스, 소수점일 때는 잘 계산되었으나 0일 경우 나누기와 나머지 연산자에서 오류 발생
