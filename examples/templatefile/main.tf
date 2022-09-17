output "templatefile" {
  value = templatefile(
    "./template.tftpl",
    {
        name = "steve"
    }
  )
}