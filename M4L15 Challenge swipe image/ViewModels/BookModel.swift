//
//  BookModel.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 13-08-23.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    func updateFavourite() {
        
    }
    
    func updateRating(forId: Int, rating: Int) {
        
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].rating = rating
        }
        
    }
    
    /// Update the specified book's current page. Does nothing if `forId` is invalid.
    func updatePage(forId: Int, page: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].currentPage = page
        }
    }
    
}
