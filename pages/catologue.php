<?php

// call the Products Class  
$products = new Products();

// list out the products
$products_list = $products->listAllProducts();

?>
<!doctype html>
<html lang="en">
  
<?php $pageTitle = "Catologue"; include('./parts/header.php');?>

  <section>
  <div class="container mt-5 mb-2 mx-auto" style="max-width: 900px;">
      <div class="min-vh-100">
        <div class="d-flex justify-content-between align-items-center mb-4">
          <h1 class="h1">Catalogue</h1>
          <div class="d-flex align-items-center justify-content-end gap-3">
            <a href="/cart" class="btn btn-success">My Cart</a>
          </div>
        </div>

        <!-- products -->
        <div class="row row-cols-1 row-cols-md-3 g-4">

        <?php foreach ( $products_list as $product ) : ?>
          <div class="col">
            <div class="card h-100">
              <img
                src="<?php echo $product['image_url'] ?>"
                class="card-img-top"
                alt="<?php echo $product['name']; ?>"
              /> 
              <div class="card-body text-center">
                <h5 class="card-title"><?php echo $product['name']; ?></h5>
                <p class="card-text">RM<?php echo $product['price']; ?></p>
                <!-- when button is clicked, user will go to the cart page -->
                <form
                method="POST"
                action="/cart"
                >
                <!-- product id will pass to the cart page -->
                <input 
                  type="hidden"
                  name="product_id"
                  value="<?php echo $product['id']; ?>"
                />
                
                <button class="btn btn-primary">Add to cart</button>
                </form>
              </div>
            </div>
          </div>
          <?php endforeach; ?>

        </div>
      </div>

      <!-- footer -->
      <div class="d-flex justify-content-between align-items-center pt-4 pb-2">
        <div class="text-muted small">
          © 2022 <a href="/" class="text-muted">My Store</a>
        </div>
        <div class="d-flex align-items-center gap-3">
          <?php if ( isLoggedIn() ) : ?>
            <a href="/orders" class="btn btn-light btn-sm">My Orders</a>
            <a href="/logout" class="btn btn-light btn-sm">Logout</a>
          <?php else : ?>
            <a href="/login" class="btn btn-light btn-sm">Login</a>
            <a href="/signup" class="btn btn-light btn-sm">Sign Up</a>
          <?php endif; ?>
          
          
        </div>
      </div>
    </div>
  </section>

  
<?php include('./parts/footer.php');?>
</body>
</html>
