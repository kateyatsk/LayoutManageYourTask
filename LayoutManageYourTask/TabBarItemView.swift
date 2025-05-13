//
//  TabBarItemView.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//


import SwiftUI

struct TabBarItemView: View {
    @Binding var page: String
    @Binding var isShowSheet: Bool
    var image: String

    var body: some View {
        Button {
            if image == "plus" {
                isShowSheet.toggle()
            } else {
                page = image
            }
            
        } label: {
            HStack{
                if image == "plus" {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.white)
                        .overlay {
                            Image(systemName: "plus")
                                .foregroundStyle(.black)
                        }
                } else {
                    Image(systemName: page == image ? "\(image).fill" : image)
                        .foregroundStyle(.white)
                }
                
            }
           
        }
    }
}