//
//  Routine1.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 21/07/1445 AH.
//


import SwiftUI

struct Routine1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Main2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
              
                VStack{
                    
                    HStack{
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("fullph")
                                    .resizable()
                                    .frame(width: 110 ,height: 110)
                                    .padding(.trailing,30)
                                    .padding(.top,20)
                            }
                            Text("شبعان")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }//End VStack
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("hungryph")
                                    .resizable()
                                    .frame(width: 60 ,height: 80)
                                
                            }
                            Text("جوعان")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }
                    }
                    
                    HStack{
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("washfaceph")
                                    .resizable()
                                    .frame(width: 60 ,height: 80)
                                
                            }
                            Text("غسل الوجه")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }//End VStack
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("thirstyph")
                                    .resizable()
                                    .frame(width: 60 ,height: 80)
                                
                            }
                            Text("عطشان")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }
                    }
                    
                    
                    HStack{
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("bathph")
                                    .resizable()
                                    .frame(width: 80 ,height: 120)
                                
                            }
                            Text("الاستحمام")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }//End VStack
                        
                        
                        Button(action: {
                        })
                        {
                            NavigationLink(destination :Test2View()){
                        VStack {
                            
                            ZStack{
                                
                                Image("backroutine1")
                                Image("washhandph")
                                    .resizable()
                                    .frame(width: 60 ,height: 80)
                                
                            }
                            Text("غسل اليدين")
                                .font(.custom("Ithra", size: 15))
                                .foregroundColor(.black)
                        }
                    }}
                    }
                    
                    Button(action: {
                    })
                    {
                        NavigationLink(destination :Was()){
                    ZStack{
                        
                        
                        Rectangle()
                            .frame(width: 203,height: 66)
                            .foregroundColor(.white.opacity(0.7))
                            .cornerRadius(26)
                            .shadow(radius: 10)
                        
                        Text("اختبر نفسي")
                            .foregroundStyle(.sleep)
                            .font(.custom("Ithra", size: 15))
                        
                        
                        
                    }}  }  .padding()
                    
                }//.padding(.top)
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
        }}}
  
#Preview {
    Routine1()
}
