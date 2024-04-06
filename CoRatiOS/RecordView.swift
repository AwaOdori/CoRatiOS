//
//  RecordView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/04/05.
//

import SwiftUI

struct RecordView: View {
    var gridLayout: [GridItem] {
            .init(repeating: GridItem(spacing: 10,alignment: .leading),count: 4)
    }
    var storePictureLinks: [String] = [
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj1717lDgNUyv0fib0ZG6biWb4JUJ24RjXcYLKY77Z6asuRLsslIZMZivjHOnxfM5dPiITigwjv_PXk0HKa4g6KnGZ01iJi-6XuaW4KLcVkqeKnHpy8It30AwrJRmUKG8OuMyQVnV7LWHsn/s400/ramenya.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi67WPiHiJcBDi5E30IcBXRsTZ92M5_cUDnux6ePFD0hZBO_0wCr3xLn9Ul0QKsOOjzEttrEwv5BS80fmghD98vzNpZVh7yEyizxBhphZSJdA4ssMM2u2C1nYni4BMs1mDAPi5tclunF5w/s450/yatai_ra-men_man.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEie6iEzUX8y3V94Z2Ig4tvqcQZwYDdNOpFdqbMFs48iqQAm4fqWTnG92HQPAhbrgriFjgFIme78c99ytN0davna2fjASUT3wL97Ye4ahyphenhyphen1ZLXTzvHO-qmA9fuX250qWmLFQkvyKQeoubh8/s400/jidouhanbaiki_autosnack_ramen.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9xVhlXAon2O8h7e48DW4AixuKeJSo19EczfmBnYkO5PYgKUxzseYw2kEaaFQHGGUqNjeOKN92EJIRao5IaHQg2adhjeLUeh71KfMGQJw5L8IasU3ReecJoTB0U9D8btdNg9iLZWNJ3I0/s180-c/tatemono_raamen.png"
    ]
    var body: some View {
        NavigationStack{
            VStack{
                Text("訪れたラーメン店").font(.custom("Noto Sans JP SemiBold",size:30)).padding()
                List{
                        ScrollView(.horizontal){
                                ForEach(storePictureLinks, id: \.self) { storeImgLink in
                                    if let storeImgURL = URL(string: storeImgLink){
                                        NavigationLink(destination:AnswerRecordView(imageUrl:storeImgLink)){
                                            AsyncImage(url: storeImgURL) { image in
                                                HStack{
                                                    image
                                                        .resizable()
                                                        .frame(width: 50, height: 50)
                                                        .cornerRadius(5)
                                                    Text("ラーメン屋").font(.custom("Noto Sans JP SemiBold",size:20)).foregroundColor(Color.black).multilineTextAlignment(.center).lineLimit(nil).padding()
                                                }
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }
                                    }
                                }.padding()
                    }
                }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("Records")
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
    RecordView()
}
