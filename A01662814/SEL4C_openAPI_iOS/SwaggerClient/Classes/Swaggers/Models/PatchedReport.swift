//
// PatchedReport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PatchedReport: Codable {

    public var title: String?
    public var descripcion: String?
    public var fecha: Date?

    public init(title: String? = nil, descripcion: String? = nil, fecha: Date? = nil) {
        self.title = title
        self.descripcion = descripcion
        self.fecha = fecha
    }


}
