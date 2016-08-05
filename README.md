brightsign-py-showtime
======================

Tooling for creating a multi-screen related content extravaganza.

Very much under construction.


# Getting Started
Work currently is happening in an iPython notebook.

Build the Docker Image locally:
`docker build . -t brightsign-showtime`

Start a new instance (mounting from the local directory):
`docker run -d --name showtime-notebook -v $(pwd)/content:/opt/notebooks -p 8888:8888 brightsign-showtime:latest`

Stop detatched instance:
`docker stop showtime-notebook`

Resume a previous instance:
`docker start showtime-notebook`

Using the `-v $(pwd)/content:/opt/notebooks` will result in all files being saved (and thus committable) to the filesystem in this folder and not entirely within the Docker container. This will let you work with local files and commit them back up to the repository without issue.


# Current core components
* FFMPEG
* OpenCV
* Jupyter/iPython Notebooks
