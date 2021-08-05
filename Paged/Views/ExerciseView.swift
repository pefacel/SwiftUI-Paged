
import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    
    let index: Int
    
    
    var body: some View {
        VStack {


            HeaderView(exerciseName: exerciseNames[index]);
            
            if let url = Bundle.main.url(
             forResource: videoNames[index],
             withExtension: "mp4") {
                VideoPlayer(player: AVPlayer(url: url))
            } else {
                Text("Couldn’t find \(videoNames[index]).mp4")
                 .foregroundColor(.red)            }
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("History button")
        }
        
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
