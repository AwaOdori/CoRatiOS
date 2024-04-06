//
//  SeachView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/03/02.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("店舗検索").font(.custom("Noto Sans JP SemiBold",size:30))
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Search")
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
    SearchView()
}
