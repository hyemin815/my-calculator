class Calculator {
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
}

class AddOperation: Calculator {
    func add() -> Double {
        return num1 + num2
    }
}

class SubtractOperation: Calculator {
    func subtract() -> Double {
        return num1 - num2
    }
}

class MultiplyOperation: Calculator {
    func multiply() -> Double {
        return num1 * num2
    }
}

class DivideOperation: Calculator {
    // num2가 0일 경우 나누기와 나머지 연산자에서 오류 발생하여 조건문 처리
    func divide() -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1 / num2
        }
    }
}

class RemainderOperation: Calculator {
    func remainder() -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1.truncatingRemainder(dividingBy: num2)
        }
    }
}


let calculator = AddOperation(num1: 6, num2: 3)
let calculatorSubtract = SubtractOperation(num1: 10, num2: 3)
print(calculatorSubtract.subtract())
