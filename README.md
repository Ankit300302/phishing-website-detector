# Phishing Website Detection

A machine learning-based web application that detects phishing websites using 30 different features extracted from URLs.  

🔗 **Live Demo:** [Phishing Website Detector](https://phishing-website-detector-g5da.onrender.com)


## Features

- **30 Feature Extraction**: Analyzes URLs for phishing indicators
- **Machine Learning Model**: Uses Gradient Boosting Classifier
- **Web Interface**: User-friendly Flask web application
- **Real-time Detection**: Instant phishing detection results

## Quick Start

### Local Development

1. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

2. **Run the application**:
   ```bash
   python app.py
   ```

3. **Open your browser**:
   Navigate to `http://127.0.0.1:5000`

### Quick Deployment

#### Option 1: Heroku (Recommended)

**Windows Users**:
```bash
deploy_heroku.bat
```

**Linux/Mac Users**:
```bash
chmod +x deploy_heroku.sh
./deploy_heroku.sh
```

#### Option 2: Manual Heroku Deployment

1. **Install Heroku CLI** and login:
   ```bash
   heroku login
   ```

2. **Create and deploy**:
   ```bash
   heroku create your-app-name
   git add .
   git commit -m "Initial deployment"
   git push heroku main
   heroku open
   ```

#### Option 3: Railway

1. **Install Railway CLI**:
   ```bash
   npm install -g @railway/cli
   ```

2. **Deploy**:
   ```bash
   railway login
   railway init
   railway up
   ```

#### Option 4: Render

1. Connect your GitHub repository to Render
2. Create a new Web Service
3. Set build command: `pip install -r requirements.txt`
4. Set start command: `gunicorn app:app`

## How It Works

The application extracts 30 features from URLs including:
- URL length and structure
- Domain characteristics
- Security indicators (HTTPS, SSL)
- Suspicious patterns
- External resource analysis
- JavaScript and iframe detection

## Model Performance

- **Accuracy**: 97.42%
- **Algorithm**: Gradient Boosting Classifier
- **Features**: 30 extracted features
- **Dataset**: 11,054 samples

## File Structure

```
Detection/
├── app.py                 # Main Flask application
├── feature.py             # Feature extraction module
├── requirements.txt       # Python dependencies
├── Procfile              # Heroku deployment config
├── runtime.txt           # Python version specification
├── pickle/
│   └── model.pkl         # Trained ML model
├── templates/
│   └── index.html        # Web interface
├── static/
│   ├── styles.css        # CSS styles
│   └── img/              # Images
└── phishing.csv          # Training dataset
```

## API Usage

The application provides a simple web interface where users can:
1. Enter a URL to analyze
2. Get instant phishing detection results
3. View confidence scores

## Security Features

- Input validation and sanitization
- Error handling for malformed URLs
- Safe external resource checking
- Comprehensive logging

## Troubleshooting

### Common Issues:

1. **Model loading errors**: Ensure `pickle/model.pkl` exists
2. **Dependency conflicts**: Use the provided `requirements.txt`
3. **Port issues**: The app uses environment variable `PORT`

### Testing:

- **Safe URL**: `https://www.google.com`
- **Test URL**: `https://www.example.com`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source and available under the MIT License.

## Support

For issues and questions:
1. Check the troubleshooting section
2. Review the deployment guide
3. Open an issue on GitHub

