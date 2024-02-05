//
//  Emotion.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 21/07/1445 AH.
//

import SwiftUI

struct Emotion: View {
    @State private var showingAlert = false
    @State private var shouldOpenView = false
    @Environment(\.presentationMode) private var presentationMode : Binding<PresentationMode>
    @State private var pages: [Page] = Page.happy
    @State private var Startindex = 1
    var body: some View {
        
        NavigationStack {
          
            
            ZStack {
                Image("ListBack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    Text("كيف تعبر عن مشاعرك؟")
                        .font(.custom("Ithra", size: 20))
                        .foregroundColor(.black)
                    //                    .navigationBarTitle("بماذا تشعر ؟")
                    //                    .font(.custom("Ithra-Bold", size: 9))
                    HStack{
                        
                        NavigationLink(destination :SadView()){
                            VStack {
                                
                                ZStack{
                                    
                                    Image("backemotion")
                                    Image("sadph")
                                        .resizable()
                                        .frame(width: 60 ,height: 80)
                                    
                                }
                                Text("حزين")
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.black)
                                
                            }}
                        .navigationBarBackButtonHidden(true)
                        
                        
                        NavigationLink(destination :HappyView()){
                            VStack {
                                
                                ZStack{
                                    
                                    Image("backemotion")
                                    Image("happyph")
                                        .resizable()
                                        .frame(width: 60 ,height: 80)
                                    
                                }
                                Text("سعيد")
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    HStack{
                        
                        
                        NavigationLink(destination :BoringView()){
                            VStack {
                                
                                ZStack{
                                    
                                    Image("backemotion")
                                    Image("boringph")
                                        .resizable()
                                        .frame(width: 60 ,height: 80)
                                    
                                }
                                Text("ملل")
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.black)
                            }
                        }
                        
                        //End VStack
                        
                        NavigationLink(destination :excitedView()){
                            VStack {
                                
                                ZStack{
                                    
                                    Image("backemotion")
                                    Image("excitedph")
                                        .resizable()
                                        .frame(width: 60 ,height: 80)
                                    
                                }
                                Text("متحمس")
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    
                    NavigationLink(destination :Test1View()){
                        ZStack{
                            
                            
                            Rectangle()
                                .frame(width: 203,height: 66)
                                .foregroundColor(.white.opacity(0.7))
                                .cornerRadius(26)
                                .shadow(radius: 10)
                            
                            Text("اختبر نفسي")
                                .foregroundStyle(.black)
                                .font(.custom("Ithra", size: 15))
                            
                            
                        }}  .padding(.top,60)
                    
                    
                    
                    
                   
                    
                    
                    
                    
                    
                    
                }.padding(.top)   //End VStack
                
                
            }   //End ZStack
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("مشــاعر", displayMode: .inline)
            
            
            
            .toolbar(content :{
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button(action: {
                        presentationMode.wrappedValue
                            .dismiss()
                        showingAlert = true
                    } , label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.food)
                            .alert("ستتنقل للصفحة الرئيسية", isPresented: $showingAlert) {
                                Button("نعم", role: .cancel) {
                                    shouldOpenView = true
                                }
                                Button("لا", role: .destructive) {
                                    
                                }
                            }
                    }).navigationDestination(isPresented: $shouldOpenView){
                        Mainpage()
                    } //end label closure
                    
                }}) //end ToolbarItem
            
            
            
            
            
        }
        
    }
    
    
    
    func lock () {
//        if pages.Startindex==1 {
        
  //  }else{   }
            
        }
   
    func unlock () {
        
        
        
        
        
    }
    
        
    }
                   
  
#Preview {
    Emotion()
}
