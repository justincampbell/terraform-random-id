variable "byte_lengths" {
  type    = "list"
  default = ["2", "4", "8", "16", "32", "64", "128"]
}

resource "random_id" "default" {
  count       = "${length(var.byte_lengths)}"
  byte_length = "${element(var.byte_lengths, count.index)}"
}
