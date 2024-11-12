// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol DateFormattable {
    func formatDate(from dateStr: String) -> String
}

public func formatDate(_ isoDate: String) -> String {
    let dateFormatter = ISO8601DateFormatter()
    if let date = dateFormatter.date(from: isoDate) {
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "E, d MMM yyyy"
        return outputFormatter.string(from: date)
    }
    return isoDate
}
