
export class Product {
    constructor(data) {
        this.id = data.id
        this.createdAt = data.createdAt
        this.updatedAt = data.updatedAt
        this.name = data.name
        this.description = data.description
        this.price = data.price
        this.imgUrl = data.imgUrl
        this.imgUrl2 = data.imgUrl2
        this.imgUrl3 = data.imgUrl3
    }
}