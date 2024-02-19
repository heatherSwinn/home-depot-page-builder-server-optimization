INSERT INTO products (id, product_name, manufacturer, price, has_warranty) VALUES
    (1,
    'ONE+ HP 18V Brushless Cordless 1/2 in. Drill/Driver and Impact Driver Kit w/(2) 2.0 Ah Batteries, Charger, and Bag',
    'RYOBI',
     179.00,
      false);

INSERT INTO specifications_details 
  (battery_amp_hours,
  blows_per_minute, 
  color_family, 
  cordless_tool_type, 
  drill_driver_type,
  included, 
  motor_type, 
  power_tool_features, 
  returnable, 
  torque, 
  battery_motor_type,
  other_included, 
  condition, 
  is_cordless, 
  drive_size,
  max_speed_rpm, 
  num_batteries_included,
  product_weight, 
  Tools_Product_Type, 
  voltage, 
  product_id) 
  VALUES
    (2,
    24000,
    'Green',
    'Impact Driver',
    'Impact Driver',
    'Tool Bag',
    'Brushless',
    'No Additional Features',
    '90-day',
    650,
    'Lithium-ion',
    'Charger included',
    'New',
    'Cordless',
    '1/4 In. Hex',
    '2100 RPM',
    2,
    '3.1 lb',
    'Power Tool',
    '18 V',
    1);


INSERT INTO descriptions (fact, product_id) VALUES ('Up to 25% Faster Driving and Up to 50% More Torque', 1); 
INSERT INTO descriptions (fact, product_id) VALUES ('Includes: (2) 2.0 Ah High Performance Batteries, Charger, and Bag', 1);
INSERT INTO descriptions (fact, product_id) VALUES ('Over 300 ONE+ Products - All Work With Any RYOBI ONE+ 18V Battery', 1);  
     

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. Used these for about a year now. I''m surprised it''s asking for a review now. But I love both of these drills. The HP line is competitive with all the others. And ps, same parent company as Milwaukee. And it shows. These tools hold up fine for what we do. Paired with the 4&6 AH HP batteries they are great. Full time residential contractor with some commercial mixed it. Treat your tools with respect and they''ll last you forever.',
  'SuperWeb', 
  5, 
  'Works great.',
  '2024-01-13', true);   

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. One of the finest product I ever had. Super happy with it and this is the sixth Ryobi tool that I own within an year.', 
  'millin', 
  5, 
  'Great  tool and very efficient', 
  '2023-12-28', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. I purchased this product to kick-start my home tool collection. Being able to get two free tools as a part of the sale for this product, along with the drill and impact driver, two 2 aH HP batteries, a carrying case, and a charger was a perfect way to do that. Ryobi is a tried a true brand that cares about keeping the interoperability of their products and batteries, while also developing their kind of products with improvements such as the introduction of brushless motors and new battery tech. I cannot recommend Ryobi enough, their products are used by millions for projects of all sizes.', 
  'BradlsRad', 
  5, 
  'Great company, great product, great performance.', 
  '2023-12-25', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'Having trouble with the charger. Blinking green and red otherwise great deal with the 2 free tools', 
  'Jim', 
  4,
  null,
  '2023-12-25', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. I''ve been almost exclusively using Ryobi tools since I got started in construction in 2017. The portability v power output is just perfect for my needs. I''m a handy man for multiple properties and Ryobi does the job, every time.', 
  'Superfungi', 
  5, 
  'Excellent tools', 
  '2023-12-25', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 'This review was collected as part of a promotion.] Bought this with two free tools, I couldnt resist. Coming from the brushed impact and drill, Hp brushless has so much power in a compact size. Driving screws is so much faster with ease. Drilling holes also much quicker, I do mix a ton of drywall mud, drill does it effortlessly and it can get too wild on speed 2 full trigger. Amazing quality, definitely a bigger upgrade from the brushed models.', 
  'Ramby', 
  5, 
  'Amazing Value', 
  '2023-12-08', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'I had a problem with the tale gate of my truck coming off the highway and my link tool box fell out and was run over by at car behind me and the drill and battery''s that I had inside weren''t damaged in any way Wow.', 
  'Jason', 
  5, 
  'This is tuff stuff', 
  '2023-11-05', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. Added this to my One+ Stapler, to keep battery packs interchangeable, and to replace a failed Craftsman drill. Nice quality and I appreciate built-in area light.', 
  'Anonymous', 
  5, 
  'More Ryobi for Me', 
  '2023-08-17', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. Wow just wow. I am in love with my new Impact Driver and Hammer Drill. The brushless motor gives them more power, runtime, and they are quieter than my brushed ones. This combo comes with two 2ah High Performance batteries, charger, and a tool bag. The HP batteries last longer and produce more power. This is a great bang for your buck.', 
  'Slappy',
  5, 
  'The Best Hammer Drill and Impact Driver out there!', 
  '2023-06-09', true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (1, 
  'This review was collected as part of a promotion. I''ve bought these drills and love it. Easy to use and charges fast.', 
  'Kids table', 
  5, 
  'Great drill', 
  '2023-02-09', true);

