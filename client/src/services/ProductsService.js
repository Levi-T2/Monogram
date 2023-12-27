import { AppState } from "../AppState";
import { Product } from "../models/Product";
import { logger } from "../utils/Logger"
import { api } from "./AxiosService"

class ProductsService {
    async GetAllProducts() {
        const res = await api.get(`/api/products`);
        AppState.products = res.data.map((product) => new Product(product));
    }
}

export const productsService = new ProductsService()
