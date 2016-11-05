resource "digitalocean_droplet" "freebsd" {
    image = "freebsd-11-0-x64-zfs"
    name = "freebsd"
    region = "nyc2"
    size = "512mb"
	ssh_keys = [
		"${var.ssh_fingerprint}"
	]
}

resource "digitalocean_record" "radachy" {
	domain = "radachy.com"
	type = "A"
	name = "@"
	value = "${digitalocean_droplet.freebsd.ipv4_address}"
}