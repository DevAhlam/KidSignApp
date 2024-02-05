//
//  EmotionTestView.swift
//  KidSignApp
//
//  Created by Majd Abdullah on 20/07/1445 AH.
//

import SwiftUI
import Lottie

struct Test1View: View {
    
    @State private var isShowingCorrect = false
    @State private var isShowingFalse = false
    @Environment(\.presentationMode) private var presentationMode : Binding<PresentationMode>
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
                VStack{
                    
                    Text("اختر الاجابة الصحيحة  : ")
                        .font(.custom("Ithra", size: 15))
                        .foregroundColor(Color.black)
                        .padding(.leading,150)
                        .padding()
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width: 330,height: 370)      .foregroundColor(.white)
                            .cornerRadius(8)
                        
                        
                        
                        
                        GifImage("sadword")
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
                                    
                                    Image("backemotion")
                                    
                                    Image("sadph")
                                        .resizable()
                                        .frame(width: 60 ,height: 90)
                                    
                                }
                                
                                Text("حزين").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        .padding()
                        
                        
                        Button(action: {
                            
                            isShowingFalse = true
                        }){
                            VStack{
                                
                                ZStack{
                                    
                                    Image("backemotion")
                                    
                                    Image("happyph")
                                        .resizable()
                                        .frame(width: 60 ,height: 90)
                                      
                                    
                                    
                                }
                                
                                Text("سعيد").foregroundColor(.black)
                                    .font(.custom("Ithra", size: 15))
                                
                            }
                            
                        }
                        
                        
                        
                    }// End of HStack
                    
                    
                    
                    
                    
                    
                }  .padding(.bottom , 50)  .navigationBarBackButtonHidden(true)
                
                
                if isShowingCorrect {
                    
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                    
                        .overlay(
                            SelectCorectEmotion(isPresentedRepeat: $isShowingCorrect)
                                .padding()
                        )} // End of if stetment
                
                if isShowingFalse {
                    Color.black.opacity(0.2).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                        .overlay(
                            SelectFalseEmotion(isPresentedNext: $isShowingFalse)
                                .padding()
                        )} // End of if stetment
                
                
                
                
            }
            
            .toolbar(content :{

                ToolbarItem(placement: .topBarLeading) {

                    Button(action: {
                           presentationMode.wrappedValue
                        .dismiss()
                           } ,  label: {

                        Image(systemName: "chevron.left")
                         .foregroundColor(.food)


                    })
                    }})//end ToolbarItem
                
                
            }
        }}
        
        
    
    
    #Preview {
        Test1View()
    }
    
   
struct SelectCorectEmotion: View {
    @Binding var isPresentedRepeat: Bool
    
    var body: some View {
     
        
            
            VStack {
                ZStack{
                   
                    Text( "إجابة صحيحة ✅")
                        .font(.custom("Ithra", size: 30))
                        .foregroundColor(.yellow)
                     LottieView(animation: .named("celebrate"))
                        .looping()
                        .frame(width: 70, height: 70)
                    
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
                    }
                
            }
            .frame(width: 300 ,height: 180)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            
        
    }
}


struct SelectFalseEmotion: View {
  
    @Binding var isPresentedNext: Bool
    
    var body: some View {
        VStack {
            
            Text("اجابة خاطئة❌")
                //.font(.largeTitle)
                .font(.custom("Ithra", size: 30))
                .foregroundColor(.red)
            Text("حاول مرا اخرى !")
                .foregroundColor(.black)
                .font(.custom("Ithra", size: 20))
            
            
        
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

            
        }
        .frame(width: 300 ,height: 200)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

