//
//  ContentView.swift
//  Data
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            
            Text("use button to add data")
            Button("Add Data"){
                addItem()
            }
            
            List{
                ForEach(items){item in
                    Text(item.name)
                }
            }
        }
        .padding()
    }
    
    func addItem(){
        let item = DataItem(name: "Test")
        context.insert(item)
    }
}

#Preview {
    ContentView()
}
