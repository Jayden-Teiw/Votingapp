//
//  ContentView.swift
//  voting better give me my git
//
//  Created by Jayden on 18/9/23.
//


import SwiftUI
import SwiftPersistence

struct ContentView: View {


    var body: some View {
        TabView{
            
            list_of_candidate( nameOfCandidate: .constant("hi"))
            .tabItem{
                VStack{
                    Image(systemName: "person.crop.circle.fill")
                    Text("Candidate")
                }
            }
            
            
            
            
        }

        VStack {
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
