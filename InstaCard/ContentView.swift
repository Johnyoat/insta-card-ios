//
//  ContentView.swift
//  InstaCard
//
//  Created by Johnson Osei Yeboah on 07/04/2021.
//

import SwiftUI
import Lottie

struct ContentView: View {
    fileprivate func ServiceCard(icon : String, title :String, index: Int) -> some View {
        return VStack(spacing: 16){
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            Text(title)
                .foregroundColor(.white)
                .font(.caption)
            
        }.padding(16)
        .frame(
            maxWidth: .infinity)
        .background(Color("litGray"))
        .cornerRadius(8)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
        .padding(.bottom,16)
        .padding(.leading,8)
        .padding(.trailing,8)
    }
    
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
                
                HStack{
                    ServiceCard(icon: "transfer_money", title: "Transfer Money", index: 1)
                    
                    ServiceCard(icon: "bill", title: "Pay Bills", index: 2)
                    
                }.padding(.leading,8)
                .padding(.trailing,8)
                
                HStack{
                    ServiceCard(icon: "airtime", title: "Buy Airtime", index: 3)
                    
                    ServiceCard(icon: "transaction", title: "Transaction", index: 4)
                    
                }.padding(.leading,8)
                .padding(.trailing,8)
                
            
        
            }
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
