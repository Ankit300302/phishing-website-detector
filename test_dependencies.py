#!/usr/bin/env python3
"""
Test script to verify all dependencies can be imported successfully.
Run this before deployment to ensure compatibility.
"""

def test_imports():
    """Test all required imports."""
    try:
        print("Testing imports...")
        
        # Core Flask imports
        from flask import Flask, request, render_template
        print("✅ Flask imports successful")
        
        # Data science imports
        import numpy as np
        print("✅ NumPy import successful")
        
        import pandas as pd
        print("✅ Pandas import successful")
        
        from sklearn import metrics
        print("✅ Scikit-learn import successful")
        
        # Other required imports
        import warnings
        import pickle
        print("✅ Standard library imports successful")
        
        from bs4 import BeautifulSoup
        print("✅ BeautifulSoup import successful")
        
        import requests
        print("✅ Requests import successful")
        
        from googlesearch import search
        print("✅ Google search import successful")
        
        import whois
        print("✅ WHOIS import successful")
        
        from datetime import date, datetime
        from dateutil.parser import parse as date_parse
        print("✅ Date utilities import successful")
        
        from urllib.parse import urlparse
        print("✅ URL parsing import successful")
        
        # Test feature extraction
        from feature import FeatureExtraction
        print("✅ Feature extraction import successful")
        
        print("\n🎉 All imports successful! Dependencies are compatible.")
        return True
        
    except ImportError as e:
        print(f"❌ Import error: {e}")
        return False
    except Exception as e:
        print(f"❌ Unexpected error: {e}")
        return False

def test_model_loading():
    """Test if the model can be loaded successfully."""
    try:
        print("\nTesting model loading...")
        import pickle
        
        with open("pickle/model.pkl", "rb") as file:
            model = pickle.load(file)
        print("✅ Model loaded successfully")
        return True
        
    except Exception as e:
        print(f"❌ Model loading error: {e}")
        return False

if __name__ == "__main__":
    print("🧪 Testing Phishing Detection App Dependencies")
    print("=" * 50)
    
    imports_ok = test_imports()
    model_ok = test_model_loading()
    
    if imports_ok and model_ok:
        print("\n✅ All tests passed! Ready for deployment.")
    else:
        print("\n❌ Some tests failed. Please check the errors above.")
