

# Projeto Fullstack com PHP + Docker + Kubernetes

Este é um projeto fullstack com foco em containerização usando **Docker** e **Kubernetes**, com o backend desenvolvido em **PHP**. O objetivo é fornecer um ambiente portátil e escalável para desenvolvimento e testes.

## 🧱 Estrutura do Projeto

O projeto é dividido nas seguintes pastas e arquivos principais:

```

.
├── backend/               # Código-fonte da aplicação PHP
├── kubernetes/            # YAMLs do Kubernetes
├── script.sh              # Script de automação para Linux/MacOS
├── script.bat             # Script de automação para Windows
└── README.md              # Este arquivo

````

---

## 🚀 Tecnologias Utilizadas

- **PHP**
- **Docker**
- **Kubernetes (kind ou minikube)**
- **MySQL**
- **YAML (manifests Kubernetes)**

---

## 🛠️ Pré-requisitos

Antes de iniciar, certifique-se de ter:

- Docker instalado
- Kubernetes (com `kind` ou `minikube`) configurado
- `kubectl` instalado e configurado
- Acesso à internet para puxar imagens e fazer push no Docker Hub

---

## 📦 Build e Deploy

### 1. Altere o nome da imagem

Edite as seguintes referências no projeto:

- No arquivo `script.sh` ou `script.bat`:
  ```bash
  docker build -t nomeDeUsuarioDockerHub/projeto-backend:1.0 backend/


* No YAML do Kubernetes (por exemplo, `deployment.yml`):

  ```yaml
  image: nomeDeUsuarioDockerHub/projeto-backend:1.0
  ```

Substitua `nomeDeUsuarioDockerHub` pelo seu nome de usuário no Docker Hub.

### 2. Executar no Linux/MacOS

```bash
chmod +x script.sh
./script.sh
```

### 3. Executar no Windows

Clique duas vezes no arquivo `script.bat` ou execute no terminal:

```cmd
script.bat
```

---

## 🧪 Componentes do Kubernetes

* **Deployment para o backend PHP**
* **Service LoadBalancer para o frontend**
* **Service ClusterIP para o banco de dados (MySQL)**
* **PersistentVolumeClaim para persistência dos dados do MySQL**

---

## 🗃️ Volumes

A aplicação utiliza um PVC para manter os dados do MySQL mesmo após a reinicialização dos pods.

---

## 📌 Observações Importantes

* Certifique-se de estar autenticado no Docker Hub com `docker login` antes de rodar o script.
* O `kind` não suporta `LoadBalancer` nativamente. Utilize `minikube service nome-do-serviço --url` para acessar.
* O script realiza o build e aplica os manifests automaticamente.

---

## 🧹 Como remover

```bash
kubectl delete -f kubernetes/
```

---

## 📄 Licença

Este projeto é de uso educacional e pode ser modificado livremente.

```

---

Se quiser, posso gerar também o conteúdo dos arquivos `script.sh` e `script.bat` com os comandos prontos. Deseja isso também?
```
