//
//  CardView.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 13-08-23.
//

import SwiftUI

struct CardView: View {
    
    var book: Book
    
    var body: some View {

       // GeometryReader { geo in
            
                // card
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                    VStack {
                        VStack (alignment: .leading){
                            HStack  {
                                Text(book.title)
                                    .font(.title)
                                    .bold()
                                Spacer()
                                if book.isFavourite {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                } else {
                                    Image(systemName: "star")
                                        .foregroundColor(.yellow)
                                }

                            }
                            
                            Text(book.author)
                                .font(.subheadline)
                        }
                        Image("cover\(book.id)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                    }
                    .padding()
                }
                .padding()
                .frame(width: 400, height: 600 , alignment: .center)

                
           // } // geo
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(book: Book(title: "titulo", author:"Autor", isFavourite: false, currentPage: 0, rating: 2, id: 1, content:["pagina1","Pagina2","pagina3"]))
    }
}
