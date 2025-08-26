# ShopMini - Mini E-Commerce Platform

**ShopMini** is a lightweight Ruby on Rails application that simulates core commerce workflows. It's intended as a fast-to-build demo you can use on your resume to show Rails, authentication, authorization, and secure commerce flows.

## Live Demo & Repo
(Deploy this app to Render/Fly.io/Railway and paste the link here once deployed.)

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

## Quick Setup (local)
```bash
git clone https://github.com/your-username/shopmini.git
cd shopmini
bundle install
rails db:setup
bin/dev    # or rails server
```
Visit http://localhost:3000

## Project Structure (key files included in this repo sample)
- `app/models/` : `user.rb`, `product.rb`, `cart_item.rb`, `order.rb`, `order_item.rb`
- `app/controllers/` : `application_controller.rb`, `products_controller.rb`, `cart_items_controller.rb`, `carts_controller.rb`, `orders_controller.rb`
- `config/routes.rb` : main routes
- `db/seeds.rb` : initial sample data
- `README.md` : this file

## Screenshots
(Replace with screenshots after local run or deployment)

## Roadmap / Next Steps
- Add image upload (Active Storage)
- Integrate Stripe or test payment gateway (simulated checkout ok for resume)
- Add product search, filtering, and pagination
- Add automated tests (RSpec)

## Example Resume Line
Mini E-Commerce Platform — Ruby on Rails (deployed/in-progress)
- Built a secure Rails app with user auth, admin product management, shopping cart, and order checkout. Implemented role-based access (Pundit), CSRF protection, strong params, and integer-based money handling.

---
**Author:** Gurleen Kaur Mangat  
