

import Foundation
import SwiftUI

struct Uywiywyjd: View {
    let khyxxtecygj: String
    let title: String
    let description: String
    let uowod: String
    let color: String
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 12) {
            sribytcljzbd
            lpypl
            xvpfpstu
            lwouzjli
            wcfabrgikkxo
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.pink.opacity(0.1), radius: 5, x: 0, y: 3)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color("FFE4EC"), lineWidth: 2)
        )
    }
    
    private var sribytcljzbd: some View {
        Text(khyxxtecygj)
            .font(.system(size: 40))
            .shadow(color: Color(color).opacity(0.3), radius: 2, x: 0, y: 2)
    }
    
    private var lpypl: some View {
        Text(title)
            .font(.custom("", size: 17))
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("5A5A5A"))
    }
    
    private var xvpfpstu: some View {
        Text(description)
            .font(.custom("", size: 12))
            .foregroundColor(Color(color))
            .multilineTextAlignment(.center)
    }
    
    private var lwouzjli: some View {
        Text(uowod)
            .font(.custom("", size: 15))
            .fontWeight(.medium)
            .foregroundColor(Color(color))
    }
    
    private var wcfabrgikkxo: some View {
        Button("Buy", action: action)
            .font(.custom("", size: 14))
            .fontWeight(.semibold)
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
            .background(pfb)
            .foregroundColor(.white)
            .cornerRadius(12)
            .shadow(color: Color(color).opacity(0.3), radius: 3, x: 0, y: 2)
    }
    
    private var pfb: some View {
        LinearGradient(
            colors: [Color(color), Color(color).opacity(0.8)],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
