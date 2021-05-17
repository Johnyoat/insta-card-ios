//
//  CardView.swift
//  InstaCard
//
//  Created by Johnson Osei Yeboah on 17/05/2021.
//

import SwiftUI

struct CardView: View {
    var body: some View {

        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("red"), Color("litGray")]), startPoint: .top, endPoint: .bottom)
            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
                HStack {

                    Image("sgssb")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    Spacer()

                    Image("visa")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }


                Text("4941\t1122\t\t3910\t\t5775")
                        .foregroundColor(.white)
                        .padding(.top, 16)

                Spacer()
                Text("GH₵5,765.00")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .medium))

                Spacer()

                HStack {
                    VStack(alignment: .leading) {
                        Text("CARD HOLDER NAME")
                                .font(.system(size: 12))
                        Text("John Drama")
                    }

                    Spacer()

                    VStack(alignment: .leading) {
                        Text("VALID THROUGH")
                                .font(.system(size: 12))
                        Text("01/24")
                    }
                }.foregroundColor(.white)


            }.padding(16)


        }.frame(height: 250)
                .cornerRadius(8)
                .padding(16)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
