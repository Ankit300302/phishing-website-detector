# Phishing Website Detection - Deployment Guide

## Option 1: Heroku Deployment (Recommended)

### Prerequisites
1. Install Heroku CLI: https://devcenter.heroku.com/articles/heroku-cli
2. Create a Heroku account: https://signup.heroku.com/

### Steps to Deploy

1. **Login to Heroku**
   ```bash
   heroku login
   ```

2. **Create a new Heroku app**
   ```bash
   heroku create your-app-name
   ```

3. **Add Git remote**
   ```bash
   git remote add heroku https://git.heroku.com/your-app-name.git
   ```

4. **Deploy to Heroku**
   ```bash
   git add .
   git commit -m "Initial deployment"
   git push heroku main
   ```

5. **Open your app**
   ```bash
   heroku open
   ```

## Option 2: Railway Deployment

### Prerequisites
1. Create a Railway account: https://railway.app/
2. Install Railway CLI: `npm install -g @railway/cli`

### Steps to Deploy

1. **Login to Railway**
   ```bash
   railway login
   ```

2. **Initialize Railway project**
   ```bash
   railway init
   ```

3. **Deploy**
   ```bash
   railway up
   ```

## Option 3: Render Deployment

### Prerequisites
1. Create a Render account: https://render.com/

### Steps to Deploy

1. **Connect your GitHub repository to Render**
2. **Create a new Web Service**
3. **Configure the service:**
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `gunicorn app:app`
   - Environment: Python 3

## Option 4: PythonAnywhere Deployment

### Prerequisites
1. Create a PythonAnywhere account: https://www.pythonanywhere.com/

### Steps to Deploy

1. **Upload your files to PythonAnywhere**
2. **Create a new Web app**
3. **Configure WSGI file**
4. **Set up virtual environment and install requirements**

## Option 5: AWS/Google Cloud/Azure

### For production deployments, consider:
- AWS Elastic Beanstalk
- Google Cloud Run
- Azure App Service

## Important Notes

1. **Environment Variables**: Set any required environment variables in your deployment platform
2. **Model File**: Ensure the `pickle/model.pkl` file is included in your deployment
3. **Dependencies**: All required packages are listed in `requirements.txt`
4. **Port Configuration**: The app uses the `PORT` environment variable (set by deployment platforms)

## Troubleshooting

### Common Issues:
1. **Model loading errors**: Ensure the model file is in the correct location
2. **Dependency conflicts**: Use the updated requirements.txt
3. **Port issues**: The app automatically uses the PORT environment variable

### Testing Your Deployment:
1. Visit your deployed URL
2. Test with a known safe URL (e.g., https://www.google.com)
3. Test with a known phishing URL (for testing purposes)

## Security Considerations

1. **HTTPS**: Most deployment platforms provide HTTPS by default
2. **Rate Limiting**: Consider implementing rate limiting for production use
3. **Input Validation**: The app includes basic input validation
4. **Error Handling**: The app includes comprehensive error handling

## Monitoring

1. **Logs**: Monitor application logs for errors
2. **Performance**: Monitor response times and resource usage
3. **Uptime**: Set up uptime monitoring for your deployed application
