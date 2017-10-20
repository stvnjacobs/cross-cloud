resource "openstack_compute_instance" "cncf" {
  count           = "${ var.master_count }"
  name            = "${ var.name }-master-${ count.index + 10 }"
  image_name      = "${ var.master_image_name }"
  flavor_name     = "${ var.master_flavor_name }"
  security_groups = [ "default" ]

  network {
    name = "public"
  }
}
