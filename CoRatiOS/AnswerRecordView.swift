//
//  AnswerRecordView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/04/06.
//

import SwiftUI

struct AnswerRecordView: View {
    var imageUrl : String = ""
    var body: some View {
        NavigationStack{
            VStack{
                if let storeImgURL = URL(string: imageUrl){
                        AsyncImage(url: storeImgURL){ response in
                            response.image?
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                        }
                }
                    Text(" ラーメン店名")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Sawarabi Gothic",size:25))
                        .padding(.leading)
                    Text("  私のアンケート")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Sawarabi Gothic",size:20))
                        .padding(.leading)
                    Text("   2020/04/14")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Sawarabi Gothic",size:18))
                        .padding(.leading)
                    List{
                        Section{
                            HStack{
                                Text("味")
                                Spacer()
                                Text("★★★★")
                            }
                            HStack{
                                Text("量")
                                Spacer()
                                Text("★★★★")}
                            HStack{
                                Text("値段")
                                Spacer()
                                Text("★★★★")}
                            HStack{
                                Text("店員のサービス")
                                Spacer()
                                Text("★★★★")}
                            HStack{
                                Text("店の雰囲気")
                                Spacer()
                                Text("★★★★")}
                            HStack{
                                Text("店の広さ・設備")
                                Spacer()
                                Text("★★★★")}
                        }
                        VStack{
                            Text("自由記述")
                            Text("味噌ラーメンも置いて欲しいと思った．")
                        }
                    }
                    Spacer()
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Record")
                            .font(.custom("Amita Bold",size:50))
                            .foregroundColor(Color("coRatBlack"))
                    }
                }
                ToolbarItemGroup(placement: .bottomBar){
                    Toolbar()
                }
            }
        }
    }
}

#Preview {
    AnswerRecordView()
}
