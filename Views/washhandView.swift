//
//  washhandView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 19/07/1445 AH.
//


import Foundation
import SwiftUI
import WebKit

struct washhandView: View {
  
  
    @State private var pageIndex = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.washhand
    
    // For Swip to control of color
    private let dotAppearance = UIPageControl.appearance()
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
                
              progress()
                
                
                VStack{
                  
                    
                    TabView(selection: $pageIndex) {
                        
                        ForEach(pages) { page in
                            
                            VStack {
                                
                                // TO SHOW Page
                               PageView(page: page)
                                
                            }
                          // To move Swipe color
                            .tag(page.tag)
                        }
                        
                        
                    } .tabViewStyle(PageTabViewStyle())
                
                    // Color of Swipe
                    .onAppear {
                        dotAppearance.currentPageIndicatorTintColor = .systemYellow
                        dotAppearance.pageIndicatorTintColor = .white
                        
                    }
                    
                    .padding()
                    
                    
                    HStack{
                       
                        Button(action: {
                                
                            }){
                                
                                                     ///her add the main page
                              //  NavigationLink(destination : Sleep2()){
                                    Image(systemName:  "arrowshape.left.circle.fill")
                                        .resizable()
                                        .frame(width: 35 ,height: 35)
                                        .foregroundColor(Color("food"))
                             //   }
                                
                            }
                            
                        
                          
                      Spacer()
                        
                        Button(action: {
                                
                            }){
                                
                                                     ///her add the next page
                            
                                    Image(systemName:  "arrowshape.right.circle.fill")
                                        .resizable()
                                        .frame(width: 35 ,height: 35)
                                        .foregroundColor(Color("food"))
                                }
                                
                    
                            
                        
                        
                    }.padding()
                    
                    
                } .navigationBarBackButtonHidden(true)
                
                
                
                
                
            } // End ZStack
            
            .navigationBarTitle("مشاعري", displayMode: .inline)
          
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                  
                    Button{
                   
                    }label: {
                        
                                            ///her add the main page
                      
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("food"))
                        
                }
                    
                    
                    .padding(.leading , 25)
                }
                
                
                
            }
            
        } //End Navigation
        
    }
        
       
    }
    
    
#Preview {
    washhandView()
}
