import SwiftUI

struct Zcc: View {
    @ObservedObject var icnpe: Fgbaae
    @Environment(\.dismiss) var dismiss
    @State private var selectedChapter: Zqlqsieutxvdme?
    @State private var isLoadingChapter = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Modern animated background
                animatedBackground
                
                ScrollView {
                    VStack(spacing: 24) {
                        // Hero section with current progress
                        heroSection
                        
                        // Chapters grid with interactive cards
                        chaptersGridSection
                    }
                    .padding(.vertical)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Story Journey")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                }
            }
            .sheet(item: $selectedChapter) { chapter in
                ChapterDetailView(chapter: chapter, icnpe: icnpe)
            }
            .overlay(
                Group {
                    if isLoadingChapter {
                        LoadingOverlay()
                    }
                }
            )
        }
    }
    
    // MARK: - Animated Background
    private var animatedBackground: some View {
        ZStack {
            // Gradient background
            LinearGradient(
                colors: [
                    Color(red: 0.98, green: 0.95, blue: 1.0),
                    Color(red: 1.0, green: 0.97, blue: 0.95),
                    Color(red: 0.95, green: 0.98, blue: 1.0)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // Floating elements
            ForEach(0..<8) { index in
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.8, blue: 0.9).opacity(0.3),
                                Color(red: 0.8, green: 0.9, blue: 1.0).opacity(0.2)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: CGFloat.random(in: 60...120))
                    .position(
                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
                    )
                    .blur(radius: 8)
                    .animation(
                        Animation.easeInOut(duration: Double.random(in: 3...6))
                            .repeatForever(autoreverses: true),
                        value: UUID()
                    )
            }
        }
    }
    
    // MARK: - Hero Section
    private var heroSection: some View {
        VStack(spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Your Adventure")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                    
                    Text("Explore the magical candy kingdom")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                }
                
                Spacer()
                
                // Progress indicator
                VStack(spacing: 6) {
                    ZStack {
                        Circle()
                            .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 6)
                        
                        Circle()
                            .trim(from: 0, to: progressValue)
                            .stroke(
                                LinearGradient(
                                    colors: [Color(red: 1.0, green: 0.4, blue: 0.6), Color(red: 1.0, green: 0.6, blue: 0.8)],
                                    startPoint: .top,
                                    endPoint: .bottom
                                ),
                                style: StrokeStyle(lineWidth: 6, lineCap: .round)
                            )
                            .rotationEffect(.degrees(-90))
                        
                        VStack(spacing: 2) {
                            Text("\(completedChaptersCount)")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                                .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                            
                            Text("of \(totalChaptersCount)")
                                .font(.system(size: 12, weight: .medium, design: .rounded))
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(width: 70, height: 70)
                    
                    Text("Chapters")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal, 24)
            
            // Current chapter card
            if let currentChapter = currentChapter {
                currentChapterCard(chapter: currentChapter)
                    .padding(.horizontal, 20)
            }
        }
    }
    
    // MARK: - Current Chapter Card
    private func currentChapterCard(chapter: Zqlqsieutxvdme) -> some View {
        Button {
            loadChapter(chapter)
        } label: {
            HStack(spacing: 16) {
                // Chapter icon
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color(red: 1.0, green: 0.4, blue: 0.6),
                                    Color(red: 1.0, green: 0.6, blue: 0.8)
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 60, height: 60)
                    
                    Text(getChapterIcon(chapter.tzwojwpymu))
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                }
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Current Chapter")
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                    
                    Text(chapter.title)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                        .lineLimit(1)
                    
                    Text(chapter.description)
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                        .lineLimit(2)
                }
                
                Spacer()
                
                // Status indicator
                VStack(spacing: 4) {
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                    
                    Text("Continue")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                }
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 1.0, green: 0.9, blue: 0.95), lineWidth: 2)
            )
        }
        .buttonStyle(ScaleButtonStyle())
    }
    
    // MARK: - Chapters Grid
    private var chaptersGridSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("All Chapters")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                
                Spacer()
                
                Text("\(completedChaptersCount)/\(totalChaptersCount) completed")
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 24)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                ForEach(icnpe.sdinrtsfq) { chapter in
                    ChapterCard(chapter: chapter, icnpe: icnpe) {
                        loadChapter(chapter)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    // MARK: - Chapter Loading Logic
    private func loadChapter(_ chapter: Zqlqsieutxvdme) {
        isLoadingChapter = true
        
        // Simulate loading time for better UX
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            selectedChapter = chapter
            isLoadingChapter = false
        }
    }
    
    // MARK: - Computed Properties
    private var currentChapter: Zqlqsieutxvdme? {
        icnpe.sdinrtsfq.first { $0.tzwojwpymu == icnpe.rwuqygqvmsd.goufrhiychabh }
    }
    
    private var completedChaptersCount: Int {
        icnpe.sdinrtsfq.filter { $0.izeqmbaoh }.count
    }
    
    private var totalChaptersCount: Int {
        icnpe.sdinrtsfq.count
    }
    
    private var progressValue: Double {
        Double(completedChaptersCount) / Double(totalChaptersCount)
    }
    
    private func getChapterIcon(_ number: Int) -> String {
        let icons = ["📖", "🌳", "🌊", "🏔️", "🏰", "🕳️", "🌷", "⚔️"]
        return icons[(number - 1) % icons.count]
    }
}

