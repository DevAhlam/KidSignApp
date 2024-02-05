//
//  Mainpage.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 21/07/1445 AH.
//

import SwiftUI

struct Mainpage: View {
    var body: some View {
        
        NavigationStack{
          
            ZStack {
                
                Image("Main2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
            
                VStack{
                    Text("مرحــبا بــك!")
                        .font(.custom("Ithra", size: 25))
                        .foregroundColor(.sleep)
                    
                VStack{
                    Text("ماذا تود أن تتعلم اليوم؟ ")
                        .font(.custom("Ithra", size: 30))
                        .foregroundColor(.black)
                    
                    NavigationLink(destination :Emotion()){
                        
                        ZStack {
                            
                            
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(30)
                                .frame(width: 300, height: 100)
                            
                            
                            HStack {
                                
                                Image("backemotion")
                                    .padding()
                                Text("مشــاعر")
                                    .foregroundColor(.black)
                                    .font(.custom("Ithra", size: 14))
                            } .padding(.trailing,150)
                            
                            
                            Image("emotionC")
                                .resizable()
                                .frame(width: 70,height: 100)
                                .padding(.trailing,210)
                            
                        }
                    } .navigationBarBackButtonHidden(true)
                    
                    
                    
                  
                    
                        NavigationLink(destination :Routine1()){
                            ZStack {
                                
                                Rectangle()
                                    .fill(Color.white)
                                    .cornerRadius(30)
                                    .frame(width: 300, height: 100)
                                
                                
                                HStack {
                                    
                                    Text("المهارات اليومية ١")
                                        .foregroundColor(.black)
                                        .font(.custom("Ithra", size: 15))
                                    Image("backroutine1")
                                    
                                    
                                } .padding(.leading,100)
                                
                                Image("routine")
                                    .resizable()
                                    .frame(width: 90,height: 120)
                                    .padding(.leading,210)
                                
                                
                            }}
                    
                    
                    
                    
                    
                    
                    
                    
                    
                        NavigationLink(destination :Routine2()){
                            
                            ZStack {
                                
                                Rectangle()
                                    .fill(Color.white)
                                    .cornerRadius(30)
                                    .frame(width: 300, height: 100)
                                
                                
                                HStack {
                                    
                                    
                                    
                                    Image("backroutine2")
                                    
                                    
                                    
                                    Text("المهارات اليومية ٢")
                                        .foregroundColor(.black)
                                        .font(.custom("Ithra", size: 15))
                                    
                                } .padding(.trailing,100)
                                Image("routine")
                                    .resizable()
                                    .frame(width: 90,height: 120)
                                    .padding(.trailing,230)
                            }}
                    
                    
                    
                    
                    
                } }}}
        }}


#Preview {
    Mainpage()
}
