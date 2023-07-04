//
//  CalculatorView.swift
//  SwiftUIDemo
//
//  Created by Kongsun on 4/7/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Spacer()
            displayText
            buttonPad
        }
        .padding(12)
        .background(Color(.black))
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .environmentObject(CalculatorView.ViewModel())
    }
}


extension CalculatorView{
    private var displayText: some View{
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size:88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    private var buttonPad: some View{
        VStack(spacing: 12){
            ForEach(viewModel.buttonTypes, id: \.self){row in HStack(spacing: 12){
                    ForEach(row, id: \.self){buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}
