resource "aws_key_pair" "mykey" {
  key_name   = "testkey"
  public_key = file("terraformkey.pub")
}
