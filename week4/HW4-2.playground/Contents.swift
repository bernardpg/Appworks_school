import UIKit
import Foundation

func input(value: Int, inputType: (Int) -> Bool)
{
    inputType(value)
}

input(value: 19, inputType:
        {
    
    if $0 % 2 == 1
    {
        return true
    }
    else
    {
        return false
    }
}
)

