
# 📱 Diva E-Commerce App

![image](https://github.com/user-attachments/assets/9805e721-4c4c-4637-8afe-e12bcb805730)

- This Flutter-based e-commerce application is designed specifically for girls' outfits, offering a seamless and engaging shopping experience. The app features a clean and modern UI, meticulously crafted using Figma, and implemented in Flutter.

---

## 🚀 Key Features

List the key features of your project:
  - Smooth Authentication: Sign up and log in effortlessly to enjoy a personalized shopping experience tailored just for you!
  - Charming Home Screen: Discover the latest trends and special offers at a glance, with a beautiful layout that showcases your favorite styles.
  - Detailed Product Info: Dive into each outfit with comprehensive details, stunning images, and real customer reviews to help you make the best choices.
  - Easy Cart Management: Add your must-haves to your cart, adjust quantities, and get ready for a hassle-free checkout process!
  - Favorites Just for You: Save your top picks in a dedicated favorites section so you can easily find them later.
  - Your Profile, Your Way: Manage your account and keep track of your orders with ease—because your shopping experience should be all about you!
  - Browse by Categories & Wishlist: Effortlessly explore different outfit categories and create a wishlist to save all your desired items.
  - Add New Products: For our lovely admins, easily add new outfits to keep the collection fresh and exciting!

---

## 💻 Tech Behind the Scenes
  - State Management: We use Cubit to keep everything running smoothly and responsively, so you can focus on what you love—shopping!
  - API Magic: Our app talks to the server using Dio and Retrofit, ensuring you get the latest products and updates quickly.
  - Built with Love: Created in Visual Studio Code, our developers have crafted a delightful shopping experience just for you.
  - Organized with Jira: Behind the scenes, we use Jira to keep our project on track, ensuring everything is perfectly planned and executed.

## 📸 Screenshots / 📹 Demo

![diva_home_ui](https://github.com/user-attachments/assets/af71d987-1239-4968-af7a-4d7a6a1e0cdb)


---

## 📚 Documentation


### Project Structure

```plaintext
lib/
├── core/                # Core functionalities shared across features
│   ├── constants/       # Constant values used throughout the app
│   ├── theming/         # Theme and styling configurations
│   ├── helpers/         # Helper functions and utilities
│   ├── networking/      # Networking code for API calls
│   ├── routes/          # App routing logic
│   ├── extensions/      # Extensions for built-in classes
│   ├── di/              # Dependency injection setup
│   └── widgets/         # Reusable widgets for the UI
└── features/            # Feature modules
    ├── home/            # Home screen feature
    │   ├── data/        # Data models and repositories
    │   ├── logic/       # Business logic and state management
    │   └── ui/          # UI components and screens
    ├── sign_up/         # Sign-up feature
    │   ├── data/        
    │   ├── logic/
    │   └── ui/
    ├── login/           # Login feature
    │   ├── data/
    │   ├── logic/
    │   └── ui/
    ├── profile/         # Profile feature
    │   ├── data/
    │   ├── logic/
    │   └── ui/
    ├── cart/            # Cart feature
    │   ├── data/
    │   ├── logic/
    │   └── ui/
    ├── wishlist/        # Wishlist feature
    │   ├── data/
    │   ├── logic/
    │   └── ui/
    ├── categories/      # Categories feature
    │   ├── data/
    │   ├── logic/
    │   └── ui/
    └── search/          # Search screen feature
        ├── data/
        ├── logic/
        └── ui/

```

---


