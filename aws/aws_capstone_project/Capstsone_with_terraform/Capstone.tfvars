vpc_cidr_block             = "90.90.0.0/16"
Public1a                   = "90.90.10.0/24"
Public1b                   = "90.90.20.0/24"
Private1a                  = "90.90.11.0/24"
Private1b                  = "90.90.21.0/24"
env_prefix                 = "Capstone"
AZ_1A                      = "us-east-1a"
AZ_1B                      = "us-east-1b"
instance_type              = "t2.micro"
key_name                   = "gaskin"
image_id                   = "ami-0e472ba40eb589f49"
LT_resource_type           = "instance"
nat_ami                    = "ami-00a9d4a05375b2763"
db_subnet                  = "rds_subnet"
db_instance_identifier     = "aws-capstone-rds"
db_engine                  = "mysql"
db_engine_version          = "8.0.20"
db_instance_class          = "db.t2.micro"
db_backup_window           = "01:00-02:00"
db_maintenance_window      = "Mon:02:00-Mon:03:00"
db_name                    = "database1"
db_username                = "admin"
db_password                = "Clarusway1234"
db_parameter_group_name    = "default.mysql8.0"
db_port                    = "3306"
db_allocated_storage       = "20"
db_max_allocated_storage   = "40"
db_backup_retention_period = "7"
load_balancer_type = "application"
lb_target_type      = "instance"
listener_http_type = "redirect"
listener_https_type = "forward"
ASG_health_check_type         = "ELB"
failover_bucket     = "www.awsgaskin.click"
failover_acl        = "public-read"
s3_object_key       = "index.html"
s3_object_key2      = "sorry.jpg"
blog_acl            = "public-read"
blog_bucket         = "awscapstonesgaskinblog"
blog_index_document = "index.html"
acm_domain = "awsgaskin.click"
acm_types  = ["AMAZON_ISSUED"]
domain_name = "awsgaskin.click."

lambda_policy_arn = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess", 
    "arn:aws:iam::aws:policy/job-function/NetworkAdministrator",
    "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
]
cf_origin_protocol_policy = "match-viewer"
cf_origin_ssl_protocols   = ["TLSv1.2"]
cf_aliases = ["www.awsgaskin.click"]
cf_allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
cf_cached_methods   = ["GET", "HEAD", "OPTIONS"]
cf_viewer_protocol_policy = "redirect-to-https"
cf_path_pattern     = "media/*.jpg"
cf_forward = "all"
cf_price_class = "PriceClass_All"
cf_restriction_type = "none"
cf_ssl_support_method       = "sni-only"
cf_minimum_protocol_version = "TLSv1.2_2021"
rt53_type              = "HTTP"
rt53_resource_path     = "/"
rt53_failure_threshold = "5"
rt53_request_interval  = "30"
rt53_set_identifier = "failover"
rt53_record_type    = "A"
rt53_failover_type = "PRIMARY"
rt53_failover_secondary_type = "SECONDARY"
dy_billing_mode     = "PAY_PER_REQUEST"
dy_hash_key       = "id"
dy_type = "S"
archive_type        = "zip"
lambda_source_file = "lambda_function.py"
lambda_filename      = "outputs/lambda.zip"
lambda_function_name = "Capstone-lambda"
handler       = "lambda_function.lambda_handler"
runtime = "python3.8" 
s3_trigger_events              = ["s3:ObjectCreated:*", "s3:ObjectRemoved:*"]
s3_trigger_filter_prefix       = "media/"
lambda_trigger_statement_id  = "AllowS3Invoke"
lambda_trigger_action        = "lambda:InvokeFunction"
lambda_trigger_principal = "s3.amazonaws.com"