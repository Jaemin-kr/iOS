//
//  ContentView.swift
//  USG01
//
//  Created by 고재민 on 2023/01/12.
//

import SwiftUI
//View: Protocol
struct ContentView: View {
    
    @State private var isOpen: Bool = false
    
    var body: some View {
        VStack {
//            Text("잠겨있습니다")
//                .font(.title)
//                .italic()
//                .bold()
//                .foregroundColor(.blue)
//            Image(systemName: "lock")
//               // .resizable()
//
            if isOpen{
//                AsyncImage(url: URL(string: "https://en.wikipedia.org/wiki/Puppy#/media/File:St._Bernard_puppy.jpg"))
//                    .scaledToFit()
//                    .frame(width: 100, height: 100)
                Text("열려있습니다")
                    .font(.title)
                    .italic()
                    .bold()
                    .foregroundColor(.blue)
                Image(systemName: "lock.open")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .bottom)
    
                Button("잠그기") {
                    //Image(systemName: "lock")
                    isOpen = false
                }
            } else {
                Text("잠겨있습니다")
                    .font(.title)
                    .italic()
                    .bold()
                    .foregroundColor(.blue)
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .bottom)
                Button("열기"){
                    isOpen = true
                }
            }
            
        }
        .padding()
        
        //print("Hello Jaemin")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
