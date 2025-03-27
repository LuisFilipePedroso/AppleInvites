//
//  Card.swift
//  AppleInvites
//
//  Created by Luis Filipe Pedroso on 27/03/25.
//
import Foundation
import SwiftUI

struct Card: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var image: String
}

let cards: [Card] = [
    .init(image: "1"),
    .init(image: "2"),
    .init(image: "3"),
    .init(image: "4"),
]
