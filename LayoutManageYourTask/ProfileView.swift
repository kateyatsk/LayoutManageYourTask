//
//  ProfileView.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//


import SwiftUI

struct ProfileView: View {
    @Binding var page: String
    @State var isShow = false
    @State var isShowAlert = false
    @State var text: String = ""
    var body: some View {

        VStack{
            Button {
                isShowAlert.toggle()
            } label: {
                Text("show alert")
            }
            .alert("Error", isPresented: $isShowAlert) {
                TextField("name", text: $text)
                
                Button("Simple") {
                    //
                }
                Button("Cancel", role: .destructive) {
                    //
                }
                Button("OK", role: .cancel) {
                    text = ""
                }
            } message: {
                Text("error message")
            }


            Button {
                isShow.toggle()
            } label: {
                Text("show sheet")
            }
            .sheet(isPresented: $isShow) {
                MockDataView()
                    .presentationDetents([.height(150), .medium, .large])
            }
        }
        

    }
}