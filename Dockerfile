# Use an official Python runtime as a parent image
FROM python:3.5

# Set environment variables for Django
ENV DJANGO_SETTINGS_MODULE=mysite.settings

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define the command to run your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

