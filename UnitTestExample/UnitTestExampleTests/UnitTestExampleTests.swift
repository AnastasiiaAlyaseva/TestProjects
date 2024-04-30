

import XCTest
@testable import UnitTestExample

final class UnitTestExampleTests: XCTestCase {
    
    var coffee: Coffee!

    override func setUpWithError() throws {
        try super.setUpWithError()
        // in this method, which is run before starting the tests, we initiate the object as a class, which will allow us to access its properties and methods
        coffee = Coffee()
        
    }

    override func tearDownWithError() throws {
        // remove the object from memory after the end of the test, freeing memory to run the next tests
        coffee = nil
        try super.tearDownWithError()
    }

    func testExample() throws {
      let sugar = 2
        
        coffee.makeCoffee(coffee: .cappuccino, sugar: sugar)
        coffee.makeCoffee(coffee: .cappuccino, sugar: 0)
        
        
        // check the status of ready. the test will pass if the statement is true
        
        XCTAssert(coffee.status, "coffee making status")
        
        // check if the ingredients used to make two cups of coffee were used correctly
        // using milk as an example, compare the amount of milk used with the amount of milk that should have actually been used
        XCTAssertEqual(coffee.milk, 2, "milk add")
        XCTAssertEqual(coffee.water, 2, "water add")
        XCTAssertEqual(coffee.groundCoffee, 2, "ground coffee add")
        XCTAssertEqual(coffee.sugar, 2, "sugar add")
    
    }

    func testPerformanceExample() throws {
        let sugar = 2
        measure {
            coffee.makeCoffee(coffee: .cappuccino, sugar: sugar)
        }
    }

}
