import SwiftUI
import SpriteKit

struct Nvqxrcd: View {
    let ukvyotvzdkmuig: Wxzhnwsxvlb.Klaxsggcd
    @ObservedObject var icnpe: Fgbaae
    @Environment(\.dismiss) var dismiss
    
    @State private var mtcwslzwhxt = 0
    @State private var vrkmi = true
    @State private var showRewardAnimation = false
    @State private var confettiCounter = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Animated gradient background
                AnimatedBackground()
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Enhanced header with animations
                    headerSection
                        .padding(.top, 8)
                    
                    // Game area with proper spacing
                    gameSection
                        .frame(maxHeight: .infinity)
                        .padding(.vertical, 16)
                    
                    // Instructions at bottom
                    instructionsSection
                        .padding(.bottom, 16)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        if #available(iOS 17.0, *) {
                            Image(systemName: "chevron.left.circle.fill")
                                .font(.title2)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                                 Color(red: 0.8, green: 0.2, blue: 0.4)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .symbolEffect(.bounce, options: .speed(0.5), value: confettiCounter)
                        } else {
                            Image(systemName: "chevron.left.circle.fill")
                                .font(.title2)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                                 Color(red: 0.8, green: 0.2, blue: 0.4)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                        }
                    }
                }
            }
            .overlay {
                if showRewardAnimation {
                    RewardAnimationView(isShowing: $showRewardAnimation, score: mtcwslzwhxt)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    // MARK: - Header Section
    private var headerSection: some View {
        VStack(spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text(ekazoge)
                        .font(.system(size: 24, weight: .heavy, design: .rounded))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color(red: 0.8, green: 0.2, blue: 0.4),
                                        Color(red: 1.0, green: 0.4, blue: 0.6)],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    Text(kyjybrq)
                        .font(.system(size: 15, weight: .medium, design: .rounded))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // Animated score display
                ScoreDisplayView(score: mtcwslzwhxt, isActive: vrkmi)
            }
            .padding(.horizontal, 20)
            
            // Animated progress indicator
            if vrkmi {
                LoadingAnimationView()
            }
        }
        .padding(.bottom, 8)
    }
    
    // MARK: - Game Section
    private var gameSection: some View {
        VStack(spacing: 0) {
            switch ukvyotvzdkmuig {
            case .wzgjhjhxrbm:
                matchThreeGame
            case .pwqurwwvrx:
                candyRainGame
            case .gldnbslxbd:
                wheelOfFortune
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 10)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.3), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
        .padding(.horizontal, 16)
    }
    
    // MARK: - Individual Games
    private var matchThreeGame: some View {
        VStack(spacing: 0) {
            GameTitleView(title: "Candy Match", icon: "🎯")
                .padding(.top, 20)
            
            SpriteView(scene: {
                let scene = Dcgrfzfkutp()
                scene.size = CGSize(width: UIScreen.main.bounds.width - 60, height: 420)
                scene.scaleMode = .aspectFit
                scene.bjeonn = { toa in
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        mtcwslzwhxt = toa
                    }
                }
                scene.mrnrpqat = { finalScore in
                    vrkmi = false
                    triggerRewardAnimation()
                    ejudvcf(lulvjyxph: finalScore)
                }
                return scene
            }())
            .frame(height: 420)
            .cornerRadius(20)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
    
    private var candyRainGame: some View {
        VStack(spacing: 0) {
            GameTitleView(title: "Candy Rain", icon: "🌧️")
                .padding(.top, 20)
            
            SpriteView(scene: {
                let scene = Xscq()
                scene.size = CGSize(width: UIScreen.main.bounds.width - 60, height: 420)
                scene.scaleMode = .aspectFit
                scene.bjeonn = { toa in
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        mtcwslzwhxt = toa
                    }
                }
                scene.mrnrpqat = { finalScore in
                    vrkmi = false
                    triggerRewardAnimation()
                    ejudvcf(lulvjyxph: finalScore)
                }
                return scene
            }())
            .frame(height: 420)
            .cornerRadius(20)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
    
    private var wheelOfFortune: some View {
        VStack(spacing: 0) {
            GameTitleView(title: "Wheel of Fortune", icon: "🎡")
                .padding(.top, 20)
            
            EnhancedWheelOfFortune(icnpe: icnpe) { prize in
                vrkmi = false
                triggerRewardAnimation()
                offefn(prize)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
    
    // MARK: - Instructions Section
    private var instructionsSection: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "info.circle.fill")
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                    Color(red: 0.8, green: 0.2, blue: 0.4)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .font(.system(size: 18))
                
                Text("How to Play")
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                    .foregroundColor(.primary)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 12) {
                switch ukvyotvzdkmuig {
                case .wzgjhjhxrbm:
                    EnhancedInstructionRow(icon: "🎯", text: "Match 3 or more identical candies", color: .red)
                    EnhancedInstructionRow(icon: "⚡", text: "Complete before time runs out", color: .orange)
                    EnhancedInstructionRow(icon: "🏆", text: "Higher combos = more points", color: .purple)
                    
                case .pwqurwwvrx:
                    EnhancedInstructionRow(icon: "🎯", text: "Catch candies in your basket", color: .green)
                    EnhancedInstructionRow(icon: "💣", text: "Avoid bombs - they reduce points", color: .red)
                    EnhancedInstructionRow(icon: "⭐", text: "Special items give bonus points", color: .yellow)
                    
                case .gldnbslxbd:
                    EnhancedInstructionRow(icon: "🎯", text: "Spin the wheel for amazing prizes", color: .blue)
                    EnhancedInstructionRow(icon: "💎", text: "Costs 10 gems per spin", color: .cyan)
                    EnhancedInstructionRow(icon: "🎁", text: "Win candies, gems, and experience", color: .pink)
                }
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.regularMaterial)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.2), lineWidth: 1)
        )
        .padding(.horizontal, 20)
    }
    
    // MARK: - Helper Methods
    private func triggerRewardAnimation() {
        withAnimation(.spring()) {
            showRewardAnimation = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation(.easeOut(duration: 0.3)) {
                showRewardAnimation = false
            }
        }
    }
    
    // MARK: - Game Titles & Descriptions
    private var ekazoge: String {
        switch ukvyotvzdkmuig {
        case .wzgjhjhxrbm: return "Candy Match"
        case .pwqurwwvrx: return "Candy Rain"
        case .gldnbslxbd: return "Wheel of Fortune"
        }
    }

    private var kyjybrq: String {
        switch ukvyotvzdkmuig {
        case .wzgjhjhxrbm: return "Match candies and create combos"
        case .pwqurwwvrx: return "Catch falling sweets"
        case .gldnbslxbd: return "Spin to win amazing prizes"
        }
    }
    
    // MARK: - Reward Methods
    private func ejudvcf(lulvjyxph: Int) {
        let xqmrjlasmoh = lulvjyxph * 10
        let ewcxluf = max(1, lulvjyxph / 50)
        let wwjfocwcl = lulvjyxph / 2
        
        icnpe.rwuqygqvmsd.xqmrjlasmoh += xqmrjlasmoh
        icnpe.rwuqygqvmsd.ewcxluf += ewcxluf
        icnpe.rwuqygqvmsd.nevzaptgio(wwjfocwcl)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            icnpe.gpgxqlgqo = Juqbjvq(
                title: "Game Completed!",
                xqmrjlasmoh: xqmrjlasmoh,
                ewcxluf: ewcxluf,
                wwjfocwcl: wwjfocwcl
            )
        }
    }
    
    private func offefn(_ prize: Hdhuq) {
        icnpe.rwuqygqvmsd.xqmrjlasmoh += prize.xqmrjlasmoh
        icnpe.rwuqygqvmsd.ewcxluf += prize.ewcxluf
        icnpe.rwuqygqvmsd.nevzaptgio(prize.wwjfocwcl)
        
        icnpe.gpgxqlgqo = Juqbjvq(
            title: prize.title,
            xqmrjlasmoh: prize.xqmrjlasmoh,
            ewcxluf: prize.ewcxluf,
            wwjfocwcl: prize.wwjfocwcl
        )
    }
}

