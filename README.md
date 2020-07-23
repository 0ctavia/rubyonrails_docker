### Very simple Ruby on Rails environment

I don't like to install tons and tons of stuff on my machine. This is a very simple boilerplate to play around in.
Not perfect yet, some stuff to tweak still, but useable.

Copy this repo to your machine and get into the folder.

First build the image:

` sudo docker built -t [your_tag_here] .`

Run the docker image and get into your docker:

`sudo docker run -it -v $(pwd):/myapp -p 3000:3000 [your_tag_here]`

You will land into the /myapp/project folder.
From there one, the docker's your oyster.

Notes / Todo's:
Rails server still needs to be ran up manually once inside the docker. Currently not doing it by default in the dockerfile since I mostly use command line ruby at the moment.
If you want to run the server, make sure you're in the /project folder and there do:

`rails server -b 0.0.0.0`

Which will make the server run on localhost:3000, serving the page `app/views/welcome/index.html.erb`.

If you want to enter into your docker while it is already running in one workspace, first get the name of the running docker container with:
`sudo docker ps`

Then do: 
`sudo docker exec -it [name_of_running_container] /bin/bash`
