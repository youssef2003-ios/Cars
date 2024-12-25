import SwiftUI

struct DetailedView: View {
    
    var car: Car
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                
                //HeaderView for Car
                HeaderView(car: car)
                
                
                VStack(alignment: .leading, spacing: 15) {
                    //Car Title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(car.gradientColors[0])
                    
                    //Car Headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    //Car Model
                    ModelView(car: car)
                    
                    //Description
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(car.gradientColors[0])
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //Links
                    FooterView()
                    
                }// VStack
                .padding(.horizontal, 15)
                .frame(maxWidth: 620)
                
            } //: VStack End of main screen
            
        }// ScrollView
        .ignoresSafeArea(.all)
        
        
    }
}

#Preview {
    DetailedView(car: carData[0])
}



