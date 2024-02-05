//
//  EatTestView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 20/07/1445 AH.
//


import SwiftUI


struct EatTestView: View {
    
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
                        
                        
                        
                        
                        GifImage("fullword")
                            .scaledToFit()
                            .frame(width: 300 , height: 350)
                        
                        
                        
                        
                        
                    }
                    
                    .padding()
                    
                    HStack{
                        
                        Button(action: {
                            isShowingFalse = true
                        }){
                            VStack{
                                
                                ZStack{
                                    
                                    Image("backTest")
                                    
                                    Image("thirstyph")
                                        .resizable()
                                        .frame(width: 70 ,height: 100)
                                        .padding(.trailing)
                                    
                                }
                                
                                Text("شبعان").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        .padding()
                        
                        
                        Button(action: {
                            isShowingCorrect = true
                           
                        }){
                            VStack{
                                
                                ZStack{
                                    
                                    Image("backTest")
                                    
                                    Image("fullph")
                                        .resizable()
                                        .frame(width: 120 ,height: 120)
                                    
                                        .padding(.trailing,30)
                                    
                                    
                                }
                                
                                Text("عطشان").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        
                    }// End of HStack
                    
                    
                    
                    
                    
                    
                }  .padding(.bottom , 50)
                
                
                if isShowingCorrect {
                    
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                    
                        .overlay(
                            SCorrectEatTest(isPresentedRepeat: $isShowingCorrect)
                                .padding()
                        )} // End of if stetment
                
                if isShowingFalse {
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                        .overlay(
                            SFalseEatTest(isPresentedNext: $isShowingFalse)
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
        EatTestView()
    }
    
    struct SCorrectEatTest: View {
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
    
    
    struct SFalseEatTest: View {
      
        @Binding var isPresentedNext: Bool
        
        var body: some View {
            VStack {
                
                Text("اجابة خاطئة👎🏻")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("حاول مرة اخرى !")
                    .font(.custom("Ithra", size: 20))
                    .foregroundColor(.red)
                
                
                
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
    
    
    
   
