//
//  StoreView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/01/28.
//

import SwiftUI

struct StoreView: View {
    @State var imageUrl = "https://placekitten.com/1200/1200"
    @State var storeName = "店舗名"
    @State var storeExlpanation = "「至福の一杯、とんこつラーメンの真髄を味わうなら、是非当店へ足をお運びください。厳選された豚骨をじっくりと煮込み、深みのあるコクと香りを引き出した自慢の一杯をご提供しております。濃厚なスープとコシのある麺の相性は絶品！さらにトッピングや辛味の調整も可能ですので、お好みに合わせてカスタマイズしていただけます。心温まるサービスと共に、日常の喧騒を忘れさせる至福の時間をお約束いたします。是非、ご家族や友人をお誘い合わせの上、当店で至福の味わいをお楽しみください。」"
    @State var kindsOfFood = "とんこつ"
    @State var storeAddress = "神奈川県横浜市港北区日吉本町"
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    AsyncImage(url: URL(string: imageUrl)) { loadedImage in loadedImage
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                        .frame(width: 300, height: 300)} placeholder: {
                            ProgressView()
                        }
                    Text(storeName).font(.custom("Noto Sans JP SemiBold",size:30)).padding()
                    Text("カテゴリー \(kindsOfFood)").font(.custom("Noto Serif JP SemiBold",size:18))
                        .frame(alignment: .leading)
                        .padding()
                    Text(storeExlpanation).font(.custom("Noto Serif JP",size:16))
                        .padding()
                    Text(storeAddress).font(.custom("Noto Serif JP SemiBold",size:18))
                        .frame(alignment: .leading)
                        .padding()
                }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Store")
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
    StoreView()
}
