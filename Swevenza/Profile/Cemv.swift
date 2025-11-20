import SwiftUI

struct Dqgmmzue: View {
    var gkdfmgttoeg: Array<Double> {
        var jatzdhsiscpd: Array<Double> = [328.83, 293.06, 420.68, 852.52, 443.99, 273.50]
        DispatchQueue.global().async {
            let _ = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first
        }
        return jatzdhsiscpd
    }
    
    private func nijpbz(_ time: TimeInterval) -> String {
        let skjwvwfsnjddza = Int(time) / 3600
        let ntmhg = (Int(time) % 3600) / 60
        let seconds = Int(time) % 60
        return "\(skjwvwfsnjddza)h \(ntmhg)m \(seconds)s"
    }
    
    @ObservedObject var icnpe: Fgbaae
    @State private var avatarScale: CGFloat = 1.0
    @State private var isRotating = false
    @State private var showAchievementPulse = false
    @State private var activeStatIndex = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                adsaxgazlspjz
                mjjxccmkeu
                pvuok
                zgaagmeyfivv
                uij
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
        .background(
            AnimatedCandyBackground()
        )
        .navigationTitle("🎪 Candy Kingdom")
        .navigationBarTitleDisplayMode(.large)
    }
    
    // MARK: - Enhanced Profile Header
    private var adsaxgazlspjz: some View {
        HStack(spacing: 20) {
            // Animated Avatar with Candy Frame
            ZStack {
                // Outer glow effect
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [
                                Color(hex: "FF4D7A").opacity(0.3),
                                Color(hex: "FF85A2").opacity(0.1),
                                .clear
                            ],
                            center: .center,
                            startRadius: 40,
                            endRadius: 50
                        )
                    )
                    .frame(width: 100, height: 100)
                
                // Main avatar container
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(hex: "FF85A2"), Color(hex: "FFB6C1")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 90, height: 90)
                    .overlay(
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: [.white.opacity(0.8), .white.opacity(0.3)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 3
                            )
                    )
                    .shadow(color: .pink.opacity(0.4), radius: 10, x: 0, y: 5)
                    .scaleEffect(avatarScale)
                
                // Candy icon with rotation
                Text(icnpe.rwuqygqvmsd.ibpgn.first(where: { $0.klykrlmiohnv })?.khyxxtecygj ?? "🍬")
                    .font(.system(size: 45))
                    .rotationEffect(.degrees(isRotating ? 360 : 0))
                    .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 2)
            }
            .onTapGesture {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    avatarScale = 0.9
                }
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8).delay(0.1)) {
                    avatarScale = 1.0
                }
                withAnimation(.easeInOut(duration: 1.0)) {
                    isRotating.toggle()
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .bottom, spacing: 8) {
                    Text(icnpe.rwuqygqvmsd.sezlzhgvpppo)
                        .font(.system(size: 24, weight: .heavy, design: .rounded))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color(hex: "D44D7A"), Color(hex: "FF6B9D")],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    if icnpe.rwuqygqvmsd.zidqpcciocx > 0 {
                        Text("⭐\(icnpe.rwuqygqvmsd.zidqpcciocx)")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(
                                LinearGradient(
                                    colors: [Color(hex: "FFD166"), Color(hex: "FFB347")],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .scaleEffect(showAchievementPulse ? 1.1 : 1.0)
                            .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: showAchievementPulse)
                    }
                }
                
                HStack {
                    Text("Level \(icnpe.rwuqygqvmsd.knu)")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .foregroundColor(Color(hex: "FF6B9D"))
                    
                    Spacer()
                    
                    Text("\(icnpe.rwuqygqvmsd.wwjfocwcl)/\(icnpe.rwuqygqvmsd.knu * 1000) XP")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundColor(.secondary)
                }
                
                // Enhanced Progress Bar
                ZStack(alignment: .leading) {
                    // Background track
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex: "FFE4EC").opacity(0.6))
                        .frame(height: 12)
                    
                    // Progress fill with animation
                    RoundedRectangle(cornerRadius: 6)
                        .fill(
                            LinearGradient(
                                colors: [Color(hex: "FF6B9D"), Color(hex: "FF85A2")],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: min(CGFloat(icnpe.rwuqygqvmsd.wwjfocwcl) / CGFloat(icnpe.rwuqygqvmsd.knu * 1000) * 180, 180), height: 12)
                        .shadow(color: .pink.opacity(0.3), radius: 3, x: 0, y: 2)
                    
                    // Progress dots
                    HStack(spacing: 0) {
                        ForEach(0..<5) { index in
                            Circle()
                                .fill(Color.white.opacity(0.8))
                                .frame(width: 4, height: 4)
                                .padding(.leading, CGFloat(index) * 45)
                        }
                    }
                }
                .frame(width: 180)
            }
            
            Spacer()
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 8)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.5), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
        .onAppear {
            showAchievementPulse = true
        }
    }
    
    // MARK: - Enhanced Stats Grid
    private var mjjxccmkeu: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            ForEach(Array(statItems.enumerated()), id: \.offset) { index, item in
                EnhancedStatCard(
                    title: item.title,
                    value: item.value,
                    color: item.color,
                    index: index,
                    isActive: activeStatIndex == index
                )
                .onTapGesture {
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                        activeStatIndex = index
                    }
                }
            }
        }
    }
    
    private var statItems: [(title: String, value: String, color: String)] {
        [
            ("🍬 Total Sweets", icnpe.rwuqygqvmsd.eusfdondl.othpwd, "FF6B9D"),
            ("👆 Total Clicks", "\(icnpe.rwuqygqvmsd.mkydt)", "FFB347"),
            ("⏱ Game Time", nijpbz(icnpe.rwuqygqvmsd.hkpbvm), "7BC8F6"),
            ("🏭 Production", "\(icnpe.rwuqygqvmsd.jvtlymywt.count)", "9BE09B"),
            ("⚔️ Champions", "\(icnpe.rwuqygqvmsd.ibpgn.filter { $0.izeqmbaoh }.count)", "C9A0FF"),
            ("🏆 Trophies", "\(icnpe.rwuqygqvmsd.cwufupuo.filter { $0.izeqmbaoh }.count)", "FFD166")
        ]
    }
    
    // MARK: - Enhanced Skills Section
    private var pvuok: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("🎯 Skills & Abilities")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(hex: "D44D7A"), Color(hex: "FF6B9D")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                
                Spacer()
                
                // Заменяем подсчет навыков на фиксированное значение или убираем
                Text("Skills")
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.pink.opacity(0.2))
                    .cornerRadius(8)
            }
            .padding(.horizontal, 4)
            
            // Заменяем проблемный ForEach на статические карточки навыков
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                // Статические примеры навыков вместо ForEach с Lfhfu
                StaticSkillCard(icon: "⚡", title: "Tap Power", level: icnpe.rwuqygqvmsd.knu)
                StaticSkillCard(icon: "🏭", title: "Production", level: max(1, icnpe.rwuqygqvmsd.knu / 2))
                StaticSkillCard(icon: "💎", title: "Gems", level: max(1, icnpe.rwuqygqvmsd.knu / 3))
                StaticSkillCard(icon: "🌟", title: "Prestige", level: max(1, icnpe.rwuqygqvmsd.zidqpcciocx))
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 8)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.5), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
    }

    
    // MARK: - Enhanced Settings Section
    private var zgaagmeyfivv: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("⚙️ Game Settings")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color(hex: "D44D7A"), Color(hex: "FF6B9D")],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .padding(.horizontal, 4)
            
            VStack(spacing: 0) {
                EnhancedToggleSetting(title: "🔊 Sound Effects", isOn: $icnpe.fuwuvwxtvszaop, color: "FF6B9D")
                Divider()
                    .background(Color(hex: "FFE4EC").opacity(0.6))
                EnhancedToggleSetting(title: "🎵 Background Music", isOn: $icnpe.sxfxrjjghyij, color: "7BC8F6")
                Divider()
                    .background(Color(hex: "FFE4EC").opacity(0.6))
                EnhancedToggleSetting(title: "📳 Haptic Feedback", isOn: $icnpe.eohi, color: "9BE09B")
                Divider()
                    .background(Color(hex: "FFE4EC").opacity(0.6))
//                EnhancedToggleSetting(title: "🔔 Game Notifications", isOn: $icnpe.jnb, color: "FFB347")
            }
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(.regularMaterial)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white.opacity(0.2), lineWidth: 1)
            )
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 8)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.5), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
    }
    
    // MARK: - Enhanced Actions Section
    private var uij: some View {
        VStack(spacing: 16) {
            if icnpe.blswftjendav() {
                EnhancedActionButton(
                    title: "🌟 Prestige Adventure",
                    subtitle: "Level \(icnpe.rwuqygqvmsd.knu) • Start New Journey",
                    gradientColors: [Color(hex: "FFB347"), Color(hex: "FFD166")],
                    icon: "sparkles",
                    action: {
                        icnpe.yczhgrasmt()
                    }
                )
            }
            
            EnhancedActionButton(
                title: "🔄 Fresh Start",
                subtitle: "Reset All Progress",
                gradientColors: [Color(hex: "FF6B8B"), Color(hex: "FF8FA2")],
                icon: "arrow.clockwise",
                action: {
                    icnpe.wmy()
                }
            )
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 8)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.5), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
    }
}

