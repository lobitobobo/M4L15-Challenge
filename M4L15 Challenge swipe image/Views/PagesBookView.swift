//
//  PagesBookView.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 14-08-23.
//

import SwiftUI

struct PagesBookView: View {
    
    @EnvironmentObject var model: BookModel
    @State var pageIndex = 0
    var book: Book
    
    var body: some View {

        TabView (selection: $pageIndex){
            ForEach (book.content.indices) {pageIndex in
                VStack {
                    Text(book.content[pageIndex])
                        .tag(pageIndex)
                    Spacer()
                    Text("página \(pageIndex + 1)")
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onChange(of: pageIndex, perform: { value in
            model.updatePage(forId: book.id, page: pageIndex)
            
        })

    }
}

struct PagesBookView_Previews: PreviewProvider {
    static var previews: some View {
        PagesBookView(book: Book())
    }
}
