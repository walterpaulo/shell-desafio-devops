output "informacoes_vms" {
  value = [
    for vm in aws_instance.vm :
    "ssh -i $HOME/Documentos/Projetos/tornesemprog/Desafio-DevOps-21-dias/base/terraform/example/providers/ssh/id_sra ubuntu@${vm.public_dns} -o ServerAliveInterval=60"
  ]
}