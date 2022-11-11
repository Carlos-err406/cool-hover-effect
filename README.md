# Purpose
This is an enhanced version of of the original skeleton project from sveltekit
To get the original skeleton from sveltekit run the following command:
```bash
npm create svelte@latest my-app
```
Or you can simply follow the instructions in the [SvelteKit docs](https://kit.svelte.dev/docs/introduction)

# Content
Besides the skeleton default this includes the basic **.gitignore**, **Dockerfile** and **.dockerignore** files for the Docker process.  
Also we are using the **adapter-node** instead of the default **adapter-auto**

# Running
### For running in development commands are the same:
```bash
npm run dev
```
or for a local production preview
```bash
npm run build
npm run preview
```
### For running Docker:
First create the image from the root directory:
```bash
docker build -t <imagename> .
```
After the image is built, run it:
```bash
docker run -d -p 4173:4173 <imagename>
```
Go to your browser and access application should be mounted at [0.0.0.0:4173](http://0.0.0.0:4173)