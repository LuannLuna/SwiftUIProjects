//
//  InfoPainelView.swift
//  03.Pinch
//
//  Created by Luann Luna on 31/03/22.
//

import SwiftUI

struct InfoPainelView: View {
    
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPainelVisible: Bool = false
    
    var body: some View {
        HStack {
            // MARK: HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isInfoPainelVisible.toggle()
                    }
                }
            
            Spacer()
            // MARK: INFO PAINEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPainelVisible ? 1 : 0)
            
            Spacer()
        }
    }
}

struct InfoPainelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPainelView(scale: 1.0, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
