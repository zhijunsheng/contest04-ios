import XCTest

class ComplexTests: XCTestCase {
    let i = sqrt(-1)
    
    func testCplNumber() {
        print("add+")
        let test1 = add(ComplexNumber(relPart: 3, imgPart: 4), ComplexNumber(relPart: -7, imgPart: 2))
        let test2 = times(ComplexNumber(relPart: 3, imgPart: 4), ComplexNumber(relPart: -7, imgPart: 2))
        let test3 = divide(num1R: 3, num1I: 4, num2R: -7, num2I: 2)
        print(test1)
        print(test2)
    }
    
    /*
     
     (3 + 4i) / (-7 + 2i) =>
     ((3+4i)(-7-2i))/(-7*-7+2*2)
     (-13-34i)/53
     -0.24528...-0.641509...i
     */
    
    func add(_ cpl1: ComplexNumber,_ cpl2: ComplexNumber) -> ComplexNumber {
        let asr: ComplexNumber = ComplexNumber(relPart: cpl1.relPart + cpl2.relPart, imgPart: cpl1.imgPart + cpl2.imgPart)
        return asr
    }
    
    
    func times(_ cpl1: ComplexNumber,_ cpl2: ComplexNumber) -> ComplexNumber {
        let asr: ComplexNumber = ComplexNumber(relPart: cpl1.relPart * cpl2.relPart - cpl1.imgPart * cpl2.imgPart, imgPart: cpl1.imgPart * cpl2.relPart + cpl1.relPart * cpl2.imgPart)
        return asr
    }
    
    func divide(num1R: Double, num1I: Double, num2R: Double, num2I: Double) {
        let a = num1R * num2R + num2I * num1I
        let b = num1R * -num2I + num2R * num1I
        let c = num2R * num2R + num2I * num2I
        print("\(a / c) + \(b / c)i")
    }
    
    
}

struct ComplexNumber: CustomStringConvertible {
    var description: String {
        return "\(relPart) + \(imgPart)i"
    }
    
    let relPart: Double
    let imgPart: Double
}
