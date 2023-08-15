//
//  ContentView.swift
//  M4L15 Challenge swipe image
//
//  Created by Orlando J on 13-08-23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {

        NavigationView {
            ScrollView  {
                LazyVStack (spacing: 30){
                    ForEach (model.books) { b in
                        NavigationLink {
                            Staging(book: b)
                        } label: {
                            CardView(book: b)
                                .foregroundColor(.black)
                                .padding([.leading, .trailing], 20)

                        }
                    }

                }
                .padding(.top)

            }
            .navigationTitle("My Library")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
