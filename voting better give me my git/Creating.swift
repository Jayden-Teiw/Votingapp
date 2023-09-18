//
//  Creating.swift
//  voting better give me my git
//
//  Created by Jayden on 18/9/23.
//

import SwiftUI

struct Creating: View {
    @State var subject = ""
    @Binding var candidates:Array<String>
    var body: some View {
        VStack{
            TextField("Enter name and what he's or she's special", text: $subject)
                .padding()
            
            
            Button{
                candidates.append(subject)
            }label: {
                Text("create")
            }
            }
        }
    }



struct Creating_Previews: PreviewProvider {
static var previews: some View {
    Creating(candidates: .constant(["math"]))
}
}
