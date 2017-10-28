struct QuestionAnswerer {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Hello there!"
        } else if lowerQuestion == "i want to get a loan" {
            return "Of course you want. Everybody does!"
        } else if lowerQuestion.hasPrefix("loan") {
            return "I will help you get the loan!"
        } else {
            let defaultNumber = question.characters.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I think so, yes"
            } else {
                return "Ask me again tomorrow"
            }
        }
    }
}
