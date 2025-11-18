class RandomProduct {
    let productId: String
    let name: String
    let category: String
    let price: Double
    let quantity: Int
    let inStock: Bool
    let rating: Double
    let tags: [String]
    
    init() {
        self.productId = "PRD\(Int.random(in: 10000...99999))"
        self.name = RandomProduct.generateProductName()
        self.category = RandomProduct.categories.randomElement()!
        self.price = Double.random(in: 10...1000)
        self.quantity = Int.random(in: 0...500)
        self.inStock = quantity > 0
        self.rating = Double.random(in: 1...5)
        self.tags = RandomProduct.generateRandomTags()
    }
    
    private static let categories = ["Electronics", "Clothing", "Books", "Home", "Sports", "Beauty"]
    
    private static func generateProductName() -> String {
        let adjectives = ["Smart", "Wireless", "Premium", "Eco-Friendly", "Professional", "Compact"]
        let nouns = ["Phone", "Laptop", "Headphones", "Watch", "Camera", "Speaker", "Tablet"]
        return "\(adjectives.randomElement()!) \(nouns.randomElement()!)"
    }
    
    private static func generateRandomTags() -> [String] {
        let allTags = ["new", "sale", "popular", "featured", "limited", "bestseller", "trending"]
        let count = Int.random(in: 1...3)
        return Array(allTags.shuffled().prefix(count))
    }
    
    var description: String {
        return "\(productId): \(name) - $\(price) (\(category)), Rating: \(rating)/5"
    }
}
