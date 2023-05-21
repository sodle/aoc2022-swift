import Foundation

class Day01: AOCDay {
    typealias InputType = [[Int]]
    typealias OutputType = Int

    func getInput() -> [[Int]] {
        let inputUrl = Bundle.module.url(forResource: "Input/day01", withExtension: "txt")!
        let inputString = try! String(contentsOf: inputUrl, encoding: .ascii)
        
        var elves: [[Int]] = []
        var currentElf: [Int] = []
        
        inputString.enumerateLines(invoking: { line, stop in
            if line.isEmpty {
                if !currentElf.isEmpty {
                    elves.append(currentElf)
                }
                currentElf = []
            } else {
                currentElf.append(Int(line)!)
            }
        })
        
        if !currentElf.isEmpty {
            elves.append(currentElf)
        }
        
        return elves
    }

    func part1() -> Int {
        let elves = getInput()
        
        let elfSums = elves.map { elf in
            elf.reduce(into: 0) { partialResult, calories in
                partialResult += calories
            }
        }
        
        return elfSums.max()!
    }

    func part2() -> Int {
        let elves = getInput()
        
        let elfSums = elves.map { elf in
            elf.reduce(into: 0) { partialResult, calories in
                partialResult += calories
            }
        }.sorted().reversed()
        
        return elfSums.prefix(3).reduce(into: 0) { partialResult, calories in
            partialResult += calories
        }
    }
}
