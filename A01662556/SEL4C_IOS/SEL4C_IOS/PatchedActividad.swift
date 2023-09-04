//
//  PatchedActividad.swift
//  SEL4C_IOS
//
//  Created by Margarita Mendoza on 03/09/23.
//

import Foundation

public struct PatchedActividad: Codable {

    public var titulo: String?
    public var descripcion: String?
    public var tokens: Int?

    public init(titulo: String? = nil, descripcion: String? = nil, tokens: Int? = nil) {
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

