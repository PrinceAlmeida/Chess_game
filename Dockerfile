#Use an official Python runtime as a base image
From python:3.9-slim

# Install fontconfig (to resolve pygame font issue)
RUN apt-get update && apt-get install -y fontconfig 

#set the working directory inside the container
WORKDIR /app

#Copy all the Python files into the container at /app
COPY . /app

#Install the necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose any necessary ports (adjust if your app uses a specific port)
EXPOSE 5000

#Command to run the game (update with your entry point)
CMD ["python", "main.py"]
