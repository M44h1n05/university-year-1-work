document.getElementById('payment-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission

    var cardNumber = document.getElementById('card').value;
    var expiryMonth = document.getElementById('expiry_month').value;
    var expiryYear = document.getElementById('expiry_year').value;
    var cvv = document.getElementById('security').value;

    if (cardNumber.length !== 16 || isNaN(cardNumber)) {
        alert('Card number must be 16 digits.');
        return;
    }

    if (expiryMonth === '' || expiryYear === '') {
        alert('Please select a valid expiry month and year.');
        return;
    }

    if (cvv.length !== 3 || isNaN(cvv)) {
        alert('CVV must be 3 digits.');
        return;
    }

    alert('Payment Success');
});

document.addEventListener('DOMContentLoaded', () => {
    const cartItems = document.querySelectorAll('#cart-items tr');
    const totalElement = document.getElementById('total');

    function updateSubtotal() {
        let total = 0;

        cartItems.forEach(item => {
            const priceElement = item.querySelector('td:nth-child(3)');
            const quantityElement = item.querySelector('.quantity');
            const subtotalElement = item.querySelector('.subtotal');

            const price = parseFloat(priceElement.textContent.replace('£', ''));
            const quantity = parseInt(quantityElement.value);

            const subtotal = price * quantity;
            subtotalElement.textContent = `£${subtotal.toFixed(2)}`;

            total += subtotal;
        });

        totalElement.textContent = `Total: £${total.toFixed(2)}`;
    }

    cartItems.forEach(item => {
        const quantityElement = item.querySelector('.quantity');
        quantityElement.addEventListener('input', updateSubtotal);
    });

    updateSubtotal(); // Initial call to set the total
});

// Ensure this script is correctly referenced in your HTML file

function addToCart(productName, price) {
    // Example function to add product to cart (expand this as needed)
    console.log(`Added ${productName} with price ${price} to cart`);

    // You can implement the actual cart logic here, for now, we'll just simulate it
    if (!localStorage.getItem('cart')) {
        localStorage.setItem('cart', JSON.stringify([]));
    }
    let cart = JSON.parse(localStorage.getItem('cart'));
    cart.push({ productName, price });
    localStorage.setItem('cart', JSON.stringify(cart));
}
