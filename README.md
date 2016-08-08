brightsign-py-showtime
======================

Tooling for creating a multi-screen related content extravaganza.

Very much under construction.


# Getting Started
Work currently is happening in an iPython notebook. That code is kept in this git repository and is mounted as a shared volume inside the Docker instance.


## Working With Docker
If you're on a Mac, you'll want to use [Docker for Mac](https://docs.docker.com/engine/installation/mac/), which makes all the Virtualbox/Kitematic/Docker Machine awfulness go away. It's a much nicer world now.

**Build the Docker Image locally:**
`docker build . -t brightsign-showtime`

**Start a new instance (mounting from the local directory):**
`docker run -d --name showtime-notebook -v $(pwd)/content:/opt/notebooks -p 8888:8888 brightsign-showtime:latest`

You can also start the machine as an attached window (like `rails -s`) with:
`docker run -it --name showtime-notebook -v $(pwd)/content:/opt/notebooks -p 8888:8888 brightsign-showtime:latest`


**Stop detatched instance:**
`docker stop showtime-notebook`

Resume a previous instance:
`docker start showtime-notebook`

Using the `-v $(pwd)/content:/opt/notebooks` will result in all files being saved (and thus committable) to the filesystem in this folder and not entirely within the Docker container. This will let you work with local files and commit them back up to the repository without issue.

#
Adding a dependency to the project can be done by adding it to to the `Dockerfile` and rebuilding the image. If th

# Current core components
* FFMPEG
* OpenCV
* Jupyter/iPython Notebooks
