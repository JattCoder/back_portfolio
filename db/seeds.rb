Home.new({
    likes:0,
    linkedin:'https://www.linkedin.com/in/harmandeep-mand-softwarelife/',
    github:'https://github.com/JattCoder',
    email:'harmandeepmand.hm@gmail.com'}).save
About.new({
    pic: '../myPic/me.png',
    name:'Harmandeep S Mand',
    description:'React and React-Native developer with 2 years of experience and a strong understanding of common web technologies, languages, and frameworks, leading cross-functional teams to complete projects on time while meeting quality benchmarks.'}).save

# Apps.new({
#     name:'Cricket Standings',
#     description:'Object Oriented Ruby | Open_URI | Nokogiri',
#     source:'https://github.com/JattCoder/CWC-Standings.git',
#     live:'https://drive.google.com/file/d/1BAnmqnWjSTKrYliZQ-h05GlbB8x1ynom/view?usp=sharing'}).save
# Apps.new({
#     name:'Tesla Find-Us',
#     description:'Object Oriented Ruby | Sinatra | MVC | User Info Encryption | SQL3 ActiveRecord | Algorithms',
#     source:'https://github.com/JattCoder/Meet_Up.git',
#     live:'https://drive.google.com/file/d/1KJb345-y7lyJCv4KMCLZsiS8uUubJHud/view?usp=sharing'}).save
# Apps.new({
#     name:'Google',
#     description:'Ruby on Rails | MVC | SQL3 ActiveRecord | RestFul URLs | User Info Encryption | !Scaffold',
#     source:'https://github.com/JattCoder/Google.git',
#     live:'https://drive.google.com/file/d/1ogWOYmlLWx5iZdI9Ea5yyEaQnhwKPgsu/view?usp=sharing'}).save
# Apps.new({
#     name:'Meet Up',
#     description:'JS | HTML5 | CSS | ES6+ | Rails API | SQL3 ActiveRecord | Restful URLs | Google Auth | Google Maps, Direction and more APIs',
#     source:'https://github.com/JattCoder/Meet_Up.git',
#     live:'https://drive.google.com/file/d/18RXiSXECMGutCQXvij9v7P6eoOEE8Cd1/view?usp=sharing'}).save
# Apps.new({
#     name:'Portfolio',
#     description:'React | Redux | SASS | ES6+ | Rails API | SQL3 ActiveRecord | Restful URLs | Algorithms',
#     source:'https://github.com/JattCoder/portfolio.git',
#     live:'https://drive.google.com/file/d/1lXCpbrt6WjcxwPsjmgwTvLiAdSD_zdr8/view?usp=sharing'}).save

Languages.new({
    name: 'Ruby',
    img: '../Languages/ruby.svg'
}).save
Languages.new({
    name: 'Rails',
    img: '../Languages/rails.svg'
}).save
Languages.new({
    name: 'Javascript',
    img: '../Languages/javascript.svg'
}).save
Languages.new({
    name: 'HTML5',
    img: '../Languages/html5.svg'
}).save
Languages.new({
    name: 'CSS3',
    img: '../Languages/css3.svg'
}).save
Languages.new({
    name: 'React',
    img: '../Languages/react.svg'
}).save
Languages.new({
    name: 'Redux',
    img: '../Languages/redux.svg'
}).save
Languages.new({
    name: 'Java',
    img: '../Languages/java.svg'
}).save
Languages.new({
    name: 'Python',
    img: '../Languages/python.svg'
}).save
Languages.new({
    name: 'C',
    img: '../Languages/c.svg'
}).save
Languages.new({
    name: 'C#',
    img: '../Languages/csharp.svg'
}).save
Languages.new({
    name: 'C++',
    img: '../Languages/cplusplus.svg'
}).save

Jobs.new({name: "C's Beverage and Deli", icon: '', title: 'Manager', responsibility: ''}).save
Jobs.new({name: 'Freelance', icon: '', title: 'Full-Stack Software Developer', responsibility: ''}).save
Jobs.new({name: 'Walletifai', icon: '../Work/walletifai.png', title: 'React-Native Developer', responsibility: ''}).save

Education.new({name: 'Cleveland State University', icon: '../Schools/csu.png', description: 'CS Courses: C, Java, Data Structures and Algorithms and JavaScript'}).save
Education.new({name: 'Arizona State University', icon: '../Schools/asu.png', description: 'CS Courses: JavaScript (HTML & CSS), Python, C++'}).save
Education.new({name: 'University of California San Diego', icon: '../Schools/san.png', description: 'Algorithmic Toolbox'}).save
Education.new({name: 'Duke University', icon: '../Schools/duke.png', description: 'Java - Arrays, List Structured Data'}).save
Education.new({name: 'Duke University', icon: '../Schools/duke.png', description: 'Programming Foundation with JavaScript, HTML and CSS'}).save
Education.new({name: 'University of Michigan', icon: '../Schools/michigan.png', description: 'Interactivity with JavaScript'}).save
Education.new({name: 'Flatiron School', icon: '../Schools/flatiron.png', description: 'Full-Stack Software Engineering: Ruby, Sinatra, Rails, SQL, JS-ES6+, React and Redux'}).save

Quote.new({quote:'How does a project get to be a year late?... One day at a time.'}).save
Quote.new({quote:'Programming can be fun, so can cryptography; however they should not be combined.'}).save
Quote.new({quote:'When to use iterative development? You should use iterative development only on projects that you want to succeed.'}).save
Quote.new({quote:'Simplicity is the soul of efficiency.'}).save
Quote.new({quote:'A good way to stay flexible is to write less code.'}).save
Quote.new({quote:'When debugging, novices insert corrective code; experts remove defective code.'}).save
Quote.new({quote:'Inside every large program, there is a small program trying to get out.'}).save
Quote.new({quote:"Every good work of software starts by scratching a developer's personal itch"}).save
Quote.new({quote:'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.'}).save
Quote.new({quote:'The best way to get a project done faster is to start sooner'}).save