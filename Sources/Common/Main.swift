// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser

let days = [
    Day01()
]

@main
struct aoc2022: ParsableCommand {
    @Argument(help: "Which day to run")
    var day: Int

    @Argument(help: "Which part to run")
    var part: Int

    mutating func validate() throws {
        guard 1 <= day && day <= 25 else {
            throw ValidationError("Please specify a day between 1 and 25.")
        }
        guard part == 1 || part == 2 else {
            throw ValidationError("Please specify part 1 or 2.")
        }
    }

    mutating func run() throws {
        let dayCode = days[day - 1]
        let output = part == 2 ? dayCode.part2() : dayCode.part1()
        print(output)
    }
}
