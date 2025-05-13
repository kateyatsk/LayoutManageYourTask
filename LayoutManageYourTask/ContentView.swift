//
//  ContentView.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//

import SwiftUI

enum CardType: String{
    case blue, dark
}

struct ContentView: View {
    @State var page: String = "house"
    @State var isShow: Bool = false
    var pages: [String] = [
        "house",
        "folder",
        "plus",
        "message",
        "person",
    ]
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $page) {
                HomeView()
                    .tag("house")
                Text("Folder")
                    .tag("folder")
                Text("Second")
                    .tag("plus")
                Text("Messages")
                    .tag("message")
                ProfileView(page: $page)
                    .tag("person")
            }
            HStack{
                ForEach(pages, id: \.self) { page in
                    TabBarItemView(page: $page, isShowSheet: $isShow, image: page)
                }
                .frame(maxWidth: .infinity)
            }
            .sheet(isPresented: $isShow) {
                MockDataView()
                    .presentationDetents([.height(150), .medium, .large])
            }
            .padding()
            .background(.appBlack)
        }
        
    }
}

#Preview {
    ContentView()
}















