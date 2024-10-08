//
//  Logs.swift
//  
//
//  Created by Carlos López on 9/11/22.
//

import Foundation
import SwiftyBeaver

public struct Logs {
    
    private static let shared = Logs()
    
    private init() { 
        _ = FileDestination().deleteLogFile()
        let console = ConsoleDestination()
        // let file = FileDestination()
        let format = "$C[$DHH:mm:ss$d] [$L] [$N.$F:$l] - $M$c"
        console.format = format
        // file.format = format
        SwiftyBeaver.addDestination(console)
        // SwiftyBeaver.addDestination(file)
    }
    
    // MARK: - Configuration
    
    public static func log(
        level: SwiftyBeaver.Level = .debug,
        message: @autoclosure () -> Any,
        file: String = #file,
        function: String = #function,
        line: Int = #line,
        context: Any? = nil
    ) {
        shared.log(
            level: level,
            message: message(),
            file: file,
            function: function,
            line: line,
            context: context
        )
    }

    private func log(
        level: SwiftyBeaver.Level = .debug,
        message: @autoclosure () -> Any,
        file: String = #file,
        function: String = #function,
        line: Int = #line,
        context: Any? = nil
    ) {
        SwiftyBeaver.custom(
            level: level,
            message: message(),
            file: file,
            function: function,
            line: line,
            context: context
        )
    }
}
