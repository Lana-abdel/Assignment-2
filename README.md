# README

# Proposed Project Description

### I am addressing the issue of domestic violence. Domestic Violence is informally defined as any incident or pattern of incidents of controlling, coercive, threatening behavior, violence or abuse between those aged 16 or over who are, or have been, intimate partners or family members regardless of gender or sexuality. I chose this issue because many people aren’t educated on what counts as domestic violence and in fact many each state approaches domestic abuse differently. As a result, there is no one legal definition of domestic violence. This often leaves victims feeling embarrassed, in denial about the assault, fearful they will not be taken seriously, and fearful of retaliation. I wanted to create an application that allows us to understand the importance of addressing such issues and educates people more on how prevalent domestic violence is and hopefully provide this sense of urgency that our states and our country needs to do better addressing complaints, and issues of domestic violence cases. The challenges will include double, even triple checking the information and sources that I research to ensure that no misinformation is on the web application, learning to build a web application from scratch and understanding how to add certain features to it like a quiz.  

# Project Intent 

### The idea is to provide an engaging, interactive, educational web application that users can use to learn about domestic violence. I wanted to create an application that allows us to understand the importance of addressing such issues and educates people more on how prevalent domestic violence is and hopefully provide this sense of urgency that our states and our country needs to do better addressing complaints, and issues of domestic violence cases. 

# Why is this project interesting and innovative ? 

### My project is innovative and interesting because it takes a very sensitive and serious topic and deals with it in an interactive and interesting way. This will raise awareness on the issue and appeal to many audiences and users. Domestic Violence is something people avoid talking about and oftentimes when police officers get domestic violence complaints they are trained to separate both parties and allow for some cool off time without issuing any consequences. 


# UML ANALYSIS 
#### all diagrams have been updated (if need be)

 
* [Design Class Diagram (updated from the final)](docs/FE-Design_Class_Diagram.png)
* [Use Case Diagram](docs/Use_Case_Diagram.jpeg)
* [Use case Description: Read About Domestic Violence](docs/Use_Case_Description1.jpeg)
* [Use case Description: Take A Quiz](docs/Use_Case_Description2.jpeg)
* [System Sequence Diagram (updated from the final)](docs/FE-System_Sequence_Diagram.jpeg)
* [State Chart](docs/State_Chart.jpeg)


# Test Design Discussion

### I will focus on white box and black box testing. I will primarily focus on system testing, which is a black box testing method used to evaluate the completed and integrated system, as a whole, to ensure it meets specified requirements. I will test my quiz system by creating and answering questions as I develop the quiz and ensuring that a correct answer is marked correctly, a wrong answer is marked wrong, and a score is based on how many you got right from the overall number of questions and that the score is correct. To help me with this process (especially white box testing) I will use breakpoints in VS code if I run into any bugs with functionality and calculation to help me retrace and follow through what the code is doing as I develop it, this will overall help me better understand the code and accurately develop test cases for certain functionalities. 

* [Test Design](docs/Test_Design_Updated.png)


# The Mockup and the Eight Golden Rules Discussion
### The first mockup shows the landing page (the welcome page) which will display all the information that is expected to be found on the web application. It also shows the learn more page which is composed of boxes for each topic that will be used as links to other pages so that the information is not cluttered on one page. 
  * [UI Mockup1](docs/UI_Mockup1.jpg)
### The second mockup shows what happens if a user clicks on the hyperlink to learn more about a particular topic and there is an option to take a quiz at the end. It also displays the quiz UI. 
  * [UI Mockup2](docs/UI_Mockup2.jpg)

### The last mockup displays the score page which a user will be redirected to after submitting a quiz. 

  * [UI Mockup3](docs/UI_Mockup2.jpg)

### In order to meet the eight golden rules the mockup will include: 

