//
//  changeclothesView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 18/07/1445 AH.

import SwiftUI
import WebKit

struct changeclothesView: View {
  
  
    @State private var pageIndex = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.changeclothes
    
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
                                PageViewchangeclothes(page: page)
                                
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
                              //  NavigationLink(destination : Sleep2()){
                                    Image(systemName:  "arrowshape.right.circle.fill")
                                        .resizable()
                                        .frame(width: 35 ,height: 35)
                                        .foregroundColor(Color("food"))
                                }
                                
                       //     }
                            
                        
                        
                    }.padding()
                    
                    
                } .navigationBarBackButtonHidden(true)
                
                
                
                
                
            }
            
            .navigationBarTitle("النوم", displayMode: .inline)
          
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    
                    
                    Button{
                        
                        
                    }label: {
                        
                                            ///her add the main page
                        //    NavigationLink(destination : Sleep2()){
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("food"))
                        
                  //  }
                }
                    
                    
                    .padding(.leading , 25)
                }
                
                
                
            }
            
        }
        
    }
        
       
    }
    
    
#Preview {
    HappyView()
}


// TO CONTROL OF SIZE OF Phic and Text and Gif
struct PageViewchangeclothes: View {
    
    var page: Page
    
    var body: some View {
        
        
        ZStack{
                    
                    Rectangle()
                        .frame(width: 350,height: 440)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                  
                   
                    Image("happyph")
                        .resizable()
                        .frame(width: 90 ,height: 120)
                        .padding(.bottom,300)
                        .padding(.trailing,200)
                    
                    Text(page.word)
                        .font(Font.headline.weight(.heavy))
                        .padding(.leading,100)
                        .padding(.bottom,280)
                    
                    GifImageHappy("\(page.GifImage)")
                        .scaledToFit()
                        .frame(width: 350 , height: 300)
                        .padding(.top,100)
                    
                    
                
                .padding(.top)
            }}}




// TO SHOW Gif
struct GifImagechangeclothes : UIViewRepresentable {
 
    private let name : String
    
    init(_ name: String){
     
        self.name = name
        
    }
    
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data,
                     mimeType: "image/gif",
                     characterEncodingName: "UTF-8" ,
                     baseURL: url.deletingLastPathComponent())
                   
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
    
      
}

