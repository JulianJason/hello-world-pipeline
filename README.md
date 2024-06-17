### Hello World Pipeline

A very simple repository to showcase simple Github Actions.

### Dependencies

- Node

### Running locally

To run locally, use

`node src/hello-world.js`

### Building the Docker image

To build, run the command

`docker build . -t hello-world-pipeline:latest`

To run

`docker run hello-world-pipeline:latest`

### Trivy scan results

Trivy scan are uploaded to Github Security Tab [here](https://github.com/JulianJason/hello-world-pipeline/security/code-scanning)

### NPM package publish locations

The NPM packages are uploaded to 2 locations

- In the pipeline via `actions/upload-artifact@v4`, the package produced during pipeline runtime can be found on the pipeline page

- In the npm registry page via Github NPM package registry. e.g. v0.1.0 can be found [here](https://github.com/JulianJason/hello-world-pipeline/pkgs/npm/hello-world-pipeline)

NOTE: If a publishes package with the same version already exists, the npm publish step will be skipped.

### Publishing new version

To publish a new version, please run `npm version [Version]` e.g. npm version v0.1.0