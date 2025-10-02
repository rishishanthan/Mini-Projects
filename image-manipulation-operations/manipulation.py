import cv2
import numpy as np

image = cv2.imread('image.png')

gray_image = np.mean(image, axis=2).astype(np.uint8)
cv2.imwrite('gray_image.png', gray_image)

scaled_image = cv2.resize(gray_image, (256, 128))
cv2.imwrite('gray_image_scaled.png', scaled_image)

translation_matrix = np.float32([[1, 0, 50], [0, 1, 50]])
translated_image = cv2.warpAffine(gray_image, translation_matrix, (gray_image.shape[1], gray_image.shape[0]))
cv2.imwrite('gray_image_translated.png', translated_image)

flipped_vertical = np.flip(gray_image, axis=1)
cv2.imwrite('gray_image_flip_vertical.png', flipped_vertical)

inverted_image = 255 - gray_image
cv2.imwrite('gray_image_inversion.png', inverted_image)

center = (gray_image.shape[1] // 2, gray_image.shape[0] // 2)
rotation_matrix = cv2.getRotationMatrix2D(center, -45, 1)
rotated_image = cv2.warpAffine(gray_image, rotation_matrix, (gray_image.shape[1], gray_image.shape[0]))
cv2.imwrite('gray_image_rotated.png', rotated_image)


#Bonus
scaled_rgb_image = cv2.resize(image, (256, 128))
cv2.imwrite('image_scaled.png', scaled_rgb_image)

translated_rgb_image = cv2.warpAffine(image, translation_matrix, (image.shape[1], image.shape[0]))
cv2.imwrite('image_translated.png', translated_rgb_image)

flipped_rgb_horizontal = np.flip(image, axis=0)
cv2.imwrite('image_flip_horizontal.png', flipped_rgb_horizontal)

flipped_rgb_vertical = np.flip(image, axis=1)
cv2.imwrite('image_flip_vertical.png', flipped_rgb_vertical)
