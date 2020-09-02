resource "aws_db_instance" "mysqldb" {
 engine = "mysql"
 engine_version = "5.7"
 instance_class = "db.t2.micro"
 allocated_storage = 8
 storage_type = "gp2"
 name = "propuctionDataBase"
 username = "rohan"
 password = "bvrb0286"
 port = "3306"
 publicly_accessible = true
 skip_final_snapshot = true
parameter_group_name = "default.mysql5.7"
 
 tags = {
  Name = "propuctionDataBase"
 }
}