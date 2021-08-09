

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: "Welcome")
                Spacer()

                VStack {
                  HStack {
                    VStack(alignment: .leading) {
                      Text("Get fit")
                        .font(.largeTitle)
                      Text("with high intensity interval training")
                        .font(.headline)
                    }
                    Image("running")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140.0, height: 140.0)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                } }
                Spacer()
                Button(action: { }) {
                  Text("Get Started")
                  Image(systemName: "arrow.right.circle")
                    
                }
                .font(.title2)
                .padding()
                .background(
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(Color.gray, lineWidth: 2))
                Button("History") {}
                    .padding(.bottom)
                
            }
        }    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
