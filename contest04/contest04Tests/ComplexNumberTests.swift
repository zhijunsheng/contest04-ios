import XCTest
class ComplexNumberTests: XCTestCase {
    
    
/*
     
     （3 + 4i）+ （7 - 6i）=》 10 + -2i
     
     */
    
    func add(n1: Complex, n2: Complex) {
        let sum = n1.real + n2.real
        print(sum)
    }
    func testAdd() {
//        print(add(n1: 3 + 4i, n2: 7 - 6i))
        let c1: Complex = Complex(real: 3, imaginary: 4)
        let c2: Complex = Complex(real: 7, imaginary: -6)
        add(n1: c1, n2: c2)
    }
}

struct Complex {
    var real: Float
    var imaginary: Float
}
