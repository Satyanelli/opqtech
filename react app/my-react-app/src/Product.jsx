
import "./Product.css"
function Product({Title,Price, features}){
    return(
    <div className="Product">
       
        <h3>{Title}</h3>
        <h5>{Price}</h5>
        <ul>
            <li>{features[0]}</li>
            <li>{features[1]}</li>
            <li>{features[2]}</li>
        </ul>
    </div>
    
    )
}
export default Product;