// MARK: - Enhanced Supporting Views

struct AnimatedBackground: View {
    @State private var gradientRotation = 0.0
    
    var body: some View {
        LinearGradient(
            colors: [
                Color(red: 0.98, green: 0.95, blue: 1.0),
                Color(red: 1.0, green: 0.97, blue: 0.95),
                Color(red: 0.95, green: 0.98, blue: 1.0),
                Color(red: 0.97, green: 0.96, blue: 1.0)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .hueRotation(.degrees(gradientRotation))
        .animation(
            Animation.easeInOut(duration: 8).repeatForever(autoreverses: true),
            value: gradientRotation
        )
        .onAppear {
            gradientRotation = 360
        }
    }
}

struct ScoreDisplayView: View {
    let score: Int
    let isActive: Bool
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 6) {
            Text("SCORE")
                .font(.system(size: 11, weight: .bold, design: .rounded))
                .foregroundColor(.secondary)
                .tracking(1.0)
            
            HStack(spacing: 8) {
                if isActive {
                    if #available(iOS 17.0, *) {
                        Image(systemName: "star.circle.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 16))
                            .symbolEffect(.pulse, options: .speed(2))
                    } else {
                        Image(systemName: "star.circle.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 16))
                    }
                }
                
                Text("\(score)")
                    .font(.system(size: 26, weight: .black, design: .rounded))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                    Color(red: 1.0, green: 0.6, blue: 0.8)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .contentTransition(.numericText())
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white.opacity(0.3), lineWidth: 1)
        )
    }
}

struct LoadingAnimationView: View {
    @State private var rotation = 0.0
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(0..<3) { index in
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                    Color(red: 0.8, green: 0.2, blue: 0.4)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 8, height: 8)
                    .offset(y: CGFloat(index) * -5)
                    .animation(
                        Animation.easeInOut(duration: 0.6)
                            .repeatForever(autoreverses: true)
                            .delay(Double(index) * 0.2),
                        value: rotation
                    )
            }
        }
        .onAppear {
            rotation = 360
        }
    }
}

