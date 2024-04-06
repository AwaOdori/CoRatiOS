//
//  ScanQRView.swift
//  CoRatiOS
//
//  Created by Yuki-OHMORI on 2024/01/27.
//

import SwiftUI

struct ScanQRView: View {
    @State var scanResult = "No QR code detected"
    var body: some View {
        NavigationStack{
            VStack{
                ZStack(alignment: .bottom) {
                    //QRScanner()
                    Text(scanResult)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .padding(.bottom)
                        }
            }.toolbar{
                ToolbarItemGroup(placement: .principal){
                    HStack{
                        Text("QR Code")
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
    ScanQRView()
}
