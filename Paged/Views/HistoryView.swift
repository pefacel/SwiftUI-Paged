

import SwiftUI

extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("MMM d")
            return dateFormatter.string(from: self)
        }
}

struct HistoryView: View {
    let today = Date().formatDate()
    let yesterday = Date().addingTimeInterval(-86400)
    
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    
    
    
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {            Button(action: {}) {
             Image(systemName: "xmark.circle")
            
           } .font(.title)
        .padding(.trailing)
            
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                
                

                Form {
                  Section(
                    header:
                        Text(today)
                      .font(.headline))
                  {
                    ForEach(exercises1, id: \.self) { exercise in
                     Text(exercise)
                   }            }
                    Section(
                    header:
                    Text(yesterday.formatDate())
                      .font(.headline)) {
                        ForEach(exercises2, id: \.self) { exercise in
                         Text(exercise)
                       }            } }
                
                
            }
            
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView().previewLayout(.sizeThatFits)
    }
}
