resource "kubernetes_deployment" "wordpressdp" {
 metadata {
  name = "wordpressinstance"
 }
 
 spec {
  replicas = 5
  
  selector {
   match_labels = {
    env = "dev"
    region = "IN"
    App = "mywpapp"
   }
            
  }
  
  template {
   metadata {
    labels = {
     env = "dev"
     region = "IN"
     App = "mywpapp"
    }
   }
   spec {
    container {
     image = "wordpress:4.8-apache"
     name = "mywordpressinstance"
    }
   }
  }
 }
}