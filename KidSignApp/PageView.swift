//
//  PageView.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 19/07/1445 AH.
//

import SwiftUI
import WebKit


struct PageView: View {
   
    var page: Page
    
    var body: some View {
      
        ZStack{
            
                    Rectangle()
                        .frame(width: 350,height: 440)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                  
                   
                    Image(page.Image)
                        .resizable()
                        .frame(width: 80 ,height: 100)
                        .padding(.bottom,300)
                        .padding(.trailing,250)
                    
                     Text(page.word)
                .font(.custom("Ithra", size: 20))
                     .padding(.leading,150)
                     .padding(.bottom,300)
                     .foregroundColor(.food)
            
                     Text(page.sentence)
                .font(.custom("Ithra", size: 20))
                      .padding(.bottom,300)
                      .padding(.leading,150)
                   
                    GifImage("\(page.GifImage)")
                        .scaledToFit()
                        .frame(width: 350 , height: 300)
                        .padding(.top,100)
                    
                    
                
                .padding(.top)
            }}}

#Preview {
    HappyView()
}
