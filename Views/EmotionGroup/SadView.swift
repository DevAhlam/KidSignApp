//
//  SadView.swift
//  KidSignApp
//
//  Created by Majd Abdullah on 18/07/1445 AH.
//


import SwiftUI
import WebKit

struct SadView: View {
  
  
    @State private var pageIndex = 1
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.Sad
    
    // For Swip to control of color
    private let dotAppearance = UIPageControl.appearance()
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
                VStack{
                    
                    CustomProgressView(progress: pageIndex, total: pages.count)
                    
                    
                    
                    TabView(selection: $pageIndex) {
                        
                        ForEach(pages) { page in
                            
                            VStack {
                                
                                
                                // TO SHOW Page
                                PageView(page: page)
                               
                            }
                            // To move Swipe color
                            
                            .tag(page.tag)
                        }}
                    
                  
                    .animation(.easeInOut, value: pageIndex)
                    .tabViewStyle(.page)
                    
                    HStack{
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            NavigationLink(destination: SadView()) {
                            VStack {
                                
                                Image(systemName:  "arrowshape.left.circle.fill")
                                    .resizable()
                                    .frame(width: 40 ,height:40)
                                    .foregroundColor(.food)
                                
                                Text("الكلمة السابقة")
                                
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.food)
                            }}
                        }.padding(30)
                        
                    
                        
                        NavigationLink(destination: excitedView()) {
                            VStack {
                                
                                Image(systemName:  "arrowshape.right.circle.fill")
                                    .resizable()
                                    .frame(width: 40 ,height: 40)
                                    .foregroundColor(.food)
                                
                                Text("الكلمة التالية")
                                
                                    .font(.custom("Ithra", size: 15))
                                    .foregroundColor(.food)
                            }.padding(30)
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
          //      .padding(.bottom, 50)
            
                    // Color of Swipe
                    .onAppear {
                        dotAppearance.currentPageIndicatorTintColor = .systemYellow
                        dotAppearance.pageIndicatorTintColor = .white
                        
                    }
                    
//                    NavigationLink(destination :excitedView()){
//                            ZStack{
//                                
//                                Rectangle()
//                                    .frame(width: 150,height: 60)
//                                    .foregroundColor(.food.opacity(0.8))
//                                    .cornerRadius(26)
//                                    .shadow(radius: 10)
//                                
//                                Text("الكلمة التالية")
//                                    .foregroundColor(.white)
//                                    .font(.custom("Ithra", size: 15))
//                            }
//                        }
                    
                }//.padding(.bottom,50)
                
                 .navigationBarBackButtonHidden(true)
                 .navigationBarTitle("مشــاعر", displayMode: .inline)

     
                
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
          
            
            
            
            
            
            
            
            
            
            
            
            
        }}}
    
    
#Preview {
    SadView()
}

