# k8s-deploy-app
Este projeto roda em um cluster Kubernets na Google Cloud PLataform(GCP). Por enquanto estou rodando apenas o backend da aplicação no cluster. Além do serviço do Cluster, tambem foram provisionados serviços de LoadBalancer e Mysql. No Deployment da aplicação está configurado uma replica de 6 Pods que serão espalhados entre os Workers atraves do LoadBalancer tambem configurado. Está sendo possivel realizar todo o Deploy desse ambiente apenas com um comando. Ainda não tem integração de Pipeline.
