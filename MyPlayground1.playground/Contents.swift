protocol AbstractOperation {
    func perform(num1: Double, num2: Double) -> Double
}

// 각 클래스는 독립적이고 비슷한 동작을 수행하기 때문에 함수의 이름을 중복하여 사용
class AddOperation: AbstractOperation {
    func perform(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}

class SubtractOperation: AbstractOperation {
    func perform(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
}

class MultiplyOperation: AbstractOperation {
    func perform(num1: Double, num2: Double) -> Double {
        return num1 * num2
    }
}

class DivideOperation: AbstractOperation {
    // num2가 0일 경우 나누기와 나머지 연산자에서 오류 발생하여 조건문 처리
    func perform(num1: Double, num2: Double) -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1 / num2
        }
    }
}

class RemainderOperation: AbstractOperation {
    func perform(num1: Double, num2: Double) -> Double {
        if num2 == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return num1.truncatingRemainder(dividingBy: num2)
        }
    }
}

class Calculator {
    // 연산 클래스의 인스턴스 생성
    private let addOperation = AddOperation()
    private let subtractOperation = SubtractOperation()
    private let multiplyOperation = MultiplyOperation()
    private let divideOperation = DivideOperation()
    private let remainderOperation = RemainderOperation()
    
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    // Calculator Class와 각각의 클래스를 연결
    func add() -> Double {
            return addOperation.perform(num1: num1, num2: num2)
        }
    
    func subtract() -> Double {
            return subtractOperation.perform(num1: num1, num2: num2)
        }
        
    func multiply() -> Double {
            return multiplyOperation.perform(num1: num1, num2: num2)
        }
        
    func divide() -> Double {
            return divideOperation.perform(num1: num1, num2: num2)
        }
    
    func remainder() -> Double {
        return remainderOperation.perform(num1: num1, num2: num2)
    }
}

let calculator = Calculator(num1: 6, num2: 3)

// 연산 호출
let sum = calculator.add()
let difference = calculator.subtract()
let product = calculator.multiply()
let quotient = calculator.divide()
let remainder = calculator.remainder()

// 값 출력
print(sum)
print(difference)
print(product)
print(quotient)
print(remainder)
