# Image Manipulation Operations

This project demonstrates basic image processing techniques implemented using Python and OpenCV/Numpy.

---

## 📌 Overview
The goal of this mini project was to perform **fundamental image manipulations** on a given input image, including:
- Grayscale conversion  
- Image inversion (negative)  
- Rotation  
- Scaling (resizing)  
- Translation (shifting)  
- Horizontal flip  
- Vertical flip  

These operations form the foundation for more advanced computer vision and image processing pipelines.

---

## 🖼️ Input
Original input image used in this project:

![Original](image.png)

---

## 🔧 Implemented Operations & Results

### 1. Grayscale Conversion
Converts the image to grayscale.  
![Gray Image](gray_image.png)

---

### 2. Inversion (Negative)
Inverts pixel values.  
![Inversion](gray_image_inversion.png)

---

### 3. Rotation
Rotates the image by 45 degrees.  
![Rotated](gray_image_rotated.png)

---

### 4. Scaling
Resizes the image to half its original size.  
- Grayscale scaled  
  ![Gray Scaled](gray_image_scaled.png)  
- Color scaled  
  ![Color Scaled](image_scaled.png)

---

### 5. Translation
Shifts the image along x and y axes.  
- Grayscale translated  
  ![Gray Translated](gray_image_translated.png)  
- Color translated  
  ![Color Translated](image_translated.png)

---

### 6. Horizontal Flip
Mirrors the image along the vertical axis.  
![Flip Horizontal](image_flip_horizontal.png)

---

### 7. Vertical Flip
Mirrors the image along the horizontal axis.  
- Grayscale flip  
  ![Gray Flip](gray_image_flip_vertical.png)  
- Color flip  
  ![Color Flip](image_flip_vertical.png)

---

## ⚙️ Code
All operations are implemented in **[manipulation.py](manipulation.py)** using OpenCV and NumPy.

---

## 📚 Key Learnings
- Practical understanding of **basic image transformations**.  
- Reinforced how images are stored as pixel matrices.  
- Served as a foundation for more advanced tasks like filtering, feature detection, and object recognition.

---

## ✅ Conclusion
This mini project illustrates how simple image manipulation techniques work at a fundamental level.  
These operations are essential building blocks for computer vision pipelines in robotics, AI, and multimedia applications.
