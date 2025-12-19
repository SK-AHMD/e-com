# E-Commerce App Assignment

A high-performance Flutter e-commerce application featuring state persistence, reactive filtering, and a modern UI. This project was developed as part of the internship evaluation for the Truflect Team.
## 📺 Video Demonstration

Below is a demonstration of the application's functionality. 

<div align="center">
  <video src="https://github.com/sk-ahmd/e-com/raw/main/assets/video/demo.mp4" width="320" controls>
    Your browser does not support the video tag. 
    <a href="https://github.com/sk-ahmd/e-com/raw/main/assets/video/demo.mp4">Click here to view the video file directly.</a>
  </video>
</div>

## 🚀 Key Features

* **Persistent Shopping Cart:** Powered by `HydratedBloc`. Cart items are saved locally and remain available even after the app is closed and reopened.
* **Automated Promo Slider:** A smooth `PageView` banner that automatically transitions every 2 seconds using a periodic timer.
* **Dynamic Category Filtering:** Real-time product grid updates based on category selection (Fruits, Vegetables, Snacks, etc.) using the "Lifting State Up" pattern.
* **Modern UI/UX:** Clean, card-based design with `Stack` overlays for quick "Add to Cart" actions and detailed product views.

---

## 🛠 Tech Stack & Architecture

This project follows the **BLoC (Business Logic Component)** pattern to ensure clean separation of concerns and testability.

| Package | Purpose |
| :--- | :--- |
| **flutter_bloc** | Core state management for the Cart and Category logic. |
| **hydrated_bloc** | Automated state persistence for the Shopping Cart. |
| **path_provider** | Accessing the file system for local data storage. |

---

## 🧩 Challenges & Solutions

### 1. Development on M4 Architecture
Developing on the latest **M4 Apple Silicon** required specific toolchain configurations. I successfully managed the ARM64 environment synchronization for the Android SDK and command-line tools to ensure a smooth build process.

### 2. Network Image Security
Initial issues with loading network images on physical devices were resolved by configuring the `AndroidManifest.xml`. I implemented the `INTERNET` permission and handled `CleartextTraffic` policies to allow secure loading of product assets from external URLs.

---

## 🏗️ How to Run
1.  **Clone the repo:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/ecom.git](https://github.com/YOUR_USERNAME/ecom.git)
    ```
2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
3.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 👤 Author
**Sheikh**
* [LinkedIn](https://www.linkedin.com/in/sheikh-ahmadullah/)
* [Portfolio/Website](sk-ahmd.github.io)