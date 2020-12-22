import XCTest

class ComplexTests: XCTestCase {
    let i = sqrt(-1)
    
    func testCplNumber() {
        print("add+")
        let test1 = add(ComplexNumber(relPart: 3, imgPart: 4), ComplexNumber(relPart: -7, imgPart: 2))
        let test2 = times(ComplexNumber(relPart: 3, imgPart: 4), ComplexNumber(relPart: -7, imgPart: 2))
        let test3 = divide(ComplexNumber(relPart: 3, imgPart: 4), ComplexNumber(relPart: -7, imgPart: 2))
        print(test1)
        print(test2)
        print(test3)
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
    
    func divide(_ cpl1: ComplexNumber,_ cpl2: ComplexNumber) -> ComplexNumber {
        let a = cpl1.relPart * cpl2.relPart + cpl2.imgPart * cpl1.imgPart
        let b = cpl1.relPart * -cpl2.imgPart + cpl1.imgPart * cpl2.relPart
        let c = cpl2.relPart * cpl2.relPart + cpl2.imgPart * cpl2.imgPart
        
        
        return ComplexNumber(relPart: a / c, imgPart: b / c)
    }
    
    
}

struct ComplexNumber: CustomStringConvertible {
    var description: String {
        return "\(relPart) + \(imgPart)i"
    }
    
    let relPart: Double
    let imgPart: Double
}
