import Foundation
import SwiftData

@Model
final class BlockReview {
    var block: TrainingBlock?
    var improvedNotes: String?
    var regressedNotes: String?
    var painNotes: String?
    var bestExercises: String?
    var worstExercises: String?
    var generalNotes: String?

    init(block: TrainingBlock? = nil,
         improvedNotes: String? = nil,
         regressedNotes: String? = nil,
         painNotes: String? = nil,
         bestExercises: String? = nil,
         worstExercises: String? = nil,
         generalNotes: String? = nil) {
        self.block = block
        self.improvedNotes = improvedNotes
        self.regressedNotes = regressedNotes
        self.painNotes = painNotes
        self.bestExercises = bestExercises
        self.worstExercises = worstExercises
        self.generalNotes = generalNotes
    }
}
