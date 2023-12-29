
export class Review {
    constructor(data) {
        this.id = data.id
        this.createdAt = data.createdAt
        this.updatedAt = data.updatedAt
        this.name = data.name
        this.email = data.email
        this.imgUrl = data.imgUrl
        this.title = data.title
        this.body = data.body
        this.productId = data.productId
    }
}