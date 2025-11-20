import SwiftUI

struct Fapgsmqdmt: View {
    
    private func xkdf(_ qyakkjqxx: Hzhyvmwslecl) -> some View {
    

    return 
        VStack(spacing: 16) {
            Text("Current Swen")
                .font(.custom("ShootingStarpersonaluse", size: 17))
                .foregroundColor(Color( "FF6B9D"))
            
            HStack(spacing: 20) {
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [qyakkjqxx.hbxvqkrxeryrul.color, qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.6)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 100, height: 100)
                        .background(
                            Circle()
                                .stroke(qyakkjqxx.hbxvqkrxeryrul.color, lineWidth: 3)
                        )
                    
                    Text(qyakkjqxx.khyxxtecygj)
                        .font(.system(size: 60))
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 2)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(qyakkjqxx.name)
                        .font(.custom("ShootingStarpersonaluse", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color( "D44D7A"))
                    
                    Text(qyakkjqxx.hbxvqkrxeryrul.rawValue)
                        .font(.custom("ShootingStarpersonaluse", size: 15))
                        .foregroundColor(qyakkjqxx.hbxvqkrxeryrul.color)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(qyakkjqxx.hbxvqkrxeryrul.color.opacity(0.2))
                        .cornerRadius(8)
                    
                    HStack {
                        Zrnjqs(khyxxtecygj: "⚔️", value: qyakkjqxx.vvsufnrguhza, color: "FF6B8B")
                        Zrnjqs(khyxxtecygj: "🛡️", value: qyakkjqxx.twwjkvcyxy, color: "7BC8F6")
                        Zrnjqs(khyxxtecygj: "⚡", value: qyakkjqxx.speed, color: "FFD166")
                    }
                    
                    Text("Bonus: +\(Int((qyakkjqxx.pnzaxk - 1) * 100))% production")
                        .font(.custom("ShootingStarpersonaluse", size: 12))
                        .foregroundColor(Color( "9BE09B"))
                }
                
                Spacer()
            }
            .padding()
        }
        .background(
            LinearGradient(
                colors: [Color.white, Color( "FFF0F5")],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.1), radius: 10, x: 0, y: 5)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color( "FFE4EC"), lineWidth: 2)
        )
        .padding(.horizontal)
    }
    @ObservedObject var icnpe: Fgbaae
    @State private var cmyxpvpwh: Hzhyvmwslecl?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(spacing: 8) {
                    Text("⚔️ Heroes")
                        .font(.custom("ShootingStarpersonaluse", size: 34))
                        .fontWeight(.bold)
                        .foregroundColor(Color( "D44D7A"))
                    
                    Text("Collect and upgrade heroes")
                        .font(.custom("ShootingStarpersonaluse", size: 15))
                        .foregroundColor(Color( "FF6B9D"))
                }
                .padding(.top)
                
                if let equippedHero = icnpe.ibpgn.first(where: { $0.klykrlmiohnv }) {
                    xkdf(equippedHero)
                }
                
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 16) {
                    ForEach(icnpe.ibpgn) { qyakkjqxx in
                        Xohxwr(qyakkjqxx: qyakkjqxx, mzutqgkefy: qyakkjqxx.klykrlmiohnv) {
                            cmyxpvpwh = qyakkjqxx
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.bottom, 20)
        }
        .background(
            LinearGradient(
                colors: [Color( "FFE8F0"), Color( "FFF9E6")],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .sheet(item: $cmyxpvpwh) { qyakkjqxx in
            Fratjcaogex(qyakkjqxx: qyakkjqxx, icnpe: icnpe)
        }
    }
}


#Preview {
    Fapgsmqdmt(icnpe: Fgbaae())
}
