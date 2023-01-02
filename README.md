# lambda_python_layer_generator

This provides a way to quickly create Amazon Lambda layers for python. It utilizes docker since sometimes their are issues using virtualenv on macos running a different OS than what lambda is running (linux).

1. ```docker build -t aws_lambda_builder_image .```
2. ```chmod 755 runner.sh```
3. ```./runner.sh```
4. Edit requirements.txt file to whatever package you are creating a layer for. Example: ```requests==2.28.1```
5. After runner.sh exectues, it creates a zip file called python.zip. This is the lambda layer that you will upload. Simply upload the python.zip or move the python.zip file to a different folder to create a new layer.


##### Credit: Felix Yu -> https://github.com/felixyu9
