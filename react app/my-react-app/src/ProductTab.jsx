
import Product from "./Product"
function ProductTab(){
    let features=['feature 1','feature 2','feature 3']
return(
    <>
    <Product Title="nokia" Price="3000" features={features}/>
    <Product Title="samsung" Price="9000" features={features}/>
    </>
)
}
export default ProductTab;