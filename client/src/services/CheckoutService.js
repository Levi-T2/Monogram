import { AppState } from "../AppState"

class CheckoutService {
    AddToBag(product) {
        AppState.bag.push(product)
        console.log(AppState.bag)
    }
}

export const checkoutService = new CheckoutService()