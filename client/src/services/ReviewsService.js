import { AppState } from "../AppState";
import { api } from "./AxiosService";
import { Review } from "../models/Review"

class ReviewsService {
    async GetReviewsForProduct(productId) {
        AppState.reviews = [];
        const res = await api.get(`api/products/${productId}/reviews`);
        AppState.reviews = res.data.map((review) => new Review(review))
    }
    async CreateReview(reviewData) {
        const res = await api.post(`api/reviews`, reviewData)
        AppState.reviews.push(new Review(res.data));
    }
}

export const reviewsService = new ReviewsService();