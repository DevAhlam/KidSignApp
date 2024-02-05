
import Foundation
import SwiftUI
import WebKit

struct BrushingView: View {
  
  
    @State private var pageIndex = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    // GET info from model
    private let pages: [Page] = Page.brushing
    
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
                        
                        
                    } .tabViewStyle(PageTabViewStyle())
                    
                    // Color of Swipe
                        .onAppear {
                            dotAppearance.currentPageIndicatorTintColor = .systemYellow
                            dotAppearance.pageIndicatorTintColor = .white
                            
                        }
                    
                        .padding()
                    
                    
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
                                    .foregroundColor(.food)
                            }
                        }.padding(30)
                        
                        
                        
                        NavigationLink(destination: SleepView()) {
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
                    
                    
                    
                    
                    
                }
                
                
            } // End ZStack
            
            
              
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
            
        } //End Navigation
        
    }
        
       
    }
    
    
#Preview {
    BrushingView()
}
