from flask import Flask, render_template

app = Flask(__name__)

def read_averages():
    students = []
    try:
        with open('averages.txt', 'r') as file:
            for line in file:
                name, dob, avg = line.strip().split(',')
                students.append((name, dob, avg))
    except FileNotFoundError:
        pass
    return students

@app.route('/')
def index():
    students = read_averages()
    return render_template('index.html', students=students)

@app.route('/student/<name>')
def student(name):
    students = read_averages()
    for s_name, dob, avg in students:
        if s_name == name:
            return render_template('student.html', name=s_name, dob=dob, avg=avg)
    return "Student not found", 404

if __name__ == '__main__':
    app.run(debug=True)