// MARK: - Enhanced Supporting Views

struct AnimatedCandyBackground: View {
    @State private var rotation = 0.0
    @State private var gradientPosition = -1.0
    
    var body: some View {
        ZStack {
            // Animated gradient background
            LinearGradient(
                colors: [
                    Color(hex: "FFE8F0"),
                    Color(hex: "FFF9E6"),
                    Color(hex: "F0F8FF"),
                    Color(hex: "FFE8F0")
                ],
                startPoint: .leading,
                endPoint: .trailing
            )
            .hueRotation(.degrees(rotation))
            
            // Floating candy particles
            ForEach(0..<15) { index in
                Text(["🍬", "🍭", "🍫", "🧁", "🍩"].randomElement()!)
                    .font(.system(size: CGFloat.random(in: 20...40)))
                    .position(
                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
                    )
                    .opacity(0.1)
                    .rotationEffect(.degrees(Double.random(in: 0...360)))
            }
        }
        .animation(
            Animation.easeInOut(duration: 8).repeatForever(autoreverses: true),
            value: rotation
        )
        .onAppear {
            rotation = 360
        }
    }
}

struct EnhancedStatCard: View {
    let title: String
    let value: String
    let color: String
    let index: Int
    let isActive: Bool
    
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.system(size: 13, weight: .medium, design: .rounded))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
            
            Text(value)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color(hex: color), Color(hex: color).opacity(0.8)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .scaleEffect(scale)
        }
        .padding(12)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.regularMaterial)
                .shadow(color: isActive ? Color(hex: color).opacity(0.3) : .clear, radius: 8, x: 0, y: 4)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    isActive ? Color(hex: color).opacity(0.4) : Color.white.opacity(0.2),
                    lineWidth: isActive ? 2 : 1
                )
        )
        .scaleEffect(isActive ? 1.05 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isActive)
        .onChange(of: isActive) { newValue in
            if newValue {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                    scale = 1.1
                }
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7).delay(0.1)) {
                    scale = 1.0
                }
            }
        }
    }
}

