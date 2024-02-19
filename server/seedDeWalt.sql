INSERT INTO products (id, product_name, manufacturer, price, has_warranty) VALUES
    (2,
    'ATOMIC 20V MAX Lithium-Ion Cordless 1/4 in. Brushless Impact Driver Kit, 5 Ah Battery, Charger, and Bag',
    'DEWALT',
     169.00,
      false);

DELETE FROM specifications_details WHERE product_id =2;

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
    (5,
    3800,
    'Yellow',
    'Impact Driver',
    'Impact Driver',
    'Tool Bag',
    'Brushless',
    'LED Light, Variable Speed',
    '90-day',
    1825,
    'Lithium-ion',
    'Charger included',
    'New',
    'Cordless',
    '1/4 In. Hex',
    '3250 RPM',
    1,
    '4.45 lb',
    'Power Tool',
    '20 V',
    2);

DELETE FROM descriptions WHERE product_id =2;

INSERT INTO descriptions (fact, product_id) VALUES ('1825 in lbs. Torque and 3250 RPM for professional performance', 2); 
INSERT INTO descriptions (fact, product_id) VALUES ('Compact design at 3.97” tool length', 2);
INSERT INTO descriptions (fact, product_id) VALUES ('Includes (1) 20-Volt MAX XR Battery 5.0Ah', 2);  
     

DELETE FROM reviews WHERE product_id =2;

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] So I finally am replacing my old DeWalt 1/4 impact driver. This driver did not disappoint it''s smaller lighter and came with a bigger battery! This atomic compact series packs a big punch I was hesitant to replace my old faithful impact but I am amazed with the quality DeWalt continues to produce in smaller package! Feels great in your hands and I liked that it came with the 5ah battery.',
  'fernie619', 
  5, 
  'Atomic 20v 1/4" impact packs a punch!',
  '2024-01-03', 
  true);   

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] Impressive power in a compact design. Serious compact driver that has plenty of speed and power to handle simple driving of 1 1/4” screws to driving 4” lag screws. Compact design allows for easy maneuverability inside cabinets. Lightweight even with the 5.0 battery installed. The different speeds allow for multiple uses out of one driver. If you need heavy torque or want to finesse a screw without stripping or breaking the screw this driver has you covered with a simple push of a button. Well balanced, compact, powerful, different torque speeds, all combined make this an ideal driver to have in your toolbox', 'Grant8', 
  5, 
  'Serious compact power', 
  '2023-01-02', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] Love this impact driver. I was skeptical about the atomic line of dewalt but this impact driver changed that. Has power that embarrasses my current dewalt impact driver. Lights are super bright. battery has power for days. Super light weight and compact', 
  'J Brownell', 
  5, 
  'This tool changed my mind about the atomic line', 
  '2023-12-28', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] I absolutely loved using my new DeWalt Impact Drill. It''s light, well balanced and plenty of power. I used this drill on all my new garage shelving and it still had plenty of battery after I was done.', 
  'Bill G', 
  5,
  'Atomic 20V max impact drill',
  '2023-12-23', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] I have actively used the Atomic 20V MAX* 1/4 impact driver for the past few weeks, and really put it through the ringer....it came through like a champ each time. You can really notice a difference in the 3 speed function as well. Over the years I have used a wide variety of drivers and many times you can''t feel, let alone hear, much of a difference; with this Atomic driver you can. Not only is the a noticeable difference going from speed to speed, I also really like the sensitive nature of the trigger. I like the compact nature of it of course, I would only recommend that it is sold with a power stack battery. The compact, yet powerful nature of those two products combined is amazing.', 
  'Bwagner', 
  5, 
  'Big power, little frame', 
  '2023-12-25', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, '[This review was collected as part of a promotion.] Great drill for tight spaces. I use this impact while working on RVs and couldn’t be more impressed. Inside of cabinets working on furnaces or water heaters this gun with three speed settings get it done. My new favorite Dewalt tool.', 
  'DWillDuck13', 
  5, 
  'High performance in a small impact.', 
  '2022-12-20', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] There is impressive power packed into this Atomic ¼ in Impact Driver. This compact driver has three power settings to vary the output power from precision tasks to 1,825 in-lbs (or about 152 ft-lbs torque). LED lights are in the perfect position to see your work in tight spaces and bright enough to use as a flashlight searching through a tool bin. This impact driver has the quality you come to love about DeWalt tools, torque you can feel, and doesn’t take much real estate in a tool bag. The perfect addition to my garage tool bag since I leave its high-torque big brother with the truck tools.', 
  'Dustin', 
  5, 
  'Huge Power in Compact Driver', 
  '2022-12-17', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] Pros: ~ Fantastic kit - perfect for DIYers or professionals alike. ~ Compact and lightweight ~ Excellent ergonomics ~ Well built and exceptional quality Cons: ~ Not worth the upgrade if you don''t need the drive''s space saving design. Overall: If this would be your first impact driver then look no further. Excellent build quality, power, and comfort. This kit also includes all the essentials to get started right away. Review: The DCF850 is a step-up compared to the DCF887 even though they have the same specs. (3 speed, 0-3800 impacts per minute, 20V) This kit comes with the ¼” impact driver, 5Ah battery, charger, toolbag, and belt clip. For me, as a DIYer, it''s all about the comfort and long-term use. When you hold the 850, it feels much less awkward compared to the 887. The 850 feels much more balanced due to its significantly shorter design. In pictures, it might not seem like that big of a deal to some but when space is needed, it''s a fantastic option! Prior to owning the 850, I had read a couple reviews stating that the 887 did a better job with certain screws (headlok, deck, etc..). This was not the case for myself, however. With the included 5Ah battery in this kit, it was just as forceful, if not moreso, than the 887. If you are torn between the two choices, without a doubt go with the 850. You aren''t sacrificing power, the available space in tight spots is increased, comfortability is fantastic, and the durability is top notch.', 
  'Wombat', 
  5, 
  'Fantastic Driver in a Great Kit!', 
  '2022-12-15', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] I loved the small head, which allowed us to install screws in a tight location. I used it myself, and let some fellow workers try it out. One of the guys who loves another brand, admitted that he liked this driver. The torque is amazing for a small motor. The bright light ring is also helpful. Very satisfied, with the improvements.', 
  'mtrbldr',
  5, 
  'Fits in tight spaces didn''t sacrifice performance', 
  '2022-12-14', 
  true);

