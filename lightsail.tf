resource "aws_lightsail_instance" "HeavyMetalOps" {
  name              = "HeavyMetalOps"
  availability_zone = "us-east-1a"
  blueprint_id      = "wordpress_4_9_8"
  bundle_id         = "small_2_0"
}

resource "aws_lightsail_static_ip" "HeavyMetalOps_Static_IP" {
    name = "HeavyMetalOps_Static_IP"
}

resource "aws_lightsail_static_ip_attachment" "HeavyMetalOps_IP_Attachment" {
    static_ip_name = aws_lightsail_static_ip.HeavyMetalOps_Static_IP.id
    instance_name  = aws_lightsail_instance.HeavyMetalOps.name
}

resource "aws_lightsail_domain" "HeavyMetalOps_Domain" {
    domain_name = "heavymetalops.io"
}
