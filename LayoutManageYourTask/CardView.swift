//
//  CardView.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//


import SwiftUI

struct CardView: View {
    var card: CardData
    var body: some View {
        VStack(alignment: .leading, spacing: 14){
            HStack{
                Text(card.priority)
                    .foregroundStyle(card.type == .blue ? .black : .white)
                    .font(.system(size: 13))
                    .padding(.vertical, 7)
                    .padding(.horizontal, 20)
                    .background(card.type == .blue ? .white : .appGrayLight)
                    .clipShape(Capsule())
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(card.type == .blue ? .black : .white)
                        .padding(8)
                        .background(card.type == .blue ? .white : .appGrayLight)
                        .clipShape(Circle())
                }

            }
            Text(card.text)
                .font(.system(size: 20,weight: .medium))
                .foregroundStyle(card.type == .blue ? .black : .white)
            
            HStack{
                Image(systemName: "calendar.badge.clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 14)
                Text(card.date)
                    .font(.system(size: 12, weight: .regular))
            }
            .foregroundStyle(card.type == .blue ? .appGray : .white)
            
            HStack{
                Image(.userPhoto)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                Spacer()
                HStack{
                    HStack{
                        Image(systemName: "ellipsis.message.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("\(card.numberOfComments)")
                            .font(.system(size: 12, weight: .regular))
                    }
                    .foregroundStyle(card.type == .blue ? .appGray : .white)
                    HStack{
                        Image(systemName: "paperclip")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("\(card.numberOfSaves)")
                            .font(.system(size: 12, weight: .regular))
                    }
                    .foregroundStyle(card.type == .blue ? .appGray : .white)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 14)
        .padding(.horizontal, 16)
        .background(card.type == .blue ? .appBlue : .appGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