INSERT INTO review_images (review_id, img_url) VALUES 
  (1,
  'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/d453da74-d39e-5dd7-a6cd-cfa7663adda9');

INSERT INTO review_images (review_id, img_url) VALUES 
  (1, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/83e31712-dd37-5758-9b5b-fb0b0c975a4f');

INSERT INTO review_images (review_id, img_url) VALUES 
  (2, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/1a43ad26-b59b-5b5a-869c-ad192a572904');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/f6ff6f43-f4b1-5ac6-898c-2f47277417c7');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/845bed0e-6999-5643-8b58-250caedeb430');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/1cb787ba-6a8b-5f09-9132-3374399e7081');

INSERT INTO review_images (review_id, img_url) VALUES 
  (4, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/c35a7ff4-411d-5e46-b1b9-02a97332c8ee');

INSERT INTO review_images (review_id, img_url) VALUES 
  (5, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/b0d21583-97af-5449-97af-53532bcb11d8');

INSERT INTO review_images (review_id, img_url) VALUES 
  (6, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/92228bc7-6429-5915-ab3d-60701555ebfd');

INSERT INTO review_images (review_id, img_url) VALUES 
  (6, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/627fb2fa-8e17-5eb5-ac18-9724409d04c5');

INSERT INTO review_images (review_id, img_url) VALUES 
  (7, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/b97a385f-73cf-5b11-ae24-639fd9e38087');

INSERT INTO review_images (review_id, img_url) VALUES 
  (7, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/aba1858b-8332-5680-a61a-874241bb2a34');

INSERT INTO review_images (review_id, img_url) VALUES 
  (7, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/fbbb1fe2-9223-5ac8-9917-a434dd774202');

INSERT INTO review_images (review_id, img_url) VALUES 
  (8, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/31bf8243-f64a-5a59-8d7e-b8f91d5bb026');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/1d75fc6d-1f13-5b63-b4e2-e2ba52ae8412');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/f5c41e6b-fef6-53ce-942a-ae9adc6e27ae');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/f49b090a-8ad0-55be-90ad-47c1b0f9c532');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/c64b5669-60cd-57eb-8f64-3e44a30425fa');

INSERT INTO review_images (review_id, img_url) VALUES 
  (10, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86cnlvYmlvdXRkb29ydG9vbHM/9e64e96b-b10f-57b7-911b-381c60a66f72');

  

INSERT INTO img_urls (product_id, img_url) VALUES (1, 'a4958ad4-60c8-411b-bad0-49b536a543d6/svn/ryobi-impact-drivers-pblck01k-64_');  
INSERT INTO img_urls (product_id, img_url) VALUES (1, '8ec5ef3f-1d32-4c18-92b6-2d05769867c5/svn/ryobi-impact-drivers-pblck01k-1d_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '0374fc0b-bb15-419a-bc71-2afc8ca7a13a/svn/ryobi-impact-drivers-pblck01k-66_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '6840b528-3d1d-4723-9f62-fd76acb3639e/svn/ryobi-impact-drivers-pblck01k-77_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '2ef8951b-3c2d-42f0-821b-47076b8dfae9/svn/ryobi-impact-drivers-pblck01k-c3_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, 'b73dc56e-865b-496a-bc6b-c2a30565a55e/svn/ryobi-impact-drivers-pblck01k-4f_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '15506711-b77e-4331-8caf-a45fcf4b00f2/svn/ryobi-impact-drivers-pblck01k-1f_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, 'ef08a851-4f41-43ab-b492-b15ccf2d1176/svn/ryobi-impact-drivers-pblck01k-44_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, 'd502c0de-1433-4375-b6f5-1a0bfbfeb0a3/svn/ryobi-impact-drivers-pblck01k-fa_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '0c9c7c6f-e10b-41a8-9b9d-6c81af3bcbc0/svn/ryobi-impact-drivers-pblck01k-d4_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, 'dc8bf0aa-2019-4f8c-91d2-b4a5b66bb7a3/svn/ryobi-impact-drivers-pblck01k-31_');
INSERT INTO img_urls (product_id, img_url) VALUES (1, '3ddff655-5af5-4976-8892-50fcc34823eb/svn/ryobi-impact-drivers-pblck01k-de_');
 
INSERT INTO specifications_dimensions (product_id, depth, depth_unit_of_measure, width, width_unit_of_measure, height, height_unit_of_measure) VALUES 
  (1, 8, 'in', 3.375, 'in', 8.125, 'in');

INSERT INTO warranty_certifications (product_id, certifications_listings, manufacturer_warranty) VALUES (
    1, 'UL Listed', '3-Year Manufacturer''s Warranty'
);


INSERT INTO promotions (product_id, price_original, price_reduced) VALUES (1, 199.00, 179.00);


INSERT INTO store_online (product_id, inventory, days_to_ship) VALUES (1, 1002, 1);

INSERT INTO store_local (zipcode, city_name, product_id, inventory) VALUES (91945, 'Lemon Grove', 1, 29);


INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1, 
    'ther is sheeping to israel ?', 
    'moche', 
    '2024-01-31', 
    null, 
    null, 
    null
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1, 
    'Hello, I just wanted to be sure that the included charger can charge higher Ah battery, please verify this for me?',
    'Frank', 
    '2024-01-12', 
    'RYOBI', 
    'Hello, Frank - Yes, the included charger can charge any size RYOBI One+ 18V battery! We hope this helps! If you need further support, then call or text us at 1.800.525.2579, Monday - Friday from 9 am to 5 pm (EST), or through email when you visit us at https://www.ryobitools.com/support/contact.',
    '2024-01-15'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1, 
    'Can I purchase dividers for the standard box',
    'Jason', 
    '2023-12-31',
    'RYOBI',
    'Hello, Jason - Thank you for your question. Please follow these links for details on the available dividers to purchase. https://www.homedepot.com/s/LINK%20divider?NCNI-5 and https://www.homedepot.com/p/RYOBI-LINK-Single-Organizer-Bin-STM813/317939863 I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call or text us at 1.800.525.2579 or through email when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the LINK Standard Tool Box. - Joyce',
    '2024-01-30'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1, 
    'Are 2 of the smaller boxes locked together equal the medium size box in height ?',
    'Joshua', 
    '2023-12-30',
    'RYOBI',
    'Hello, Joshua - Thank you for your question. This standard sized unit is 6.1 inches in height alone, with two of these stacked that will equal to 12.2 inches in height. One medium box has a height of 9.32 inches in height. I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call or text us at 1.800.525.2579 or through email when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the LINK Standard Tool Box. - Teyana',
    '2023-12-21'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1, 
    'Hello, it states you get 2 free tools but it doesn''t tell which tools it is or if you get to choose 2. Thanks',
    'Angel',
    '2023-12-14',
    'RYOBI',
    'Hello, Angel - Thank you for your question. For the free tool choices, please reach out to The Home Depot to have them walk through the products with you. I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call or text us at 1.800.525.2579 or through email when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the ONE+ HP 18V Brushless Cordless 1/2 in. Drill/Driver and Impact Driver Kit w/(2) 2.0 Ah Batteries, Charger, and Bag. - Emily',
    '2023-12-15'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1,
    'Are these drills compatible with the scrubber attachments?',
    'cass',
    '2023-12-06',
    'RYOBI',
    'Hello, Cass - Thank you for your question. Yes, the power scrubber attachments are compatible with this model and can be used with most of our drills and drivers. I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call us at 1.800.525.2579 or through email when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the ONE+ HP 18V Brushless Cordless 1/2 in. Drill/Driver and Impact Driver Kit w/(2) 2.0 Ah Batteries, Charger, and Bag. - Lydia',
    '2023-12-07'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1,
    'I am confused. They picture shows a bag and people are talking about a toolbox. What comes with this kit? Also does this impact driver have variable speed trigger with the $199 kit? I am not seeing it in the picture.',
    'Buckeye',
    '2023-12-04',
    'RYOBI',
    'Hello, Buckeye - Thank you for your question. I apologize for the confusion. This kit comes with the 2 tools listed, (2) batteries and charger, along with a tool bag. The impact driver does have a variable speed switch trigger. I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call or text us at 1.800.525.2579 or through email or live chat when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the ONE+ HP 18V Brushless Cordless 1/2 in. Drill/Driver and Impact Driver Kit w/(2) 2.0 Ah Batteries, Charger, and Bag. - Teyana',
    '2023-12-05'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    1,
    'Made where',
    'Pinoy',
    '2023-12-03',
    'RYOBI',
    'Hello, Pinoy - Thank you for your question. If your unit has a ''VNM'' on the data label for the model number, it was created in Vietnam, however, our products are made all over the world. I hope this helps! Additionally, if you need further support, then a RYOBI Customer Experience Professional is here for you, Monday - Friday from 9 am to 6 pm (EST) when you call or text us at 1.800.525.2579 or through email or live chat when you visit us at https://www.ryobitools.com/support/contact. And thank you again for your interest in the ONE+ HP 18V Brushless Cordless 1/2 in. Drill/Driver and Impact Driver Kit w/(2) 2.0 Ah Batteries, Charger, and Bag. - Teyana',
    '2023-12-04'
);


INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1665754974615/314109290-POD1.jpg',
   'RYOBI Tools',
   'RYOBI Tools',
   'RYOBI gives you the ultimate in cordless versatility, selection, and innovation to get the job done. No matter your interests or skill level, RYOBI can power it',
   1) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1665754975484/314109290-POD2.jpg',
   'ONE+ HP',
   'ONE+ HP',
   'The 18V ONE+ HP Brushless series utilizes Advanced Technologies and Superior Ergonomics to deliver High Performance tools and a premium user experience',
   1) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1665754975494/314109290-POD3.jpg',
   'Premium Performance',
   'Premium Performance',
   'All tools in the ONE+ HP series feature a brushless motor, advanced electronics, and lithium-ion batteries to deliver more power, longer runtime, and longer motor life',
   1) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1665754975591/314109290-POD4.jpg',
   'Brushless Motor',
   'Brushless Motor',
   'Provides maximum power, extended runtime, and longer motor life',
   1) 
;


-- DeWalt Drill Product details
