FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /project
## Step 2:
# Copy source code to working directory
COPY . /project
## Step 3:
# Install packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
Expose 80

## Step 5:
# Run app.py at container launch
CMD ["bash", "-c", "python app.py"]

