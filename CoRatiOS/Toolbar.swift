//
//  Toolbar.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/04/05.
//

import SwiftUI

struct Toolbar: View {
    var body: some View {
        HStack{
            NavigationLink(destination:ContentView()){
                Image(systemName: "house")
                    .foregroundColor(Color.black)
            }
            NavigationLink(destination: ScanQRView()){
                Image(systemName: "qrcode")
                    .foregroundColor(Color.black)
            }
            NavigationLink(destination: CouponListView()){
                Image(systemName: "ticket")
                    .foregroundColor(Color.black)
            }
            NavigationLink(destination: RecordView()){
                Image(systemName: "note.text")
                    .foregroundColor(Color.black)
            }
            NavigationLink(destination: SettingsView()){
                Image(systemName: "gearshape")
                    .foregroundColor(Color.black)
            }
        }
    }
}

#Preview {
    Toolbar()
}
