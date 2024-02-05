//
//  HappyView.swift
//  KidSignApp
//
//  Created by Majd Abdullah on 18/07/1445 AH.
//

import SwiftUI
import WebKit

struct HappyView: View {
    
    @State private var pageIndex = 1
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    // GET info from model
    @State private var pages: [Page] = Page.happy
    
    // For Swipe to control of color
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.background).ignoresSafeArea()
                
               
                    VStack {
                        
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
                                VStack {
                                    
                                    Image(systemName:  "arrowshape.left.circle.fill")
                                        .resizable()
                                        .frame(width: 40 ,height:40)
                                        .foregroundColor(.food)
                                    
                                    Text("الكلمة السابقة")
                                    
                                        .font(.custom("Ithra", size: 15))
                                        .foregroundColor(.black)
                                }
                            }.padding(30)
                            
                        
                            
                            NavigationLink(destination: SadView()) {
                                VStack {
                                    
                                    Image(systemName:  "arrowshape.right.circle.fill")
                                        .resizable()
                                        .frame(width: 40 ,height: 40)
                                        .foregroundColor(.food)
                                    
                                    Text("الكلمة التالية")
                                    
                                        .font(.custom("Ithra", size: 15))
                                        .foregroundColor(.black)
                                }.padding(30)
                            }
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
              //      .padding(.bottom, 50)
                }
                .navigationBarBackButtonHidden(true)
                
                .navigationBarTitle(Text("مشــاعر"), displayMode: .inline)
                
               
                
                
                .toolbar(content : {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.food)
                        }
                    }
                })
            }
        }
    }
    
    func incrementPage() {
        if pageIndex != pages.count {
            pageIndex += 1
        }
    }

func decreasePage() {
    if pageIndex != 1 {
        pageIndex -= 1
    }
}
    
    func goToZero() {
        pageIndex = 0
    }
    
}

#Preview {
    HappyView()
}


