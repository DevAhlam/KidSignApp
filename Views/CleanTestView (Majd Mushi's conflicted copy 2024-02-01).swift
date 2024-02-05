//
//  CleanTestView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 20/07/1445 AH.
//

import SwiftUI


struct CleanTestView: View {
    
    @State private var isShowingCorrect = false
    @State private var isShowingFalse = false
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
                VStack{
                    
                    Text("اختر الاجابة الصحيحة  : ")
                        .foregroundColor(Color.black)
                        .font(.custom("Ithra", size: 20))
                        .padding(.leading,150)
                        .padding()
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width: 330,height: 370)      .foregroundColor(.white)
                            .cornerRadius(8)
                        
                        
                        
                        
                        GifImage("toiletword")
                            .scaledToFit()
                            .frame(width: 300 , height: 350)
                        
                        
                        
                        
                        
                    }
                    
                    .padding()
                    
                    HStack{
                        
                        Button(action: {
                            isShowingCorrect = true
                        }){
                            VStack{
                                
                                ZStack{
                                    
                                    Image("backTest")
                                    
                                    Image("toiletph")
                                        .resizable()
                                        .frame(width: 70 ,height: 90)
                                        .padding(.trailing,20)
                                    
                                }
                                
                                Text("حمام").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        .padding()
                        
                        
                        Button(action: {
                            
                            isShowingFalse = true
                        }){
                            VStack{
                                
                                ZStack{
                                    
                                    Image("backTest")
                                    
                                    Image("washhandph")
                                        .resizable()
                                        .frame(width: 70 ,height: 100)
                                        .padding(.trailing,20)
                                    
                                    
                                }
                                
                                Text("غسل اليدين").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        
                    }// End of HStack
                    
                    
                    
                    
                    
                    
                }  .padding(.bottom , 50)
                
                
                if isShowingCorrect {
                    
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                    
                        .overlay(
                            SCorrectCleanTest(isPresentedRepeat: $isShowingCorrect)
                                .padding()
                        )} // End of if stetment
                
                if isShowingFalse {
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                        .overlay(
                            SFalseEatCleanTest(isPresentedNext: $isShowingFalse)
                                .padding()
                        )} // End of if stetment
                
                
                
                
            }
            
            .toolbar{
                
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        
                        
                    }label: {
                        
                        Image(systemName: "chevron.left")
                          .foregroundColor(.food)
                        
                    }
                    
                } }
                
                
            }
        }}
        
        
    
    
    #Preview {
        CleanTestView()
    }
    
    struct SCorrectCleanTest: View {
        @Binding var isPresentedRepeat: Bool
        
        var body: some View {
            VStack {
                
                Text( "احسنت👏🏼")
                
                    .font(.title)
                    .foregroundColor(.yellow)
                
                
                    .padding(.top,50)
                
                
                
                HStack{
                    
                    VStack{
                        
                        Button(action: {
                            
                            isPresentedRepeat = false
                            
                        }){
                          
                            Image(systemName: "arrow.counterclockwise.circle.fill")
                                .resizable()
                                .frame(width: 40 , height: 40)
                                .foregroundColor(.food)
                            
                            
                            
                        }
                        Text("اعادة") .foregroundColor(.food)
                            .font(.custom("Ithra", size: 15))
                    }
                    
                    VStack{
                        
                        Button(action: {
                            
                            // another View
                            
                        }){
                            NavigationLink(destination :HungryView()){
                                Image(systemName: "arrow.right.circle.fill")
                                    .resizable()
                                    .frame(width: 40 , height: 40)
                                    .foregroundColor(.food)
                                
                                
                                
                            }
                        }
                        Text("التالي").foregroundColor(.food)
                            .font(.custom("Ithra", size: 15))
                        
                    }}
                
                
                
                
                
                
            }
            .padding(.bottom,50)
            .frame(width: 300 ,height: 180)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
        }
    }
    
    
    struct SFalseEatCleanTest: View {
      
        @Binding var isPresentedNext: Bool
        
        var body: some View {
            VStack {
                
                Text("اجابة خاطئة👎🏻")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("حاول مرة اخرى !")
                    .foregroundColor(.red)
                    .font(.custom("Ithra", size: 20))
                
                
                
                HStack{
                    
                    VStack{
                        
                        Button(action: {
                            
                            isPresentedNext = false
                            
                        }){
                            Image(systemName: "arrow.counterclockwise.circle.fill")
                                .resizable()
                                .frame(width: 40 , height: 40)
                                .foregroundColor(.food)
                            
                            
                            
                        }
                        Text("اعادة").foregroundColor(.food)
                            .font(.custom("Ithra", size: 15))
                    }
                    
                    VStack{
                        
                        Button(action: {
                            
                            // another View
                            
                        }){
                            NavigationLink(destination :HungryView()){
                                Image(systemName: "arrow.right.circle.fill")
                                    .resizable()
                                    .frame(width: 40 , height: 40)
                                    .foregroundColor(.food)
                                
                                
                            }
                        }
                        Text("التالي").foregroundColor(.food)
                            .font(.custom("Ithra", size: 15))
                    }}
                
                .padding()
                
            }
            .frame(width: 300 ,height: 200)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
        }
    }
    
    
    
   
