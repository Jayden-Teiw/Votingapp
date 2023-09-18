//
//  Result.swift
//  voting better give me my git
//
//  Created by Jayden on 18/9/23.
//

import SwiftUI
import SwiftPersistence

struct Result: View {
    var here = 0
    @Binding var votedFor:Array<String>
    
    
    var body: some View {
        List{
            ForEach(
                votedFor, id: \.self){here in
                    
                    Text(here)

                    
                }
        }
    }
    
    struct Result_Previews: PreviewProvider {
        static var previews: some View {
            Result(votedFor: .constant(["hi"]))
        }
    }
}
