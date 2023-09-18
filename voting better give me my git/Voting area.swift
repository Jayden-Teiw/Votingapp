//
//  Voting area.swift
//  voting better give me my git
//
//  Created by Jayden on 18/9/23.
//


import SwiftUI
import SwiftPersistence

struct Voting_area: View {
    @State var selectedOption = ""
    @State var candidate = [""]
    @State var pickerOption = ["Vote","don't vote"]
    @Binding var candidates:Array<String>
    @Persistent("votes") var votes = 0
    @Persistent("votedFor") var votedFor = [""]
    var body: some View {
        VStack{

            Picker("Choose an option", selection:$selectedOption){
                ForEach(candidates, id:\.self){
                    option in
                    Text(option)
                }
            }
            .pickerStyle(.wheel)
            
            Button{
                votedFor.append(selectedOption)
                votes+=1
            }label: {
                Text("Vote for \(selectedOption)                                                                                 there are total votes of \(votes) votes check the list below for the votes result.")
                
            }
            List{
                
                        NavigationLink{
                            Result(votedFor: $votedFor)
                        }label:{
                            Text("click this to go see the amount of votes for each person!")
                        }
                }
            }
            
        }
    }


struct Voting_area_Previews: PreviewProvider {
    static var previews: some View {
        Voting_area( candidates: .constant(["hi"]))
    }
}