struct GameTitleView: View {
    let title: String
    let icon: String
    
    var body: some View {
        HStack(spacing: 12) {
            Text(icon)
                .font(.system(size: 24))
                .scaleEffect(1.2)
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color(red: 0.8, green: 0.2, blue: 0.4),
                                Color(red: 1.0, green: 0.4, blue: 0.6)],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
        }
    }
}

struct EnhancedInstructionRow: View {
    let icon: String
    let text: String
    let color: Color
    
    @State private var bounce = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Text(icon)
                .font(.system(size: 20))
                .scaleEffect(bounce ? 1.2 : 1.0)
                .animation(
                    .spring(response: 0.5, dampingFraction: 0.6)
                    .delay(Double.random(in: 0...1)),
                    value: bounce
                )
            
            Text(text)
                .font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
        }
        .padding(.vertical, 4)
        .onAppear {
            bounce = true
        }
    }
}

// MARK: - Enhanced Wheel of Fortune
struct EnhancedWheelOfFortune: View {
    @ObservedObject var icnpe: Fgbaae
    let jap: (Hdhuq) -> Void
    
    @State private var ozknvgkwj = 0.0
    @State private var aoefiaum = false
    @State private var krcyxeam = false
    @State private var nmrzoihkrvn: Hdhuq?
    @State private var wheelScale: CGFloat = 1.0
    @State private var showSparkles = false
    
    let sjxwupipiujrw = [
        Hdhuq(title: "Mini Reward", xqmrjlasmoh: 100, ewcxluf: 1, wwjfocwcl: 10),
        Hdhuq(title: "Standard Reward", xqmrjlasmoh: 500, ewcxluf: 5, wwjfocwcl: 50),
        Hdhuq(title: "Major Reward", xqmrjlasmoh: 1000, ewcxluf: 10, wwjfocwcl: 100),
        Hdhuq(title: "Mega Jackpot", xqmrjlasmoh: 5000, ewcxluf: 25, wwjfocwcl: 500),
        Hdhuq(title: "Participation Gift", xqmrjlasmoh: 50, ewcxluf: 0, wwjfocwcl: 5),
        Hdhuq(title: "Bonus Reward", xqmrjlasmoh: 250, ewcxluf: 3, wwjfocwcl: 25),
        Hdhuq(title: "Lucky Reward", xqmrjlasmoh: 750, ewcxluf: 8, wwjfocwcl: 75),
        Hdhuq(title: "Ultimate Prize", xqmrjlasmoh: 2000, ewcxluf: 15, wwjfocwcl: 200)
    ]
    
    var body: some View {
        VStack(spacing: 30) {
            // Enhanced wheel design with animations
            ZStack {
                // Outer glow
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [
                                Color(red: 1.0, green: 0.4, blue: 0.6).opacity(0.3),
                                Color(red: 1.0, green: 0.6, blue: 0.8).opacity(0.1),
                                .clear
                            ],
                            center: .center,
                            startRadius: 110,
                            endRadius: 140
                        )
                    )
                    .frame(width: 280, height: 280)
                    .scaleEffect(showSparkles ? 1.1 : 1.0)
                    .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: showSparkles)
                
