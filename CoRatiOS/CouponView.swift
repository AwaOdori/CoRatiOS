//
//  CouponView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/01/28.
//

import SwiftUI

struct CouponView: View {
    @State var couponId = "33h07mHKa"
    @State var couponExplanation = "味噌ラーメン100円引き"
    @State var couponStore = "ラーメン屋"
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    Text(couponExplanation).font(.custom("Noto Sans JP SemiBold",size:30))
                    Text(couponStore).font(.custom("Noto Sans JP",size:20)).frame(alignment:.leading).padding()
                    Text("クーポンid \(couponId)").font(.custom("Noto Sans JP",size:20)).frame(alignment:.leading).padding()
                }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Coupon")
                            .font(.custom("Amita Bold",size:50))
                            .foregroundColor(Color("coRatBlack"))
                        
                    }
                }
                ToolbarItemGroup(placement: .bottomBar){
                    HStack{
                        Image(systemName: "qrcode")
                        NavigationLink(destination: ContentView()){
                            Image(systemName: "house.circle")
                                .foregroundColor(Color.black)
                                                }
                        NavigationLink(destination: CouponListView()){
                            Image(systemName: "ticket")
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: SettingsView()){
                            Image(systemName: "pencil.circle")
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CouponView()
}
