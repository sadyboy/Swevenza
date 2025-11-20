
import Foundation
import SwiftUI


struct Vztoyfcp: View {
    

    let lfhfu: Kyglhjm
    @ObservedObject var icnpe: Fgbaae
    
    var body: some View {
        VStack(spacing: 8) {
            Text(lfhfu.khyxxtecygj)
                .font(.custom("", size: 22))
            
            Text(lfhfu.name)
                .font(.custom("", size: 12))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color( "5A5A5A"))
            
            Text("Level \(lfhfu.knu)/\(lfhfu.dyqgritmfjkfn)")
                .font(.custom("", size: 12))
                .foregroundColor(Color( "FF6B9D"))

            // Candy-themed progress bar
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color(  "FFE4EC"))
                    .frame(height: 6)
                    .cornerRadius(3)
                
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [Color(  "FF6B9D"), Color(  "FF85A2")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: CGFloat(lfhfu.knu) / CGFloat(lfhfu.dyqgritmfjkfn) * 60, height: 6)
                    .cornerRadius(3)
            }
            .frame(width: 60)

            Button("Improve") {
                _ = icnpe.xjpwbdqevj(lfhfu)
            }
            .font(.custom("", size: 12))
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(
                lfhfu.knu < lfhfu.dyqgritmfjkfn ?
                LinearGradient(
                    colors: [Color(  "FF6B9D"), Color(  "FF85A2")],
                    startPoint: .top,
                    endPoint: .bottom
                ) :
                LinearGradient(
                    colors: [Color.gray, Color.gray.opacity(0.7)],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .foregroundColor(.white)
            .cornerRadius(8)
            .disabled(lfhfu.knu >= lfhfu.dyqgritmfjkfn)
            .shadow(color: Color.pink.opacity(0.2), radius: 2, x: 0, y: 2)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.gray.opacity(0.1), radius: 5, x: 0, y: 3)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color( "FFE4EC"), lineWidth: 2)
        )
    }
}
