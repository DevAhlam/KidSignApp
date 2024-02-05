//
//  Routine2.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 21/07/1445 AH.
//

import SwiftUI

import SwiftUI

struct Routine2: View {
    @Environment(\.presentationMode) private var presentationMode : Binding<PresentationMode>
    var body: some View {
        NavigationStack {
            ZStack {
                Image("ListBack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("كيف تعبر عن احتياجاتك؟")
                        .font(.custom("Ithra", size: 15))
                        .foregroundColor(.black)
                    VStack{
                        
                        HStack{
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :BrushingView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("brushingph")
                                                .resizable()
                                                .frame(width: 60 ,height: 80)
                                            
                                        }
                                        Text("تفريش الاسنان")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}//End VStack
                            
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :toilteView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("toiletph")
                                                .resizable()
                                                .frame(width: 60 ,height: 80)
                                            
                                        }
                                        Text("الحمام")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}
                        }
                        
                        HStack{
                            
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :SleepView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("sleepph")
                                                .resizable()
                                                .frame(width: 60 ,height: 90)
                                            
                                        }
                                        Text("النوم")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}//End VStack
                            
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :changeclothesView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("changeph")
                                                .resizable()
                                                .frame(width: 60 ,height: 80)
                                            
                                        }
                                        Text("تبديل الملابس")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}
                        }
                        
                        
                        HStack{
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :KgView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("kgph")
                                                .resizable()
                                                .frame(width: 60 ,height: 80)
                                            
                                        }
                                        Text("الروضة")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}//End VStack
                            
                            Button(action: {
                            })
                            {
                                NavigationLink(destination :SchoolView()){
                                    VStack {
                                        
                                        ZStack{
                                            
                                            Image("backroutine2")
                                            Image("schoolph")
                                                .resizable()
                                                .frame(width: 60 ,height: 80)
                                            
                                        }
                                        Text("المدرسة")
                                            .font(.custom("Ithra", size: 15))
                                            .foregroundColor(.black)
                                    }}}
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination :SchoolKgTestView()){
                                ZStack{
                                    
                                    
                                    Rectangle()
                                        .frame(width: 203,height: 66)
                                        .foregroundColor(.white.opacity(0.7))
                                        .cornerRadius(26)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    
                                    Text("اختبر نفسي")
                                        .foregroundStyle(.clean)
                                        .font(.custom("Ithra", size: 15))
                                    
                                    
                                    
                                }  }
                        }  .padding()
                        
                    }//.padding(.top)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                .navigationBarBackButtonHidden(true)
                
                
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
            
        }}}
  
#Preview {
    Routine2()
}
