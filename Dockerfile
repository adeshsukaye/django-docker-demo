#Use official Python Image 
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app    

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver","0.0.0.0:8000"]