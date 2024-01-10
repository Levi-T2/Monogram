import { AppState } from "../AppState";
import { Product } from "../models/Product";
import { logger } from "../utils/Logger"
import { api } from "./AxiosService"

class ProductsService {
    async GetAllProducts() {
        const res = await api.get(`/api/products`);
        AppState.products = res.data.map((product) => new Product(product));
    }
    async GetProductById(productId) {
        AppState.activeProduct = null;
        const res = await api.get(`/api/products/${productId}`);
        AppState.activeProduct = new Product(res.data);
    }
    // NOTE functionally, this is calling the same get request as the one above; I'm simply doing this for better readability.
    async GetPackById(packId) {
        AppState.activeAddOn = null;
        const res = await api.get(`/api/products/${packId}`);
        AppState.activeAddOn = new Product(res.data);
    }
    // NOTE This was made in the back end to grab products by their category, in this case packs.
    async GetAllPacks() {
        // NOTE This is done to minimize request to the network
        if (AppState.packs.length) {
            return
        } else {
            AppState.packs = [];
            const res = await api.get(`/api/products/packs`);
            AppState.packs = res.data.map((pack) => new Product(pack));
        }
    }
}

export const productsService = new ProductsService()
