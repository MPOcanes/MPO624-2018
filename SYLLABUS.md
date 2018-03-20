# Syllabus of MPO/ATM 642, spring 2018
Applied Data Analysis (in an oceanography/meteorology setting). https://github.com/MPO624/2018.

Instructor: Brian Mapes, mapes@miami.edu. MSC366 is my office. 
TA: Mampi Sarkar, mampi.sarkar@rsmas.miami.edu

Class meets: 10:30-11:45 Tues-Thurs, MSC 329
Clinc / office hours: let's arrange 

No required text, all software is free. 

## Goals and spirit of the course
##### _If you want to build a ship, don't drum up people to collect wood and don't assign them tasks and work, but rather teach them to long for the endless immensity of the sea. --Antoine de Saint-Exupery_

What I hope the course will leave you with (learning outcome) is: 

  (1) an appreciation, deep interest, confidence, and good feeling about continuing to think and learn about ADA, which is, taken broadly, the essence of the life of the mind (really).  

  (2) a broad vocabulary, and the associated approaciation of the space it spans.

  (3) depth in one area: a can-do feeling, set of tools, and a personal success (your project).

This course is not static from year to year! The enrollment is small enough that we can customize topics and examples. More fundamentally, the Data Age is exploding around us, and 2 years is a long time. There is a swelling ocean of free knowledge and capabilities, more than anyone can fully master or even know about. Tomorrow’s successful researcher in our field (or perhaps every field) must know the vocabulary to feel oriented in that ocean, as well as how to use some familiar ‘traditional’ methods and tools. Subtler virtues I hope will come along with those include provisional confindence (the feeling that I could learn this if I wanted to), in the context of a rational inattention strategy toward knowledge (appropriate triage of the too-many things contending for one’s attention). 

## Activities and grading
Three credits means we have 28 75-minute classes together, plus double that much of your time dedicated to working on your own (or with me or the TA in office hours/ ‘clinic’ sessions). I will try to respect your time by bounding the assignments according to time estimates. If you should put in earnest effort at the appropriate time level, your grade will be no problem for you. The goal is to go from where you are to where you can get to. Advanced students may help the less prepared: please collaborate freely and generously! 

#### Student work expectations are: 
  * 10% Attendance and participation in class, except for excused absences. This is just so nobody falls silently behind -- excused just means you email me an excuse. 

  * 5% One early-term categorization of the evidence for the claims, in a research paper of your choice. Essentially this is diagram and argument critique, with the science content hidden. The Applied in the course title! And getting to know each other. 
  
  * 15% Execute the 3 course modules' assignments (Jupyter notebooks). The standard parts are simply to execute (maybe I will salt them with errors to make you pay attention), then you apply the same techniques to unique data (ideally, toward your project). Due at the end of each module, plus one week. 
  
  * 10% 3-4 short (5-10 minute) "scouting report" presentations through the term. Each class will begin with a scouting report (so 30 is slightly too many). These will be assigned by volunteering, so make sure you do step up and volunteer when something interests you. The task will be to explore and report about issues or software that may come up 1-2 classes before. Let's meet before you present, so we can strategize how to boil down your explorations into a very concise report. 
  
  * 30% End-of term research project presentation (15+ minutes). These will likely take the form of a Jupyter notebook (or Matlab live script), so it also stands as a written record of the work (for your professional portfolio, and as a reference for your further work). Presentation time will be by arrangement, at the end of the term. 
  
  * 30% Three mini-exams (in class) and an inclusive final will make you upload course vocabulary and essential take-away knowledge into your brain, more than once since repetition is key to lasting learning. A draft of the final exam for no credit will be done at the beginning of class, so I can plan my teaching around your needs and interests. There will be no surprise about what all is on the exam! It may take the form of a take-home portion (long, so it can be comprehensive of the broad sweep of our material), with a small timed closed-book subset to encourage you to memorize and think over the material one last time. 
  
## Course structure
Structure is needed, to get a rope around such a vast topic area. 

### Theory Tuesdays, Computer Thursdays
Tuesdays will cover the essential ideas and vocabulary, aimed at the Final Exam. These classes will consist of (often) whiteboard lectures about the exam’s vocabulary and topic list, especially those least clear to students in the initial Draft Exam exercise. I will sometimes draw on books (see Supplemental Reading below), but often the topic is simply a matter of logic: once you understand, Wikipedia or any book can be used to look up the details of find extensions of the basic idea. 

Thursdays will be done with a projector, often with follow-along exercises that make up the standard parts of your 3 homework assignments. Additional clinic sessions will be offered regularly, details to be arranged. I will be working on related programming activities in a room somewhere, happy for camaraderie of others, and happy to answer your questions about the homeworks or projects or your 3 scouting expeditions or anything else. 

### 3 modules: stats survey, series methods, empirical methods 
Three main modules break up the 14 weeks into ~4 week chunks.

1. Notations, basic statistics, and the analysis landscape. Exam take-aways are deep understandings and internalization of the concepts of mean, standard deviation, and the triplet of correlation, covariance, and regression coefficient. But our whole vocabulary will be surveyed, using the many dichotomies (like paramatric vs. nonparametric; a priori vs. a posteriori significance, etc. etc.) meant to orient you to the vastness of it all. 

2. Series methods. When one has data that are ordered and placed along a dimension like time, special methods apply that all students should know the basics of. Fourier analysis is the most common of these. Exam take-aways from there will be basic understanding of the mapping from physical to spectral space, and the many ways to display and interpret spectra (and why these are variously used). The nature of the most common null hypotheses (white and colored noises, especially AR1 “red noise”) undergird those interpretations. At the end, we will get a glimpse of wavelet methods. 

3. Empirical of data-driven analysis. This agnostic approach is philosophically satisfying in many ways, but there are pitfalls. Exam take-aways will be a structural view of the decompositions that these methods imply, e.g. data(x,t) = EOF1(x) PC1(t) + EOF2(x) PC2(t) + … At the end, we will get a glimpse of machine learning methods, and exploding fashionable approach in “data science”, but one with limitations for the enterprise of natural science, where we seek an account or claims about the world, and use data as evidence for those accounts or claims. 

With 4 weeks for each module, plus initial and wrapup activities, this will fill the time we have together. A detailed schedule is in the CALENDAR.md file. 
