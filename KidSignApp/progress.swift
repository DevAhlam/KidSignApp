//
//  progress.swift
//  kidsSign
//
//  Created by Ahlamalmutiri on 16/07/1445 AH.
//

import SwiftUI

struct CustomProgressView: View {
    var progress: Int
    let total: Int

    let barWidth: CGFloat = 360
    let barHeight: CGFloat = 20
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
                    .frame(width: geometry.size.width, height: barHeight)
                    .cornerRadius(barHeight / 2)
                
                Rectangle()
                    .foregroundColor(Color(.systemYellow))  
                    .frame(width: calculateProgressBarWidth(geometry: geometry), height: barHeight)
                    .cornerRadius(barHeight / 2)
                
                HStack {
                    Spacer()
                    Text("\(progress) من \(total)")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.black)
                }
                .padding(.trailing, 20)
            }
        }
        .frame(width: barWidth, height: barHeight)
        .padding()
    }
    
    private func calculateProgressBarWidth(geometry: GeometryProxy) -> CGFloat {
        let totalWidth = geometry.size.width
        let segmentWidth = totalWidth / CGFloat(total)
        let progressBarWidth = segmentWidth * CGFloat(progress)
        return progressBarWidth
    }
    
}
