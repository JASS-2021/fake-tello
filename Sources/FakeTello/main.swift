import Foundation
import ArgumentParser
import TelloSimulator

struct FakeTelloCli: ParsableCommand {
    
    static var configuration: CommandConfiguration = CommandConfiguration(
        commandName: "fake-tello",
        abstract: "Fake Tello UDP Server."
    )
    
    @Option(help: "Bind UDP Server to this IP")
    var host: String = "::1"

    @Option(help: "Bind UDP Server to this Port")
    var port: Int = 8889
    
    mutating func run() throws {
        let simulator = TelloSimulator(addr: host, port: port)
        try simulator.start()
        let _ = readLine()
    }
}

FakeTelloCli.main()
