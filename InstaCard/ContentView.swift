//
//  ContentView.swift
//  InstaCard
//
//  Created by Johnson Osei Yeboah on 07/04/2021.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top){
            Color("blackGray").ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Text("InstaCard")
                        .font(.system(size: 18,weight:.medium))
                        .foregroundColor(.white)
    
                    Spacer()
                    Image("john")
                        .resizable()
                        .cornerRadius(24)
                        .padding(2)
                        .background(Color("red"))
                        .cornerRadius(24)
                        .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                       
                    
                }.padding(.leading)
                .padding(.trailing)
                CardView()
            
        
            }
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
