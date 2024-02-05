//
//  boringView.swift
//  KidSignApp
//
//  Created by Majd Abdullah on 19/07/1445 AH.
//

import Foundation
import SwiftUI
import WebKit

struct BoringView: View {
  
  
    @State private var pageIndex = 1
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.boring
    
    // For Swip to control of color
    private let dotAppearance = UIPageControl.appearance()
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
                
          //    progress()
                
                
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
                    

                    // Color of Swipe
                    .onAppear {
                        dotAppearance.currentPageIndicatorTintColor = .systemYellow
                        dotAppearance.pageIndicatorTintColor = .white
                        
                    }
                    
//
                    HStack{
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            NavigationLink(destination: excitedView()) {
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
                        
                    
                        
                        NavigationLink(destination: HappyView()) {
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
                    
                  
                   // .padding(.bottom,50)
                    
                    } .navigationBarBackButtonHidden(true)
                    .navigationBarTitle("مشــاعر", displayMode: .inline)

                
                
                
                
                
            } // End ZStack
            
            
          
            
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
            
        } //End Navigation
        
    }
        
       
    }
    
    
#Preview {
    BoringView()
}
