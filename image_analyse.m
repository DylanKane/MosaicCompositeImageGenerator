%this file takes an image in as a parameter and then finds an image from
%the training set which matches that image best.
function closest = image_analyse(image)
        test_image_directory = 'Image\training\';
        most_close = 755;
        most_close_image = '';
        directory = dir('Image\training\');
        
        img = imread(image);
        %the first two elements of the dir array(on windows) will be . and
        %.. this code willstrcat(test_image_directory, file.name)strcat(test_image_directory, file.name)strcat(test_image_directory, file.name)order to remove these values from the array.
        directory(1) = [];
        directory(1) = [];
        for file = directory'
            current_image = strcat(test_image_directory, file.name);
            current_img = imread(current_image);
            
            closeness = similarity(current_image, img);
            if closeness < most_close
                most_close = closeness;
                most_close_image = current_image;
            end
        end
        
        
    	most_close_image
end