import { AppState } from "../AppState"

class CheckoutService {
    AddToBag(product) {
        AppState.bag.push(product);
        console.log(AppState.bag);
    }
    async RemoveFromBag(productId) {
        const bagIndex = AppState.bag.findIndex((product) => product.id == productId);
        AppState.bag.splice(bagIndex, 1);
    }
}

export const checkoutService = new CheckoutService()