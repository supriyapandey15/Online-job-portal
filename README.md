# Online-job-portal

Online Job Portal is a web application designed to streamline the job search and application process for job seekers and employers. The frontend of the application is built using HTML, CSS, JAVASCRIPT and BOOTSTRAP, providing a responsive and user-friendly interface. The backend is  powered by , MySQL, with DAO classes  handling database interactions.

# Features
   * User Registration and Authentication : Uers can create account, log-in, and manage their profiles.
   * Job Listings : Employers can post job openings, and job seekers can browse through available jobs.
   * Search and Filter : User can serach for jobs based on various criteria like job title, loaction, and category.
     
# Technologies Used 

### * Frontend

   •	HTML : For structuring the content of the web pages.

  •	CSS : For styling the web pages.

  •	Javascript : For adding interactivity and handling client-side logic.

  •	Bootstrap : For responsive design and pre-styled components.


### * Backend
  
  •	Java : For backend logic and data processing.

   •	MySQL : For database management and data storage.


# Project Features 

  The Backend consist of Java Classes structured as follows :

 ####  DBCoonect.java : 
    
    * A class to handle database connections.

 ###  DAO classes :
 
   * JobDAO.java : Contains methods for CRUD operations on job listings.

   * UserDAo.java : Contains methods for CRUD operations on user data.

  ### Entity Classes :

  * Job.java : Represents the job entity.

   * User.java : Represents the user entity.

  # Getting Started 

   ###  Prerequisites 

  * Java Development Kit  * (JDK)8 * 
     
   * MySQL Server

  * Apache Tomcat or any other Java EE web server

  ### Installation

   #####  1. Clone the repository 
     
   #####  2. Setup the MySQL database: 

   * Create a database named 'jobortal'.

  * Execute the SQL scripts in database to create necessary tables.

  ######  3. Configure the database connection:

  * Update the databae URL, username and password in 'DBConnect.java'.
              
  ######  4. Deploy the application:

  * Compile the java code and deploy it in your web server 
                 -  For Example : Apache Tomcat.

######    5. Run the Application:


  ## Usage 
  
  1. Register ass a new user.
  2.Login with your credentials.
  3.Browse available jobs.
  4. Apply for jobs (if logged in as an employer).
    
     
       
