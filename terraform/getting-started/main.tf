resource "local_file" "games" {
  file     = "/root/favorite-games"
  content  = "FIFA 21"
}

resource "local_sensitive_file" "games" {
  filename     = "/root/favorite-games"
  content  = "FIFA 21"
}