                // Main wheel
                Circle()
                    .fill(
                        AngularGradient(
                            colors: [
                                Color(red: 1.0, green: 0.4, blue: 0.6),
                                Color(red: 1.0, green: 0.6, blue: 0.8),
                                Color(red: 1.0, green: 0.8, blue: 0.4),
                                Color(red: 0.6, green: 0.8, blue: 0.6),
                                Color(red: 0.4, green: 0.7, blue: 1.0),
                                Color(red: 0.8, green: 0.7, blue: 1.0),
                                Color(red: 1.0, green: 0.7, blue: 0.3),
                                Color(red: 1.0, green: 0.4, blue: 0.6)
                            ],
                            center: .center
                        )
                    )
                    .frame(width: 240, height: 240)
                    .overlay(
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: [.white, .white.opacity(0.5)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 8
                            )
                    )
                    .shadow(color: .black.opacity(0.4), radius: 20, x: 0, y: 10)
                    .scaleEffect(wheelScale)
                    .rotationEffect(.degrees(ozknvgkwj))
                
                // Wheel segments and symbols
                ForEach(0..<8) { index in
                    Text(aspqvpguhlrnq(for: index))
                        .font(.system(size: 28, weight: .bold))
                        .rotationEffect(.degrees(Double(index) * 45))
                        .offset(y: -90)
                        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 2)
                }
                
                // Center circle
                Circle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                            Color(red: 0.8, green: 0.2, blue: 0.4)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 3
                            )
                    )
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
                
                // Enhanced pointer
                EnhancedPointerShape()
                    .fill(
                        LinearGradient(
                            colors: [Color(red: 0.8, green: 0.2, blue: 0.4),
                                    Color(red: 1.0, green: 0.4, blue: 0.6)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 25, height: 40)
                    .offset(y: -140)
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 3)
                    .rotationEffect(.degrees(-5))
            }
            
            // Enhanced spin button with better feedback
            EnhancedSpinButton(
                isSpinning: aoefiaum,
                canSpin: icnpe.rwuqygqvmsd.ewcxluf >= 10,
                gemCount: icnpe.rwuqygqvmsd.ewcxluf
            ) {
                qui()
            }
        }
        .padding(.horizontal, 20)
        .alert("🎉 Congratulations!", isPresented: $krcyxeam) {
            Button("Claim Reward", role: .none) {
                if let prize = nmrzoihkrvn {
                    jap(prize)
                }
            }
        } message: {
            if let prize = nmrzoihkrvn {
                EnhancedPrizeView(prize: prize)
            }
        }
        .onAppear {
            showSparkles = true
        }
    }
    
    private func qui() {
        guard !aoefiaum && icnpe.rwuqygqvmsd.ewcxluf >= 10 else { return }
        
        icnpe.rwuqygqvmsd.ewcxluf -= 10
        aoefiaum = true
        
        // Button press animation
        withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
            wheelScale = 0.95
        }
        
        let spins = 5 + Int.random(in: 2...4) // More random spins
        let randomOffset = Double.random(in: 0...360)
        let totalRotation = Double(spins) * 360 + randomOffset
        
        // Wheel spin animation with easing
        withAnimation(.timingCurve(0.2, 0.8, 0.2, 1.0, duration: 4.0)) {
            ozknvgkwj = totalRotation
        }
        
        // Haptic feedback
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                wheelScale = 1.0
            }
            
            aoefiaum = false
            let prizeIndex = Int(randomOffset / 45) % sjxwupipiujrw.count
            nmrzoihkrvn = sjxwupipiujrw[prizeIndex]
            
            // Success haptic
            let successGenerator = UINotificationFeedbackGenerator()
            successGenerator.notificationOccurred(.success)
            
            krcyxeam = true
        }
    }
    
    private func aspqvpguhlrnq(for index: Int) -> String {
        let symbols = ["🍭", "🍫", "🍬", "🧁", "🍩", "⭐", "💎", "🎁"]
        return symbols[index % symbols.count]
    }
}

struct EnhancedPointerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX + rect.width * 0.3, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX - rect.width * 0.3, y: rect.maxY),
            control: CGPoint(x: rect.midX, y: rect.maxY + rect.height * 0.2)
        )
        path.closeSubpath()
        return path
    }
}

