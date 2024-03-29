resource "aws_s3_bucket" "my_bucket" {
    bucket = "exercise-s3-remote-bucket-3"

    tags = {
        Name        = "ExerciseMyBucket-3"
        Environment = "Production"
    }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
    bucket = aws_s3_bucket.my_bucket.id

    block_public_acls       = false
    block_public_policy     = false
 
}

resource "aws_s3_bucket_policy" "bucket_policy" {
    bucket = aws_s3_bucket.my_bucket.id

    policy = jsonencode({
        Version = "2012-10-17",
        Statement = [{
    
        Effect    = "Allow",
        Principal = "*",
        Action= "s3:*",
        Resource  = "${aws_s3_bucket.my_bucket.arn}/*",
        }],
    })
}

resource "null_resource" "upload_to_s3" {
  provisioner "local-exec" {
    command = "aws s3 sync ./bucket-exercise-3 s3://${aws_s3_bucket.my_bucket.id}/bucket-exercise-3"
  }
}

