import SwiftUI

struct OnboardingView: View {
    //Properties
    
    // Body
    var body: some View {
        
        
        TabView{
            
            ForEach(carData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 6)
            }
            
        } // TabView
        .tabViewStyle(.page)
        .padding()
        
        
        
    }
}

#Preview {
    OnboardingView()
}
