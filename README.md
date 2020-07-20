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
