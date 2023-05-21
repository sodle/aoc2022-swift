import XCTest
@testable import aoc2022

final class Day01Testable: Day01 {
    override func getInput() -> [[Int]] {
        return [
            [1000, 2000, 3000],
            [4000],
            [5000, 6000],
            [7000, 8000, 9000],
            [10000],
        ]
    }
}

final class Day01Tests: XCTestCase {
    let day: Day01Testable = Day01Testable()

    func testPart1() {
        XCTAssertEqual(day.part1(), 24000)
    }
    
    func testPart2() {
        XCTAssertEqual(day.part2(), 45000)
    }
}
