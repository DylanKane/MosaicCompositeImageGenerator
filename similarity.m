function sim = similarity(first_image, second_image)
    [first_r,first_g, first_b] = average_image(first_image);
    [second_r,second_g, second_b] = average_image(second_image);
    
    sim = abs(first_r - second_r) + abs(first_g - second_g) + abs(first_b - second_b)