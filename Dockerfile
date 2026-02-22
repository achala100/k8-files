FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "server.js"]
```

---

## Step 8: Your Repo Structure
```
my-project/
├── .github/
│   └── workflows/
│       └── deploy.yml        ← GitHub Actions workflow
├── k8s/
│   └── deployment.yaml       ← Kubernetes manifest
├── Dockerfile                 ← Docker build file
├── src/
│   └── ...                    ← Your app code
└── package.json               ← (or whatever your app needs)