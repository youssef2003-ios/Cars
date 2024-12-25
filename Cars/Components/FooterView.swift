import SwiftUI

struct FooterView: View {
    
    var body: some View {
        GroupBox {
            
            HStack{
                
                Link("Source: Widipedia", destination: URL(string: "https:/wikipedia.com")!)
                    .foregroundStyle(.blue)
                Spacer()
                
                Image(systemName: "arrow.up.right.square")
            }// HStack
            
        }// GroupBox
        .padding(.bottom, 40)
    }
}

#Preview {
    FooterView()
}
