#Kwizard:  A Simple Command Line Quizzer

##Inspired by Erica Kantor's [code_review_questions](https://github.com/ericak11/code_review_questions)

##What's so great about Kwizard?

Write your questions and answers in [YAML](http://en.wikipedia.org/wiki/YAML)

Extensible...just a command line interface now, but the model and controller has been kept seperate from the view, so nothing's stopping you from rendering the questions wit# a Sinatra server or some other framework.

Requires `Rspec` to run the tests.

##To Do

-  [X]  it reads in all the files in the `./questions` directory

    -  [X]  it saves topics based on the file names (e.g. `python.yaml` will create a "python" topic)
    
    -  [X]  it reads all the question/answer pairs and adds them to the question array

    -  [ ]  it syntax highlights code for `python.yaml`, `ruby.yaml`, and `javascript.yaml` files

-  [X]  it continually loops, asking random questions

-  [X]  hitting enter will display the answer

