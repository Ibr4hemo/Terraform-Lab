# In the KodeKloud lab this read /etc/os-release on the lab VM.
# Here it reads a sample copy shipped with the lab so it works on any OS.
data "local_file" "os" {
  filename = "${path.module}/os-release"
}

resource "local_file" "os_copy" {
  filename = "${path.module}/out/os-info.txt"
  content  = data.local_file.os.content
}

output "os_version" {
  value = data.local_file.os.content
}
