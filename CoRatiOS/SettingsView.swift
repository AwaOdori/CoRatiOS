//
//  SettingsView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/01/27.
//

import SwiftUI
struct SettingsView: View {
    @State var accountName = ""
    @State var prefectureCode = ""
    @State var gender = 0
    @State var socialAttribute = 0
    @State var birthday = 0
    @State var mailAddress = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    TextField("アカウント名", text: $accountName).padding()
                    TextField("郵便番号", text: $prefectureCode).padding()
                    Text("保存").font(.custom("Noto Sans JP Regular", size: 20))
                }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Setting")
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
    SettingsView()
}