INSERT INTO reviews (product_id, content, reviewer_name, rating, title, review_date, isRecommended) VALUES 
  (2, 
  '[This review was collected as part of a promotion.] I received the Atomic 20V MAX* 1/4 in. Brushless Cordless 3-Speed Impact Driver Kit and have been using it almost daily. I use the impact driver for both drilling and screwing all types of screws and snap in a socket driver to insert and remove hex bolts and nuts quite often. My favorite enhancement to the now past model is the new 3 speed options. I now feel I have more control over the use of screws in that the speed is tempered. The brushless motor is so very smooth I can hardly imagine a better tool anywhere on the market. It also seems like the 3 LED lights are very bright as compared to the regular impact driver.', 
  'Slayyypy',
  5, 
  'Awesome defines DeWalt''s 3 speed impact driver', 
  '2022-12-14', 
  true);

DELETE FROM review_images WHERE product_id =2;

INSERT INTO review_images (review_id, img_url) VALUES 
  (1,
  'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/ac3eddff-13c3-5215-93d1-627a68e5670f');

INSERT INTO review_images (review_id, img_url) VALUES 
  (1, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/297cb5b2-7698-5e9c-ac1f-47f63de92db7');

INSERT INTO review_images (review_id, img_url) VALUES 
  (1, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/878bca29-ddb4-5db9-854a-2cb9532dd054');

INSERT INTO review_images (review_id, img_url) VALUES 
  (1, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/c4a9ae2b-0a48-53cf-a307-121ea0c9b44d');

INSERT INTO review_images (review_id, img_url) VALUES 
  (2, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/703c82d0-17c3-59f8-b2b1-b9b21ebaf10d');

INSERT INTO review_images (review_id, img_url) VALUES 
  (2, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/2b998987-6b49-58bf-ae51-255a68be412b');

INSERT INTO review_images (review_id, img_url) VALUES 
  (2, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/2b998987-6b49-58bf-ae51-255a68be412b');

INSERT INTO review_images (review_id, img_url) VALUES 
  (2, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/93c59c2f-343f-5660-a8b6-c81e26d0aa7a');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/ac3eddff-13c3-5215-93d1-627a68e5670f');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/297cb5b2-7698-5e9c-ac1f-47f63de92db7');

INSERT INTO review_images (review_id, img_url) VALUES 
  (3, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/4c1006ff-737b-5b14-8c6d-eeb486d7b1c2');


INSERT INTO review_images (review_id, img_url) VALUES 
  (4, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/6b5fa244-0497-5642-8be1-c0c0f42ba5f4');

INSERT INTO review_images (review_id, img_url) VALUES 
  (4, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/4722a60e-fb3a-544b-a8fd-5ffaf8e95e5c');

INSERT INTO review_images (review_id, img_url) VALUES 
  (4, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/b2ffbed6-1d1d-50a3-87b9-620a0dd2df4e');


INSERT INTO review_images (review_id, img_url) VALUES 
  (5, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/62ca989c-02e4-5ae4-9fef-c78de93d3eae');

INSERT INTO review_images (review_id, img_url) VALUES 
  (5, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/24e6cbde-5dc7-5d64-a0f9-9d475eaace9c');

INSERT INTO review_images (review_id, img_url) VALUES 
  (5, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/99796027-11be-5748-b5d7-6f8c74112511');

INSERT INTO review_images (review_id, img_url) VALUES 
  (6, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/8a833484-4d6d-5372-8185-5bd6dfc7942b');

INSERT INTO review_images (review_id, img_url) VALUES 
  (6, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/c6eee920-2f20-5336-967e-3ae956e53bcd');

INSERT INTO review_images (review_id, img_url) VALUES 
  (6, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/d50032b3-6da6-5749-98b0-674a020bd280');

INSERT INTO review_images (review_id, img_url) VALUES 
  (7, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/a05b458f-54f5-5ad1-8639-7ac6d4a14098');

INSERT INTO review_images (review_id, img_url) VALUES 
  (7, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/3cac0e28-a1d4-58ae-b999-08a38e9420ea');

INSERT INTO review_images (review_id, img_url) VALUES 
  (8, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/495adebe-e387-53e8-809b-25d6465a48ee');

INSERT INTO review_images (review_id, img_url) VALUES 
  (8, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/fe3a558a-db8b-5170-9a7b-80a4b23d4a18');

INSERT INTO review_images (review_id, img_url) VALUES 
  (8, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/df4a0e39-d3a9-58c9-b261-4d0a9fa81b79');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/2475d310-2635-55e5-9d51-7f73b9b7b2f8');

INSERT INTO review_images (review_id, img_url) VALUES 
  (9, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/468fa07e-9ddd-561c-8a9c-be0341e72dc6');

INSERT INTO review_images (review_id, img_url) VALUES 
  (10, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/48c62ed6-f77b-5b61-9a2c-fbb5cb2989b6');

INSERT INTO review_images (review_id, img_url) VALUES 
  (10, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/0a957780-af98-5da2-91ce-2674d6298c67');

INSERT INTO review_images (review_id, img_url) VALUES 
  (10, 'https://photos-us.bazaarvoice.com/photo/2/cGhvdG86ZGV3YWx0/202fe5b2-285a-5fe4-b21e-b0c088ef2f3b');

  
DELETE FROM img_urls WHERE product_id =2;

INSERT INTO img_urls (product_id, img_url) VALUES (2, '0ddcc6a2-169e-4de4-9e6b-4138f1ed4e3f/svn/dewalt-impact-drivers-dcf850p1-64_');  
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'e6c4433c-2642-4708-9bec-772e87fcbabd/svn/dewalt-impact-drivers-dcf850p1-e1_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'a64e8883-1062-4e74-b7d2-ab013002be64/svn/dewalt-impact-drivers-dcf850p1-40_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '8c3f0e7f-772c-4b50-9390-045fd2a82306/svn/dewalt-impact-drivers-dcf850p1-1d_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '10f3de09-c3f4-48de-9cea-36f975e97f7d/svn/dewalt-impact-drivers-dcf850p1-66_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '063b0cea-0983-4b3a-b70d-3837a31491eb/svn/dewalt-impact-drivers-dcf850p1-77_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '0cf98424-2761-4cbd-8e58-1cb2a30fa9ec/svn/dewalt-impact-drivers-dcf850p1-c3_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'f03122e3-ea3f-4640-bf5f-5f93a27be5f5/svn/dewalt-impact-drivers-dcf850p1-4f_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '9054a040-46fc-4caa-9bab-f141615cf6b3/svn/dewalt-impact-drivers-dcf850p1-1f_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, '450a5dc5-d96b-4a05-b09a-3509b5e2a2ce/svn/dewalt-impact-drivers-dcf850p1-44_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'a37d35e8-83b4-4e3f-8c3d-a709043f7fd7/svn/dewalt-impact-drivers-dcf850p1-fa_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'aea8f6fe-3274-4e16-8c92-845c95dde886/svn/dewalt-impact-drivers-dcf850p1-76_');
INSERT INTO img_urls (product_id, img_url) VALUES (2, 'd1178ac5-072a-4db7-982f-3fdeb84af12a/svn/dewalt-impact-drivers-dcf850p1-d4_');


DELETE FROM specifications_dimensions WHERE product_id =2;

INSERT INTO specifications_dimensions (product_id, depth, depth_unit_of_measure, width, width_unit_of_measure, height, height_unit_of_measure) VALUES 
  (2, 12.5, 'in', 9.813, 'in', 3.75, 'in');

INSERT INTO warranty_certifications (product_id, certifications_listings, manufacturer_warranty) VALUES (
    2, 'CSA Listed', '3 Year Limited Warranty, 1 Year Warranty, 90 Day Money Back Guarantee'
);

DELETE FROM promotions WHERE product_id =2;

INSERT INTO promotions (product_id, price_original, price_reduced) VALUES (2, 219.00, 169.00);

DELETE FROM store_online WHERE product_id =2;

INSERT INTO store_online (product_id, inventory, days_to_ship) VALUES (2, 421, 3);

INSERT INTO store_local (zipcode, city_name, product_id, inventory) VALUES (91945, 'Lemon Grove', 2, 0);

DELETE FROM customer_questions WHERE product_id =2;

INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2, 
    'Question 1: Dewalt XR Premium Lithium-Ion 5.0Ah: Pack 1: $179 is more expensive than Pack 2: $149 ? Question 2: Dewalt XR Premium Lithium-Ion 5.0Ah: Pack 1 has dimension: H 3in, W 7 in, L 7 in but Pack 2 has dimension: H 3.625 in, W 7 in, L 9.25 in. ???', 
    'phanphunghung', 
    '2023-10-23', 
    'DewaltProductExpert', 
    'Dear Valued Home Depot Customer, to better answer your question, please contact the HD.com customer service department at 800-430-3376 call any day between 6 a.m. and 2 a.m. EST, or call your local store, they can either answer your question or transfer you to your local store to answer your specific question.', 
    '2024-01-02'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2, 
    'will this work with DCS368 brushless sawsall',
    'bill', 
    '2023-08-05', 
    'DewaltProductExpert', 
    'Yes, the DCS368 will work with the DEWALT 20V battery line-up.',
    '2023-10-19'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2, 
    'Bought the DCB205 5AH for use with the chainsaw. It''s never been used but a few times and won''t charge past 2 bars. Highly disappointed with the cost of these batteries and basically is defective out of the package. It''s a 2021 date on the battery.',
    'upnorthwi', 
    '2023-06-30',
    'Dewalt battery',
    'You may have a bad battery. I had the same problem even if I charged it for long time, so I contacted www.delwalt.com service online and explained the problem. Had to take some pictures, report the number on the battery, and a copy of receipt.',
    '2023-09-23'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2, 
    'Do I need this to install tapcon screws',
    'Donald', 
    '2023-05-14',
    'DewaltProductExpert',
    'It is not recommended to use an impact to drive Tapcon screws as the impact has a tendancy to overtighten. It is recommended to use a Hammer Drill when driving Tapcon screws.',
    '2023-05-09'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2, 
    'Of course recommended for DeWalt but will it also fit Black and decker 20v power tools?',
    'Buster',
    '2023-05-12',
    'DewaltProductExpert',
    'No, we recommend using BLACK+DECKER 20V batteries in your BLACK+DECKER Tools.',
    '2024-01-24'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2,
    'Is this a 1/4 or 1/2?',
    'JayMonster',
    '2023-04-01',
    'DewaltProductExpert',
    'Model DCF850P1 is an Atomic 20V MAX* 1/4 in Brushless Cordless 3-Speed Impact Driver',
    '2023-04-04'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2,
    'Can''t find a model number on this. Is the 20v 5aH MAX XR Premium the same as the 20v 5aH MAX XR?',
    'Trimbaton774',
    '2022-12-30',
    'Slappy',
    'There''s three sets of numbers on the top of the battery they are as follows but I don''t know which ones are the actual model numbers but here they are: 2019 45-49 7-2 ;  N552470 L074ZIQ Also , I can send you a picture ',
    '2022-12-30'
);
INSERT INTO customer_questions (product_id, question_content, user_name, question_date, response_user_name, response_content, response_date) VALUES (
    2,
    'What battery works best for the router',
    'Mark',
    '2023-01-01',
    'Gman',
    'Good morning, The Dewalt 5amp, 20-volt battery system is ideal for router edging etc. realize that any deep mortising for an extended period will deplete the charge quickly so having a backup battery or two will cut down on standby time. Don''t let the charge level get too low, it will shorten the battery life. Hope this helps, G',
    '2023-10-30'
);

DELETE FROM productDetails_images WHERE product_id =2;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1638280215337/DCF850P1_NA_EN_THD_Pod_1.jpg',
   'DEWALT Guaranteed Tough',
   'DEWALT Guaranteed Tough',
   'DEWALT continues to design and optimize professional jobsite solutions for the toughest jobsite conditions.',
   2) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1638280213925/DCF850B_NA_EN_THD_Pod_2.jpg',
   'Brushless Motor',
   'Brushless Motor',
   'DEWALT brushless motor delivers up to 57% more run time over brushed.',
   2) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1638280202470/Atomic_POD_3.jpg',
   'Where Size Meets Power',
   'Where Size Meets Power',
   'Exceptional 20 VOLT power now comes in a lighter, smaller package with the DEWALT Atomic compact series.',
   2) 
;

INSERT INTO productDetails_images 
  (imageSrc, altText, title, detail, product_id) 
  VALUES
  ('https://cdn.jet-cdn.com/s3/csp/1638280214173/DCF850B_NA_EN_THD_Pod_4.jpg',
   '29% Shorter',
   '29% Shorter',
   'Only 3.97 in. length which is a 29% shorter tool head from front to back vs. DCF885 Impact Driver.',
   2) 
;
