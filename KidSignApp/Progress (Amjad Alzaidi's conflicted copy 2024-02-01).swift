//
//  Progress.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 18/07/1445 AH.
//

import Foundation
import SwiftUI

struct progress: View {
   
    let segments = 7
    var progress = 1
    // GET info from model
    let pages1: [Page] = Page.clothes
    let pages2: [Page] = Page.Sad
    let pages3: [Page] = Page.School
    let pages4: [Page] = Page.bath
    let pages5: [Page] = Page.boring
    let pages6: [Page] = Page.brushing
    let pages7: [Page] = Page.excited
    let pages8: [Page] = Page.full
    let pages9: [Page] = Page.happy
    let pages7: [Page] = Page.
    
    
    
    let barWidth: CGFloat = 350 // عرض البار المخصص
    var body: some View {
        
        
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: geometry.size.width, height: 20)
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.clean)
                    .frame(width: calculateProgressBarWidth(geometry: geometry), height: 20)
                    .cornerRadius(10)
              
            }
            
            ForEach(pages1) { page in
                //show the progress of user
                
                Text(" صفحة \(page.progress) من \(page.segments)")
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.top,25)
                    .padding(.leading,250)
                
            }
               
        }
        
        .frame(width: barWidth)
        
        
        .padding()
    }
    
    private func calculateProgressBarWidth(geometry: GeometryProxy) -> CGFloat {
        let totalWidth = geometry.size.width
        let segmentWidth = totalWidth / CGFloat(segments)
        let progressBarWidth = segmentWidth * CGFloat(progress)
        return progressBarWidth
    }
    
    
}


#Preview {
HappyView()
}
