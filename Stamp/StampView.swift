//
//  ContentView.swift
//  KWKproject
//
//  Created by Thi LeNguyen on 6/24/24.
//

import SwiftUI
struct StampView: View {
    func buttonPressed(){
        print("bing")
    }
    func plusButton(){
            print("bong")
    }
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        HStack {
                            Text("Odyssey")
                                .font(.system(size: 35, weight: .bold, design: .default))
                                .padding(27)
                            Spacer()
                            Button(action:{
                                buttonPressed()
                            }) {
                                Menu{
                                    NavigationLink(destination: ContentView()) {
                                        Button(action: { }) {
                                            Text("Your passport")
                                        }
                                    }
                                    Button(action: { }, label: {
                                        Text("Second option")
                                    })
                                    Button(action: { }, label: {
                                        Text("Third option")
                                    })
                                } label: {
                                    Label(
                                        title: {Text("") },
                                        icon: {Image(systemName: "line.3.horizontal.decrease.circle")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 27, height: 27)
                                                .foregroundColor(.black)
                                            .padding(20)}
                                    )
                                }
                            }
                        } // closes hstack
                        VStack (spacing: 0.1) {
                            ZStack {
                                (Rectangle()
                                    .frame(width: 350, height: 200)
                                    .foregroundColor(.white))
                                .cornerRadius(13)
                                .padding(10)
                                VStack {
                                    HStack {
                                        Image("mountain")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200)
                                        Image("mountain")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200)
                                    } // hstack
                                } // vstack
                            } // zstack
                            ZStack { (Rectangle()
                                .frame(width: 350, height: 200)
                                .foregroundColor(.white))
                            .cornerRadius(13)
                            .padding(10)
                            } // zstack
                            ZStack { (Rectangle()
                                .frame(width: 350, height: 200)
                                .foregroundColor(.white))
                            .cornerRadius(13)
                            .padding(10)
                            } // zstack
                            ZStack { (Rectangle()
                                .frame(width: 350, height: 200)
                                .foregroundColor(.white))
                            .cornerRadius(13)
                            .padding(10)
                            } // zstack
                        } // vstack
                    } // closes vstack
                }
            } // closes zstack
            
            Button(action:{plusButton()}) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .foregroundColor(.black)
                
            } // button
        }
        } // closes body
    } // closes struct

#Preview {
    StampView()
}