struct EnhancedSpinButton: View {
    let isSpinning: Bool
    let canSpin: Bool
    let gemCount: Int
    let action: () -> Void
    
    @State private var buttonScale: CGFloat = 1.0
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 15) {
                if isSpinning {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(0.9)
                } else {
                    if #available(iOS 17.0, *) {
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .font(.system(size: 20, weight: .semibold))
                            .symbolEffect(.bounce, value: isSpinning)
                    } else {
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .font(.system(size: 20, weight: .semibold))
                    }
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(isSpinning ? "Spinning..." : "Spin the Wheel")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                    
                    if !isSpinning {
                        Text("\(gemCount)/10 gems available")
                            .font(.system(size: 12, weight: .medium, design: .rounded))
                            .opacity(0.9)
                    }
                }
                
                Spacer()
                
                if !isSpinning {
                    HStack(spacing: 6) {
                        Image(systemName: "diamond.fill")
                            .font(.system(size: 14))
                            .foregroundColor(.cyan)
                        
                        Text("10")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity)
            .background(
                Group {
                    if isSpinning {
                        LinearGradient(colors: [.gray, .gray.opacity(0.7)],
                                     startPoint: .leading, endPoint: .trailing)
                    } else if canSpin {
                        LinearGradient(
                            colors: [Color(red: 1.0, green: 0.4, blue: 0.6),
                                   Color(red: 1.0, green: 0.6, blue: 0.8)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    } else {
                        LinearGradient(colors: [.gray.opacity(0.5), .gray.opacity(0.3)],
                                     startPoint: .leading, endPoint: .trailing)
                    }
                }
            )
            .cornerRadius(20)
            .scaleEffect(buttonScale)
            .shadow(
                color: canSpin ? Color(red: 1.0, green: 0.4, blue: 0.6).opacity(0.5) : .clear,
                radius: canSpin ? 12 : 0, x: 0, y: 6
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white.opacity(0.3), lineWidth: 2)
            )
        }
        .disabled(isSpinning || !canSpin)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    if canSpin && !isSpinning {
                        withAnimation(.spring(response: 0.2, dampingFraction: 0.6)) {
                            buttonScale = 0.95
                        }
                    }
                }
                .onEnded { _ in
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                        buttonScale = 1.0
                    }
                }
        )
    }
}

struct EnhancedPrizeView: View {
    let prize: Hdhuq
    
    var body: some View {
        VStack(spacing: 16) {
            Text(prize.title)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            
            VStack(spacing: 12) {
                if prize.xqmrjlasmoh > 0 {
                    rewardRow("🍬", "\(prize.xqmrjlasmoh) candies", color: .pink)
                }
                if prize.ewcxluf > 0 {
                    rewardRow("💎", "\(prize.ewcxluf) gems", color: .cyan)
                }
                if prize.wwjfocwcl > 0 {
                    rewardRow("⭐", "\(prize.wwjfocwcl) experience", color: .yellow)
                }
            }
        }
        .padding(.vertical, 8)
    }
    
    private func rewardRow(_ icon: String, _ text: String, color: Color) -> some View {
        HStack(spacing: 15) {
            Text(icon)
                .font(.system(size: 20))
            
            Text(text)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(color.opacity(0.1))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(color.opacity(0.3), lineWidth: 1)
        )
    }
}

struct RewardAnimationView: View {
    @Binding var isShowing: Bool
    let score: Int
    
    var body: some View {
        ZStack {
            // Background overlay
            Color.black.opacity(0.4)
                .ignoresSafeArea()
            
            // Animated reward card
            VStack(spacing: 20) {
                if #available(iOS 17.0, *) {
                    Image(systemName: "trophy.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.yellow, .orange],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .symbolEffect(.bounce, options: .speed(0.5))
                } else {
                    Image(systemName: "trophy.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.yellow, .orange],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
                
                Text("Game Completed!")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                Text("Score: \(score)")
                    .font(.system(size: 42, weight: .black, design: .rounded))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.yellow, .orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                
                Text("Great job! Rewards have been added to your account.")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
            }
            .padding(30)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
            )
            .padding(40)
            .scaleEffect(isShowing ? 1.0 : 0.5)
            .opacity(isShowing ? 1.0 : 0.0)
            .animation(.spring(response: 0.6, dampingFraction: 0.8), value: isShowing)
        }
    }
}

struct Hdhuq {
    let title: String
    let xqmrjlasmoh: Int
    let ewcxluf: Int
    let wwjfocwcl: Int
}
