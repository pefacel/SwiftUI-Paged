//
//  SuccessView.swift
//  Paged
//
//  Created by Pedro on 09-08-21.
//

import SwiftUI

struct SuccessView: View {
    let message = """
      Good job completing all four exercises!
      Remember tomorrow's another day
      So eat well and get some rest
      """
    
    
    var body: some View {
        VStack {
            Image(systemName: "hand.raised.fill")
                .foregroundColor(Color.purple)
                .frame(width: 75, height: 75)

            Text("High Five!")
                .font(.title)
                .fontWeight(.bold)
            Text(message)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)

        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
