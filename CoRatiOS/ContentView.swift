//
//  ContentView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2023/09/30.
//

import SwiftUI

struct ContentView: View {
    var gridLayout: [GridItem] {
            .init(repeating: GridItem(spacing: 10,alignment: .leading),count: 10)
    }
    var storePictureLinks: [String] = [
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj1717lDgNUyv0fib0ZG6biWb4JUJ24RjXcYLKY77Z6asuRLsslIZMZivjHOnxfM5dPiITigwjv_PXk0HKa4g6KnGZ01iJi-6XuaW4KLcVkqeKnHpy8It30AwrJRmUKG8OuMyQVnV7LWHsn/s400/ramenya.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi67WPiHiJcBDi5E30IcBXRsTZ92M5_cUDnux6ePFD0hZBO_0wCr3xLn9Ul0QKsOOjzEttrEwv5BS80fmghD98vzNpZVh7yEyizxBhphZSJdA4ssMM2u2C1nYni4BMs1mDAPi5tclunF5w/s450/yatai_ra-men_man.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEie6iEzUX8y3V94Z2Ig4tvqcQZwYDdNOpFdqbMFs48iqQAm4fqWTnG92HQPAhbrgriFjgFIme78c99ytN0davna2fjASUT3wL97Ye4ahyphenhyphen1ZLXTzvHO-qmA9fuX250qWmLFQkvyKQeoubh8/s400/jidouhanbaiki_autosnack_ramen.png",
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9xVhlXAon2O8h7e48DW4AixuKeJSo19EczfmBnYkO5PYgKUxzseYw2kEaaFQHGGUqNjeOKN92EJIRao5IaHQg2adhjeLUeh71KfMGQJw5L8IasU3ReecJoTB0U9D8btdNg9iLZWNJ3I0/s180-c/tatemono_raamen.png"
    ]
    var tiketPictureLinks: [String] = [
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhwZQg8qmvvq8ONNvAe3U3nTu2L8KuLvke_FszrV_NFXuydiit_aq6d9EICm0AQ9cRXTaso8ZWo2XKQ9sE_6tVlxQqAulEnl3ps6Ov7ClNC0bWMIR19nQDe97CMD5acEmWJK71zXriExkot/s400/smartphone_denshi_ticket.png",
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh8ACEEZi0xzNmGYT6vDYq2toatMb7zeish5-1HQE5Zp55EAHp8nlOd4uWER3czdCjRuvnHd2-0BmSHq8xT-0UVy02tO7PLEWEl0TOQuRkbPcY_j58dhtthgg7DS0dyTpb0_iyRcNqlm0QZ/s400/ticket_get_man.png",
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEinmXRQO1BvVZiYST_EkE4lft34cXdP0CsN_Br7qWhKkt-aoLr0MzQjZyQWy6szCw6H-gkiLbuVuCWhyphenhyphen8CDczObCKcfFGReLrj19nYY-RI61wswEcovTS6Ex-udaIP8AyowtZB1ZVoUmY5G/s400/ticket_premium.png",
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiRl2FB0Iz0P6Ukn_512Hybj7TISOddnsc3BVoVQykosrYkLj-Dda52uw8t4JDJxE-C0DxZR8WbqNUgRC5h4Pncb50Ea95QBvgS9eAlch9ZDivPxyIg8x3_t0dnrYLpwSPc6iABkrOcvfQ/s400/kippu.png"
    ]
    var body: some View {
        NavigationStack(){
            VStack {
                ScrollView{
                    Text("おすすめクーポン").font(.custom("Sawarabi Gothic",size:25))
                        .padding(.leading)
                    ScrollView(.horizontal){
                        LazyVGrid(columns: gridLayout, alignment:.leading) {
                            ForEach(tiketPictureLinks, id: \.self) {
                                tiketImgLink in
                                if let tiketImgURL = URL(string: tiketImgLink) {
                                    AsyncImage(url: tiketImgURL) { image in image
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(20)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                }
                            }
                        }.padding()
                    }
                    Text("近くのお店")
                        .font(.custom("Sawarabi Gothic", size: 25))
                    ScrollView(.horizontal){
                        LazyVGrid(columns: gridLayout, alignment:.leading) {
                            ForEach(storePictureLinks, id: \.self) { storeImgLink in
                                if let storeImgURL = URL(string: storeImgLink){
                                    NavigationLink(destination:StoreView(imageUrl:storeImgLink)){
                                        AsyncImage(url: storeImgURL) { image in
                                            image
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(20)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                    }
                                }
                            }
                        }.padding()
                    }
                }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("coRat")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
