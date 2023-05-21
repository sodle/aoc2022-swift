protocol AOCDay {
    associatedtype InputType
    associatedtype OutputType

    func getInput() -> InputType

    func part1() -> OutputType
    func part2() -> OutputType
}
