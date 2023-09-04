//
//  PaginatedActividadList.swift
//  SEL4C_IOS
//
//

import Foundation

public struct PaginatedActividadList: Codable {

    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [Actividad]?

    public init(count: Int? = nil, next: String? = nil, previous: String? = nil, results: [Actividad]? = nil) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }


}