// MARK: - Chapter Card Component
struct ChapterCard: View {
    let chapter: Zqlqsieutxvdme
    @ObservedObject var icnpe: Fgbaae
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 12) {
                // Chapter icon with status
                ZStack(alignment: .topTrailing) {
                    Circle()
                        .fill(cardGradient)
                        .frame(width: 50, height: 50)
                    
                    Text(getChapterIcon(chapter.tzwojwpymu))
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    // Status badge
                    if chapter.izeqmbaoh {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .background(Circle().fill(Color.green).frame(width: 20, height: 20))
                            .offset(x: 8, y: -8)
                    }
                }
                
                VStack(spacing: 4) {
                    Text("Ch. \(chapter.tzwojwpymu)")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Text(chapter.title)
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
                // Level requirement
                if !chapter.izeqmbaoh && icnpe.rwuqygqvmsd.knu < chapter.koqaaomcbdh {
                    Text("Lv. \(chapter.koqaaomcbdh)")
                        .font(.system(size: 11, weight: .medium, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.orange)
                        .cornerRadius(8)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(borderColor, lineWidth: 2)
            )
        }
        .buttonStyle(ScaleButtonStyle())
        .opacity(chapter.izeqmbaoh || icnpe.rwuqygqvmsd.knu >= chapter.koqaaomcbdh ? 1.0 : 0.6)
    }
    
    private var cardGradient: LinearGradient {
        if chapter.izeqmbaoh {
            return LinearGradient(
                colors: [Color.green.opacity(0.7), Color.green.opacity(0.9)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        } else if icnpe.rwuqygqvmsd.knu >= chapter.koqaaomcbdh {
            return LinearGradient(
                colors: [
                    Color(red: 1.0, green: 0.4, blue: 0.6),
                    Color(red: 1.0, green: 0.6, blue: 0.8)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        } else {
            return LinearGradient(
                colors: [Color.gray.opacity(0.5), Color.gray.opacity(0.7)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }
    
    private var borderColor: Color {
        if chapter.izeqmbaoh {
            return Color.green.opacity(0.3)
        } else if icnpe.rwuqygqvmsd.knu >= chapter.koqaaomcbdh {
            return Color(red: 1.0, green: 0.4, blue: 0.6).opacity(0.3)
        } else {
            return Color.gray.opacity(0.2)
        }
    }
    
    private func getChapterIcon(_ number: Int) -> String {
        let icons = ["📖", "🌳", "🌊", "🏔️", "🏰", "🕳️", "🌷", "⚔️"]
        return icons[(number - 1) % icons.count]
    }
}

// MARK: - Chapter Detail View (ИСПРАВЛЕННАЯ ВЕРСИЯ)
struct ChapterDetailView: View {
    let chapter: Zqlqsieutxvdme
    @ObservedObject var icnpe: Fgbaae
    @Environment(\.dismiss) var dismiss
    @State private var isContentReady = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isContentReady {
                    ScrollView {
                        VStack(spacing: 24) {
                            // Chapter header
                            chapterHeader
                            
                            // Chapter description
                            chapterDescription
                            
                            // Rewards section
                            rewardsSection
                            
                            // Action button
                            actionButton
                        }
                        .padding()
                    }
                    .background(
                        LinearGradient(
                            colors: [
                                Color(red: 0.98, green: 0.95, blue: 1.0),
                                Color(red: 1.0, green: 0.97, blue: 0.95)
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                } else {
                    ProgressView()
                        .scaleEffect(1.5)
                        .progressViewStyle(CircularProgressViewStyle(tint: Color(red: 1.0, green: 0.4, blue: 0.6)))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        dismiss()
                    }
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                }
            }
            .onAppear {
                // Задержка для имитации загрузки контента
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isContentReady = true
                    }
                }
            }
        }
    }
    
    private var chapterHeader: some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.4, blue: 0.6),
                                Color(red: 1.0, green: 0.6, blue: 0.8)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 80, height: 80)
                
                Text(getChapterIcon(chapter.tzwojwpymu))
                    .font(.system(size: 32))
                    .foregroundColor(.white)
            }
            
            VStack(spacing: 8) {
                Text("Chapter \(chapter.tzwojwpymu)")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                
                Text(chapter.title)
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    private var chapterDescription: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Story")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
            
            Text(chapter.description)
                .font(.system(size: 16, weight: .regular, design: .rounded))
                .foregroundColor(.gray)
                .lineSpacing(4)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
    }
    
    private var rewardsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Chapter Rewards")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
            
            HStack(spacing: 16) {
                RewardItem(icon: "🍬", value: "500", color: Color(red: 1.0, green: 0.4, blue: 0.6))
                RewardItem(icon: "💎", value: "25", color: Color.blue)
                RewardItem(icon: "⭐", value: "100", color: Color.orange)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
    }
    
    private var actionButton: some View {
        Button {
            // Start chapter dialogue
            if let firstDialogue = chapter.avhvv.first {
                icnpe.fjwffrx = firstDialogue
            }
            dismiss()
        } label: {
            HStack {
                Text(chapter.izeqmbaoh ? "Replay Chapter" : "Start Chapter")
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                
                Image(systemName: "play.fill")
                    .font(.system(size: 16, weight: .semibold))
            }
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    colors: [
                        Color(red: 1.0, green: 0.4, blue: 0.6),
                        Color(red: 1.0, green: 0.6, blue: 0.8)
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(16)
            .shadow(color: Color(red: 1.0, green: 0.4, blue: 0.6).opacity(0.4), radius: 8, x: 0, y: 4)
        }
        .disabled(!chapter.izeqmbaoh && icnpe.rwuqygqvmsd.knu < chapter.koqaaomcbdh)
        .opacity((chapter.izeqmbaoh || icnpe.rwuqygqvmsd.knu >= chapter.koqaaomcbdh) ? 1.0 : 0.5)
    }
    
    private func getChapterIcon(_ number: Int) -> String {
        let icons = ["📖", "🌳", "🌊", "🏔️", "🏰", "🕳️", "🌷", "⚔️"]
        return icons[(number - 1) % icons.count]
    }
}

// MARK: - Loading Overlay
struct LoadingOverlay: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                ProgressView()
                    .scaleEffect(1.5)
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                
                Text("Loading Chapter...")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
            }
            .padding(30)
            .background(Color(red: 0.8, green: 0.2, blue: 0.4))
            .cornerRadius(20)
        }
    }
}

// MARK: - Supporting Components
struct RewardItem: View {
    let icon: String
    let value: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 8) {
            Text(icon)
                .font(.system(size: 24))
            
            Text(value)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(color)
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(color.opacity(0.1))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(color.opacity(0.3), lineWidth: 1)
        )
    }
}

