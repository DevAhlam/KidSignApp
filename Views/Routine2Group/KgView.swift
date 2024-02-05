//
//  KgView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 18/07/1445 AH.



import SwiftUI
import WebKit

struct KgView: View {
  
  
    @State private var pageIndex = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.kg
    
    // For Swip to control of color
    private let dotAppearance = UIPageControl.appearance()
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(.background).ignoresSafeArea()
                
  
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
                        
                        
                    }
                
                    .tabViewStyle(PageTabViewStyle())
                
                    // Color of Swipe
                    .onAppear {
                        dotAppearance.currentPageIndicatorTintColor = .systemYellow
                        dotAppearance.pageIndicatorTintColor = .white
                        
                    }
                    
                    .padding()
                    
                    
                    
                    ZStack{
                      
                        Rectangle()
                            .frame(width: 150,height: 60)
                            .foregroundColor(.food.opacity(0.8))
                            .cornerRadius(26)
                            .shadow(radius: 10)
                        
                        Text("الكلمة التالية")
                            .font(.custom("Ithra", size: 15))
                            .foregroundColor(.white)
                    }   .padding(.bottom,50)
                                     } .navigationBarBackButtonHidden(true)
                
                
                
                
                
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
        
    }
        

    }
    
    
#Preview {
    KgView()
}
