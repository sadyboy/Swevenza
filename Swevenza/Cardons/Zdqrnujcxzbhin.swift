import Foundation
import SwiftUI

struct Fratjcaogex: View {
    let qyakkjqxx: Hzhyvmwslecl
    @ObservedObject var icnpe: Fgbaae
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [qyakkjqxx.hbxvqkrxeryrul.color, qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.6)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 150, height: 150)
                            .background(
                                Circle()
                                    .stroke(qyakkjqxx.hbxvqkrxeryrul.color, lineWidth: 4)
                            )
                        
                        Text(qyakkjqxx.khyxxtecygj)
                            .font(.system(size: 80))
                            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 2)
                    }
                    .padding(.top)
                    
                    VStack(spacing: 8) {
                        Text(qyakkjqxx.name)
                            .font(.custom("", size: 28))
                            .fontWeight(.bold)
                            .foregroundColor(Color(  "D44D7A"))
                        
                        Text(qyakkjqxx.hbxvqkrxeryrul.rawValue)
                            .font(.custom("", size: 17))
                            .foregroundColor(qyakkjqxx.hbxvqkrxeryrul.color)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.2))
                            .cornerRadius(12)
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Stats")
                            .font(.custom("", size: 17))
                            .foregroundColor(Color(  "D44D7A"))
                            .padding(.bottom, 8)

                        Zpq(khyxxtecygj: "⚔️", name: "Attack", value: qyakkjqxx.vvsufnrguhza, color: "FF6B8B")
                        Zpq(khyxxtecygj: "🛡️", name: "Defense", value: qyakkjqxx.twwjkvcyxy, color: "7BC8F6")
                        Zpq(khyxxtecygj: "⚡", name: "Speed", value: qyakkjqxx.speed, color: "FFD166")
                        Zpq(khyxxtecygj: "📈", name: "Production Bonus", value: "+\(Int((qyakkjqxx.pnzaxk - 1) * 100))%", color: "9BE09B")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(color: Color.pink.opacity(0.1), radius: 5, x: 0, y: 3)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(  "FFE4EC"), lineWidth: 2)
                    )
                    
                    if !qyakkjqxx.izeqmbaoh {
                        Button(action: {
                            if icnpe.eycdbp(qyakkjqxx) {
                                dismiss()
                            }
                        }) {
                            HStack {
                                Text("Unlock")
                                    .font(.custom("", size: 17))
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("💎 \(cbk)")
                                    .font(.custom("", size: 17))
                            }
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                LinearGradient(
                                    colors: [Color(  "FF6B9D"), Color(  "FF85A2")],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(12)
                            .shadow(color: Color.pink.opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                    } else if !qyakkjqxx.klykrlmiohnv {
                        Button(action: {
                            icnpe.xakbqcvgpne(qyakkjqxx)
                            dismiss()
                        }) {
                            Text("Equip")
                                .font(.custom("", size: 17))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    LinearGradient(
                                        colors: [Color(  "9BE09B"), Color(  "7BC8A6")],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(12)
                                .shadow(color: Color.green.opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                    } else {
                        Text("✓ Equipped")
                            .font(.custom("", size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(  "FFB347"))
                            .cornerRadius(12)
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    colors: [Color(  "FFE8F0"), Color(  "FFF9E6")],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .navigationTitle("Hero Details")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        dismiss()
                    }
                    .font(.custom("", size: 17))
                    .foregroundColor(Color(  "FF6B9D"))
                }
            }
        }
    }
    
    private var cbk: Int {
        switch qyakkjqxx.hbxvqkrxeryrul {
        case .cytfjsor: return 100
        case .kuc: return 500
        case .uqfarsxw: return 2000
        case .kde: return 10000
        case .wimzklvqgmgwv: return 50000
        }
    }
}