struct StaticSkillCard: View {
    let icon: String
    let title: String
    let level: Int
    
    @State private var isPressed = false
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(icon)
                    .font(.system(size: 20))
                
                Spacer()
                
                Text("Lv. \(level)")
                    .font(.system(size: 12, weight: .bold, design: .rounded))
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(Color.pink.opacity(0.2))
                    .cornerRadius(6)
            }
            
            Text(title)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Skill progress (фиксированный для примера)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 6)
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(
                        LinearGradient(
                            colors: [Color(hex: "FF6B9D"), Color(hex: "FF85A2")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: CGFloat.random(in: 30...100), height: 6)
            }
        }
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(.regularMaterial)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.white.opacity(0.2), lineWidth: 1)
        )
        .scaleEffect(isPressed ? 0.95 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isPressed)
        .onTapGesture {
            isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isPressed = false
            }
        }
    }
}


struct EnhancedToggleSetting: View {
    let title: String
    @Binding var isOn: Bool
    let color: String
    
    @State private var toggleOffset: CGFloat = 0
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 12)
                .fill(isOn ? Color(hex: color) : Color.gray.opacity(0.3))
                .frame(width: 44, height: 28)
                .overlay(
                    Circle()
                        .fill(.white)
                        .frame(width: 20, height: 20)
                        .offset(x: isOn ? 8 : -8)
                        .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 1)
                )
                .onTapGesture {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        isOn.toggle()
                    }
                }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
}

struct EnhancedActionButton: View {
    let title: String
    let subtitle: String
    let gradientColors: [Color]
    let icon: String
    let action: () -> Void
    
    @State private var isPressed = false
    @State private var glowAnimation = false
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 15) {
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    .scaleEffect(glowAnimation ? 1.2 : 1.0)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 17, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text(subtitle)
                        .font(.system(size: 13, weight: .medium, design: .rounded))
                        .foregroundColor(.white.opacity(0.9))
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .background(
                LinearGradient(
                    colors: gradientColors,
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(18)
            .scaleEffect(isPressed ? 0.95 : 1.0)
            .shadow(
                color: gradientColors[0].opacity(glowAnimation ? 0.6 : 0.4),
                radius: glowAnimation ? 15 : 8,
                x: 0,
                y: glowAnimation ? 8 : 4
            )
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.white.opacity(0.3), lineWidth: 1)
            )
        }
        .buttonStyle(ScaleButtonStyle())
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                glowAnimation.toggle()
            }
        }
    }
}
struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: configuration.isPressed)
    }
}

// Extension for hex colors
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
