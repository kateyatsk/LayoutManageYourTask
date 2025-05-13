//
//  HomeView.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//

import SwiftUI

struct HomeView: View {
    let cards: [CardData] = CardData.createMockData()
    var body: some View {
        ZStack(alignment: .top){
            
            HStack{
                Button {
                    //
                } label: {
                    Image(.menu)
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Spacer()
                Button {
                    //
                } label: {
                    Image(.userPhoto)
                        .resizable()
                        .frame(width: 34, height: 34)
                        .clipShape(Circle())
                }


            }
            .padding(.horizontal, 30)
            .background(.appBlack)
            .zIndex(2)
            
            ScrollView{
                VStack(alignment: .leading, spacing: 40){
                    HStack(alignment: .bottom){
                        Text("Manage \nyour tasks")
                            .font(.system(size: 56))
                            .foregroundStyle(.white)
                        Image(.pencil)
                            .resizable()
                            .frame(width: 38, height: 38)
                            .padding(.bottom, 10)
                    }
                    
                    VStack(alignment: .leading, spacing: 14){
                        
                        ForEach(cards, id: \.self) { card in
                            CardView(card: card)
                        }
                        
                    }
                    
                }
                .padding(.top, 35)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(.appBlack)
    }
}
