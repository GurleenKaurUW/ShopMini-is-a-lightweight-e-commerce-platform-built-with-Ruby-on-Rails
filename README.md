# ShopMini - Mini E-Commerce Platform

**ShopMini** is a lightweight Ruby on Rails application that simulates core commerce workflows. It's intended as a fast-to-build demo you can use on your resume to show Rails, authentication, authorization, and secure commerce flows.


## Features
- User authentication (Devise suggested)
- Role-based admin controls for product management (Pundit/CanCanCan suggested)
- Product catalog (CRUD for admins)
- Shopping cart with add/remove/update
- Order creation (checkout flow) with basic stock decrement
- Security basics: CSRF, strong params, role checks, least-privilege access
- Simple, deployable code structure for quick iteration

## Tech Stack
- Ruby 3.x, Rails 7.x
- SQLite for local development, PostgreSQL for production
- Devise (authentication), Pundit (authorization)


## Project Structure (key files included)
- `app/models/` : `user.rb`, `product.rb`, `cart_item.rb`, `order.rb`, `order_item.rb`
- `app/controllers/` : `application_controller.rb`, `products_controller.rb`, `cart_items_controller.rb`, `carts_controller.rb`, `orders_controller.rb`
- `config/routes.rb` : main routes
- `db/seeds.rb` : initial sample data
- `README.md` : this file


## Roadmap / Next Steps
- Add image upload (Active Storage)
- Integrate Stripe or test payment gateway (simulated checkout ok for resume)
- Add product search, filtering, and pagination
- Add automated tests (RSpec)


---
**Author:** Gurleen Kaur Mangat  
