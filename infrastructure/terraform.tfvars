region                     = "eu-central-1"
instance_type              = "t3.small"


allow_ports = ["80","443", "22","8000"]


tags = {
  Environment = "dev"
  Project = "todo_web_app3"
  Owner = "You_are"
  terraform = "True"
}