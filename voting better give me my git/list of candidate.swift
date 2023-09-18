//
//  list of candidate.swift
//  voting better give me my git
//
//  Created by Jayden on 18/9/23.
//

import SwiftUI
import SwiftPersistence

struct list_of_candidate: View {
    @Persistent("candidates") var candidates:[String] = ["default name"]
    @State var sheetShown = false
    @Binding var nameOfCandidate:String
    
    var body: some View {
        NavigationStack{
            List {
                
                ForEach(
                    candidates, id: \.self){here in
                        Text(here)
                        
                        
                        Button(role: .destructive){
                            if let index = candidates.firstIndex(of: here) {
                                candidates.remove(at: index)
                            }}label:{
                                
                                Text("delete \(here)")
                            }
                        
                    }
                        NavigationLink{
                            Voting_area( candidates: $candidates)
                        }label:{
                            Text("Vote here!")
                        }
                    
                    .navigationTitle("Candidates")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button{
                                sheetShown.toggle()
                            }label: {
                                Text("add candidate")
                            }
                            .sheet(isPresented: $sheetShown){
                                Creating( candidates: $candidates)
                            }
                            
                            
                        }
                    }
            }
            
            
            
            
        }
    }
    
    
    
    struct list_of_candidate_Previews: PreviewProvider {
        static var previews: some View {
            list_of_candidate( nameOfCandidate: .constant("hi"))
        }
    }
    
}
