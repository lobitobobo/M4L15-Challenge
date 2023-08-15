//
//  DetailView.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 14-08-23.
//

import SwiftUI

struct Staging: View {
    
    @EnvironmentObject var model: BookModel
    @State private var selectedRate = 3
    var book: Book
    
    var body: some View {
        
        
        VStack (spacing: 20){
            
            NavigationLink {
                PagesBookView(book: book)
            } label: {
                VStack {
                    Text("Read Now!")
                        .font(.title)
                        .accentColor(.black)
                    
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
                
            }
            Text("Mark for later!")
            Image(systemName: "star")
                .foregroundColor(.yellow)
                .padding()
            //.frame(width: 100, height: 100, alignment: .center)
            Text("Rate \(book.title)")
            Picker ("Rate this", selection: $selectedRate) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            
            
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: selectedRate, perform: { value in
                model.updateRating(forId: book.id, rating: selectedRate)
            })
            .frame(width: 270)
        }
        .navigationTitle(book.title)
        .padding()
    }
}

struct Staging_Previews: PreviewProvider {
    static var previews: some View {
        Staging(book: Book(title: "titulo 2", author:"Autor2", isFavourite: false, currentPage: 0, rating: 2, id: 1, content:["pagina1","Pagina2","pagina3"]))
    }
}
