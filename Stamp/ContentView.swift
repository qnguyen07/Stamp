//
//  ContentView.swift
//  Odyssey
//
//  Created by Quynh Nguyen on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        NavigationStack{
            VStack {
                Text("✈️")
                    .font(.largeTitle)
                Text("What country did you visit?")
                    .font(.title)
                TextField("", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
                Button("Go") {
                    print(name)
//                    StampView.listReturn.add(country : name)
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
