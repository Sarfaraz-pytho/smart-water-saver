# Smart Water Saver 💧

A simple web-based Smart Water Saver prototype using **Python (Flask)** for the backend and **HTML/CSS** for the frontend.

## What it does

The user enters daily household water usage and the number of people in the household. The Python backend calculates water usage per person and gives a simple recommendation.

## Features

- Simple HTML web interface
- Python Flask backend
- Water usage calculation
- Basic usage recommendations
- Input limits for safer/valid values
- Simple water-saving tips

## Project structure

```text
smart-water-saver/
├── app.py
├── templates/
│   └── index.html
├── requirements.txt
└── README.md
```

## How to run

1. Install Python 3.
2. Open a terminal in the project folder.
3. Install the dependency:

```bash
pip install -r requirements.txt
```

4. Start the application:

```bash
python app.py
```

5. Open `http://127.0.0.1:5000` in your browser.

## Sample input/output

**Input:** 100 litres daily usage and 4 people.

**Output:** `Your usage is 25.0 litres per person. Great! 💧`

## Edge cases

1. **One person:** The calculation works because the form requires at least 1 person.
2. **Very high usage:** The program displays a high-usage warning above 100 litres per person.
3. **Invalid zero/negative values:** The HTML form prevents zero or negative values from being submitted through the normal interface.

## Practical impact

This prototype can help households understand approximate water usage per person and encourage simple conservation habits. It can later be extended with historical tracking, charts, household comparisons, leak detection, smart-meter data, and personalized recommendations.

## Limitation

The project uses a simple rule-based calculation. It does not measure real water consumption from sensors and does not account for factors such as climate or different water-use activities.

## SDG alignment

This project supports **United Nations Sustainable Development Goal 6: Clean Water and Sanitation**, especially responsible water management and improved water-use efficiency. By converting total household water usage into usage per person, the project gives users an easy way to understand their consumption and recognize when it may be high. The recommendation system encourages simple conservation actions such as reducing unnecessary tap use and fixing leaks. While this prototype does not directly monitor physical water systems, it can act as an awareness and decision-support tool. A larger version could connect to smart meters or sensors, store historical data, identify unusual consumption, and provide personalized conservation plans. Its main limitation is that the current version relies on manually entered data and simple rules.

## Technology

- Python
- Flask
- HTML
- CSS

This is a learning/practice prototype and can be expanded later for a full hackathon solution. The final hackathon project will depend on the problem statement assigned by the organizers.
