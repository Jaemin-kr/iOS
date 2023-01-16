//
//  ContentView.swift
//  USG02
//
//  Created by 고재민 on 2023/01/16.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var isTechTalksOn = false
    
    @State var isPresentatiedDialog = false
    var body: some View {
        NavigationStack{
            List {
                Section{
                    Button("로그인") {
                        print("로그인")
                        isPresentatiedDialog = true
                    }
                    .confirmationDialog(
                        "로그인",
                        isPresented: $isPresentatiedDialog
                        ) {
                        Button("Apple ID로 로그인"){}
                        
                    } message: {
                        Text("기존 iCloud 계정을 ......")
                    }
                        
                } footer: {
                    Text("Apple Developer 계정등을 관리하려면 Apple ID로 로그인 하십시오.")
                }
                Section {
                    NavigationLink {
                        List{
                            Section{
                                Toggle(isOn: $isOn) {
                                    Text("News Highlights")
                                }
                                Toggle(isOn: $isOn) {
                                    Text("Feature Stories")
                                }
                                Toggle(isOn: $isOn) {
                                    Text("WWDC")
                                }
                                Toggle(isOn: $isTechTalksOn) {
                                    Text("Tech Talks")
                                }
                            } footer: {
                                Text("Apple ID로 Apple Developer 앱에 로그인하고 알림을 활성화한 모든 기기로 알림이 전송됩니다.")
                            }
                        }
                        .navigationTitle("알림")
                        .navigationBarTitleDisplayMode(.inline)
                        

                    } label: {
                        Text("알림")
                    }
                } footer: {
                    Text("계정, 공지, WWDC등에 대한 업데이트 수신방법을 사용자화하십시오.")
                }
            }
            .navigationTitle("계정")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
