# Load necessary library
library(ggplot2)


######################## Just monophthong ################################## 
# Monophthong dataset
monophthong_data <- data.frame(
  vowel = c('i', 'ɪ', 'e', 'ɛ', 'æ', 'ɑ', 'ɔ', 'o', 'ʊ', 'u', 'ʌ', 'ɜ'),
  f1 = c(437, 483, 536, 731, 669, 936, 781, 555, 519, 459, 753, 523),
  f2 = c(2761, 2365, 2530, 2058, 2349, 1551, 1136, 1035, 1225, 1105, 1426, 1588)
)

# Generate the monophthong plot
ggplot(monophthong_data, aes(x = f2, y = f1)) +
  geom_point(size = 3, color = 'blue') +
  geom_text(aes(label = vowel), vjust = -0.5, size = 5) +
  scale_y_reverse(position = "right") +
  scale_x_reverse(position = "top") +
  labs(title = "Monophthong F1-F2 Plot", x = "F2 (Hz)", y = "F1 (Hz)") +
  theme_minimal()

# save the graph; change the first argument to the path of where you want to save things
ggsave("vowel_plot_monophthong.png", plot = plot, width = 8, height = 6, dpi = 300)


######################## Just diphthong ################################## 
# Diphthong dataset
diphthong_data <- data.frame(
  vowel = c('aɪ', 'aʊ', 'oɪ', 'eɪ', 'oʊ'),
  f1_start = c(950, 970, 600, 550, 620),
  f2_start = c(1500, 1300, 1800, 2100, 1000),
  f1_end = c(400, 420, 480, 420, 480),
  f2_end = c(2700, 1100, 2400, 2500, 1200)
)

# Generate the diphthong plot with arrows for transitions
ggplot() +
  geom_point(data = diphthong_data, aes(x = f2_start, y = f1_start), size = 3, color = 'green') +
  geom_text(data = diphthong_data, aes(x = f2_start, y = f1_start, label = vowel), vjust = -0.5, size = 5) +
  geom_segment(data = diphthong_data,
               aes(x = f2_start, y = f1_start, xend = f2_end, yend = f1_end),
               arrow = arrow(length = unit(0.2, "inches"), type = "closed"),
               color = "red", size = 1) +
  scale_y_reverse(position = "right") +
  scale_x_reverse(position = "top") +
  labs(title = "Diphthong F1-F2 Plot with Transitions", x = "F2 (Hz)", y = "F1 (Hz)") +
  theme_minimal()

# save the graph; change the first argument to the path of where you want to save things
ggsave("vowel_plot_diphthong.png", plot = plot, width = 8, height = 6, dpi = 300)


######################## Monophthong and diphthong together ################################## 
# Create a combined data frame for vowels and diphthongs
data_combined <- data.frame(
  vowel = c('i', 'ɪ', 'e', 'ɛ', 'æ', 'ɑ', 'ɔ', 'o', 'ʊ', 'u', 'ʌ', 'ɜ',
            'aɪ', 'aɪ', 'aʊ', 'aʊ', 'oɪ', 'oɪ'),
  f1 = c(437, 483, 536, 731, 669, 936, 781, 555, 519, 459, 753, 523,
         1050, 400, 1000, 420, 650, 480),  # Adjusted F1 values for diphthongs
  f2 = c(2761, 2365, 2530, 2058, 2349, 1551, 1136, 1035, 1225, 1105, 1426, 1588,
         1400, 2700, 1300, 1200, 1700, 2400),  # Adjusted F2 values for diphthongs
  group = c(rep(NA, 12), 'aɪ', 'aɪ', 'aʊ', 'aʊ', 'oɪ', 'oɪ')  # Group identifier for diphthongs
)

# Generate the plot
ggplot(data_combined, aes(x = f2, y = f1)) +
  # Plot all points
  geom_point(size = 3, aes(color = is.na(group)), show.legend = FALSE) +  # Differentiate vowel and diphthong points
  geom_text(aes(label = vowel), vjust = -0.5, size = 5) +
  
  # Draw paths for diphthong transitions
  geom_path(data = subset(data_combined, !is.na(group)),
            aes(group = group), arrow = arrow(length = unit(0.2, "inches"), type = "closed"),
            color = "red", size = 1) +
  
  # Reverse axes to follow phonetic conventions
  scale_y_reverse(position = "right") +
  scale_x_reverse(position = "top") +
  
  # Add labels and theme
  labs(title = "Vowel F1-F2 Plot with Diphthong Transitions",
       x = "F2 (Hz)", y = "F1 (Hz)") +
  theme_minimal()


# save the graph; change the first argument to the path of where you want to save things
ggsave("vowel_plot_combine.png", plot = plot, width = 8, height = 6, dpi = 300)
