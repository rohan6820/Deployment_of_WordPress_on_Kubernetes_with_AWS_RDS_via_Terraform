resource "kubernetes_service" "wplb" {
 metadata {
  name = "wordpress"
 }
 spec {
  selector = {
   App = "wordpress"
  }
  
  port {
   node_port = 30300
   port = 80
   target_port = 80
  }
  
  type = "NodePort"
 }
}