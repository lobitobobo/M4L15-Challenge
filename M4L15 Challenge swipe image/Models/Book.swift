//
//  Book.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 13-08-23.
//

import Foundation

struct Book: Identifiable, Decodable {
    
    var title: String = "2"
    var author: String = "3"
    var isFavourite: Bool = true
    var currentPage: Int = 1
    var rating: Int = 2
    var id: Int = 3
    var content: [String] = ["barra","dia", "Pagina 3", "otra cuatro"]
    
}
