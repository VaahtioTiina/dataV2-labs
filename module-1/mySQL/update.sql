USE car_dealership; 

# Update email addresses
UPDATE customers SET email = 'ppicasso@gmail.com' WHERE full_name = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln@us.go' WHERE full_name = 'Abraham Lincoln';
UPDATE customers SET email = 'hello@napoleon.me' WHERE full_name = 'Napoléon Bonaparte';

# Correct spelling mistake
UPDATE salespersons SET store = 'Miami' WHERE store = 'Mimia'; 
