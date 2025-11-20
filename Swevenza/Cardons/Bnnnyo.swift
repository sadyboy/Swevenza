import Foundation
import SwiftUI

struct Xohxwr: View {
    let qyakkjqxx: Hzhyvmwslecl
    let mzutqgkefy: Bool
    let buqah: () -> Void
    
    var body: some View {
        Button(action: buqah) {
            VStack(spacing: 12) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            LinearGradient(
                                colors: [
                                    qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.1),
                                    qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.05)
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(
                                    LinearGradient(
                                        colors: [qyakkjqxx.hbxvqkrxeryrul.color, qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.7)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ),
                                    lineWidth: 3
                                )
                        )
                    
                    VStack(spacing: 8) {
                        ZStack {
                            Circle()
                                .fill(qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.2))
                                .frame(width: 70, height: 70)
                                .background(
                                    Circle()
                                        .stroke(qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.5), lineWidth: 2)
                                )
                            
                            Text(qyakkjqxx.khyxxtecygj)
                                .font(.system(size: 40))
                                .grayscale(qyakkjqxx.izeqmbaoh ? 0 : 1)
                        }
                        
                        Text(qyakkjqxx.name)
                            .font(.custom("", size: 15))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .foregroundColor(Color("5A5A5A"))
                        Text(qyakkjqxx.hbxvqkrxeryrul.rawValue)
                            .font(.custom("", size: 12))
                            .foregroundColor(qyakkjqxx.hbxvqkrxeryrul.color)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 2)
                            .background(qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.2))
                            .cornerRadius(8)
                        
                        if qyakkjqxx.izeqmbaoh {
                            Text("Level \(qyakkjqxx.knu)")
                                .font(.custom("", size: 12))
                                .foregroundColor(Color( "FF6B9D"))
                        } else {
                            Text("🔒 Locked")
                                .font(.custom("", size: 12))
                                .foregroundColor(Color( "FF6B8B"))
                        }

                        if mzutqgkefy {
                            Text("✓ Equipped")
                                .font(.custom("", size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(
                                    LinearGradient(
                                        colors: [Color( "9BE09B"), Color( "7BC8A6")],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                }
                .frame(height: 200)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
