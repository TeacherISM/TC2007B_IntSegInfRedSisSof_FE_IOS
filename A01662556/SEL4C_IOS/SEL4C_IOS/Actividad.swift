//
//  Actividad.swift
//  SEL4C_IOS
//
//

import Foundation

public struct Actividad: Codable {

    public var titulo: String
    public var descripcion: String
    public var tokens: Int

    public init(titulo: String, descripcion: String, tokens: Int) {
        self.titulo = titulo
        self.descripcion = descripcion
        self.tokens = tokens
    }

    public enum CodingKeys: String, CodingKey {
        case titulo
        case descripcion = "descripcion"
        case tokens = "tokens"
    }

}
