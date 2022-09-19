aws s3 mb s3://udapeople-hiroshi-p3
aws s3api put-public-access-block --bucket udapeople-hiroshi-p3 --public-access-block-configuration  "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"
aws s3api put-bucket-policy --bucket udapeople-hiroshi-p3 --policy file://policy.json
aws s3 cp index.html s3://udapeople-hiroshi-p3/index.html
aws s3 website s3://udapeople-hiroshi-p3 --index-document index.html