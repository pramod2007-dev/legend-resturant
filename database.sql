-- Legend Restaurant Database Schema
-- Created for premium restaurant management system

CREATE DATABASE IF NOT EXISTS legend_restaurant;
USE legend_restaurant;

-- Menu Items Table
CREATE TABLE menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category ENUM('Biryani', 'Rice', 'Bread', 'Curry', 'Beverage', 'Dessert') NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    description TEXT,
    image_url VARCHAR(500),
    spice_level INT(1) DEFAULT 1,
    is_vegetarian BOOLEAN DEFAULT FALSE,
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Orders Table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(20) UNIQUE NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    order_type ENUM('Dine-in', 'Takeaway', 'Delivery') NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status ENUM('Pending', 'Confirmed', 'Preparing', 'Ready', 'Completed', 'Cancelled') DEFAULT 'Pending',
    payment_status ENUM('Pending', 'Paid', 'Failed') DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Order Items Table
CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    menu_item_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(8,2) NOT NULL,
    subtotal DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (menu_item_id) REFERENCES menu_items(id)
);

-- Reviews Table
CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    rating INT(1) NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    is_google_review BOOLEAN DEFAULT FALSE,
    review_date DATE NOT NULL,
    is_approved BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Admin Users Table
CREATE TABLE admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    full_name VARCHAR(255),
    role ENUM('admin', 'manager', 'staff') DEFAULT 'staff',
    last_login TIMESTAMP NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Sample Menu Items
INSERT INTO menu_items (name, category, price, description, image_url, spice_level) VALUES
('Chicken Biryani', 'Biryani', 1200.00, 'Fragrant basmati rice cooked with tender chicken, aromatic spices, and herbs. Served with raita.', 'https://kimi-web-img.moonshot.cn/img/static.vecteezy.com/8028fa983261ffdb0ad9ed02c8466a0ba7f94b1c.jpg', 2),
('Egg Biryani', 'Biryani', 900.00, 'Basmati rice cooked with boiled eggs and traditional biryani spices.', 'https://kimi-web-img.moonshot.cn/img/img.freepik.com/f232958d0b4c9fada65d6a68bdc56e664b330976.jpg', 2),
('Tandoori Chicken Biryani', 'Biryani', 1500.00, 'Smoky tandoori chicken pieces layered with saffron-infused rice.', 'https://kimi-web-img.moonshot.cn/img/static.vecteezy.com/8028fa983261ffdb0ad9ed02c8466a0ba7f94b1c.jpg', 3),
('Chicken Fried Rice', 'Rice', 850.00, 'Stir-fried rice with chicken, vegetables, and soy sauce.', 'https://kimi-web-img.moonshot.cn/img/www.theflavorbender.com/e4eff3ca83f141ae0f4198943bf2439af55f3d80.jpg', 1),
('Seafood Fried Rice', 'Rice', 1100.00, 'Rice stir-fried with prawns, cuttlefish, and crab meat.', 'https://kimi-web-img.moonshot.cn/img/www.theflavorbender.com/e4eff3ca83f141ae0f4198943bf2439af55f3d80.jpg', 2),
('Chicken Kottu Roti', 'Rice', 950.00, 'Chopped flatbread stir-fried with chicken, vegetables, and spices.', 'https://kimi-web-img.moonshot.cn/img/www.hungrylankan.com/6a6985f7a2702847a4303ba08b5142eb6d45d791.jpeg', 2),
('Butter Naan', 'Bread', 300.00, 'Soft leavened bread brushed with butter, baked in tandoor.', 'https://kimi-web-img.moonshot.cn/img/www.dwarakaorganic.com/83bdc4ce87bd13262a92396c95d471d6f79d447a.jpg', 1),
('Garlic Naan', 'Bread', 350.00, 'Naan bread topped with fresh garlic and coriander.', 'https://kimi-web-img.moonshot.cn/img/www.dwarakaorganic.com/83bdc4ce87bd13262a92396c95d471d6f79d447a.jpg', 1),
('Cheese Naan', 'Bread', 450.00, 'Naan stuffed with melted cheese.', 'https://kimi-web-img.moonshot.cn/img/www.dwarakaorganic.com/83bdc4ce87bd13262a92396c95d471d6f79d447a.jpg', 1),
('Chicken Curry', 'Curry', 700.00, 'Traditional Sri Lankan chicken curry with coconut milk.', 'https://kimi-web-img.moonshot.cn/img/www.theflavorbender.com/e4eff3ca83f141ae0f4198943bf2439af55f3d80.jpg', 3),
('Butter Chicken', 'Curry', 950.00, 'Creamy tomato-based curry with tender chicken pieces.', 'https://kimi-web-img.moonshot.cn/img/www.itihaas.co.uk/e8e5e9175d445b18ec10a4f8aad7b4d3011f1794.jpg', 2),
('Dal Makhani', 'Curry', 600.00, 'Creamy black lentils cooked overnight.', 'https://kimi-web-img.moonshot.cn/img/www.itihaas.co.uk/e8e5e9175d445b18ec10a4f8aad7b4d3011f1794.jpg', 1),
('Sri Lankan Thali', 'Curry', 1200.00, 'Complete meal with rice, 3 curries, papadum, and dessert.', 'https://kimi-web-img.moonshot.cn/img/www.dwarakaorganic.com/83bdc4ce87bd13262a92396c95d471d6f79d447a.jpg', 2);

-- Insert Sample Reviews
INSERT INTO reviews (customer_name, rating, comment, is_google_review, review_date) VALUES
('Ahmed R.', 5, 'Best biryani in Kalagedihena! Authentic flavors and generous portions.', TRUE, '2025-01-15'),
('Priya S.', 4, 'Great ambiance and friendly staff. The kottu roti was amazing.', TRUE, '2025-01-20'),
('Nimal F.', 5, 'Perfect place for family dinners. Love their butter chicken!', TRUE, '2025-01-22'),
('Kavita M.', 4, 'Good food, reasonable prices. Waiting time was a bit long during rush hours.', TRUE, '2025-01-25'),
('Rohan P.', 5, 'The tandoori biryani is a must-try. Excellent service!', TRUE, '2025-01-28'),
('Samanthi L.', 4, 'Lovely restaurant with authentic Sri Lankan and Indian cuisine.', TRUE, '2025-01-29');

-- Insert Admin User (Password: admin123 - change in production)
INSERT INTO admin_users (username, password_hash, email, full_name, role) VALUES
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin@legendrestaurant.lk', 'Administrator', 'admin'),
('manager', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'manager@legendrestaurant.lk', 'Restaurant Manager', 'manager');