1. Consistency: The color scheme and formatting should be consistent and simple to not distract or overwhelm the user. The application will eventually follow this format by ensuring the same font is used,and the same shades of colors are used for every page.
2. Enable Frequent Users to use shortcuts: The website will include links to take a quiz or view information in the embedded html on almost every page to make it easier for the user so that they don't have to only click on the nav bar or click back to be able to access the quiz hyperlink.
3. Offer Informative Feedback: After taking the quiz, users will be able to receive feedback on their score and will be provided with the links for extra resources and information on the topic.
4. Design Dialogue to Yield Discourse:  Users will receive encouraging messages after completing a quiz so that they would be prompted to take another one or read more about the topic and try again.
5. Error Handling : Seamless Error Handling should be given when taking a quiz, for example if they try to leave a question blank they should not be able to submit and a message should appear to display that they must complete all questions.
6. Permit Easy Reversal of Actions: The user will be able to go back to a question, and change their answer if they want to, before they submit.
7. Support Locus of Control: The users will be given a choice to quizzes, it is their decision which quiz to take, if any at all.
8. Reduce Short Term Memory Load: There will only be one or two options in the nav bar so that the user doesn't have to remember where everything is. Hyperlinks to other pages will be embedded in an organized fashion between those navbar options. Additionally, the quizzes will be simple and straightforward (multiple choice), multiple choice questions and the information pages will not be too detailed so that the user doesn't lose interest.


# References and Links that I plan to use to get the information and create quiz: 

1. https://www.thehotline.org
2. https://www.womenslaw.org/laws/pa 
3. https://www.justice.gov/usao-wdtn/victim-witness-program/federal-domestic-violence-laws 
4. https://ncadv.org/STATISTICS 
5. https://www.safehorizon.org/get-informed/domestic-violence-statistics-facts/ 
6. https://www.doorwaysva.org/our-work/education-advocacy/the-facts-about-domestic-violence/
7. https://www.nj.gov/dcf/women/domestic/  
8. https://www.womenagainstabuse.org/donate 
9. https://freedomandcitizenship.columbia.edu/ipv-history 
10. https://www.verywellmind.com/how-to-help-a-victim-of-domestic-violence-66533

# Completed Functionality 

### All functionality that was proposed has been implemented. A user can view different pages on Domestic Violence depending on the information they want to learn. Additional functionality implemented: instead of one quiz, three quizzes were implemented to increase complexity, challenge the users, and engage them more thoroughly regarding a matter that is sensitive and important such as Domestic Violence.  

# How have I achieved modualrity, efficiency and security? 

### To ensure a modular architecture split up my methods so that every function only does one thing and that will help me develop efficient and elegant algorithms to calculate scores and create quizzes and I made sure to document the code as I develop it so that everything is easy to understand and that the code can be reused and debugged without trouble. I ensured  encapsulation by  using classes to bundle certain attributes and data. This also helps with modularity and ensuring efficiency and ease of use, especially if anyone in future classes wants to contribute to this project. An important aspect of encapsulation is information hiding so I will make sure that certain attributes are private so that ,for example, users are not able to change or edit information on the website, especially editing or changing the quiz functionality (questions, answers etc.) . To achieve security, no private information is asked from the user, users do not have admin permission (if accounts are to be implemented in the future) so that they can not edit existing quizzes. 
### Because we are using ruby on rails it follows the MVC architecture so another thing that ensures modularity, encapsulation, elegance and efficiency is to  keeping the model, view, and controller and follow good design principles on the project as this architecture allows for reusability, ease of maintenance and improved scalability. For the data structures and database I will be using postgres to implement the quiz functionality, primarily to save and store quiz questions and answers. 

# Open Source Maintenance

* [Research](docs/OpenSource_Research.md) 
* [Guidelines For This Project](docs/openSource_guidelines.md)


# How Can You Contribute? 
### There are many tasks that can be added to improve and enhance this webapplication. A functionality for users to be able to create their own quizzes and a functionality for users to view the total average of all scores for particular quiz. Implementing user accounts and creating a leader board to help strengthen engagement and participation. These are all potential improvements and enhancements for the web-application. 

# To learn how to get started with contributing to this project, visit the resources below. These files can also be found in the `docs/` directory:
- when it comes to installation, any operating system will work. If you are a tcnj student, use the elsa cluster or use the virtual machine provided in your class. All supporting software, and all the installations and dependencies are listed below: 
* [Installation Guide](docs/Installation_Guide.md) 
  * [Setting up SSH keys with GitHub](docs/Setting_up_SSH_keys_GitHub.md)
  * [Setting up the correct database](docs/SQLite3_to_Postgres_on_Rails.md)
* [More helpful information](docs/More_helpful_info.md)
* [Guide to the .gitignore file](docs/.gitignore_Guide.md)

