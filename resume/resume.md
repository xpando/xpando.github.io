David Findley
============
Email: david@davidfindley.net

Web: https://www.davidfindley.net

I am a software engineer with 20 years experience delivering web applications used by millions of users worldwide. I love using technology to solve difficult problems that delight and amaze my customers.


## EMPLOYMENT

### *Sr. Software Engineer*, [Amazon](https://amazon.com) (2016-08 — Present)

Amazon automated advertising provides services to hundreds of marketing teams across Amazon that enable experimentation and analysis of marketing campaigns. Our system matches the best campaigns with each customer based on many factors such as a campaign's historical performance, customer behavior and ML models produced by Amazon's data science teams. My responsiblities include prototyping, system design and reviews, code reviews, implementation, operations and mentoring other SDEs. The majority of my individual project work has been on email and mobile push metrics and reporting. Here are some highlights from my time at Amazon so far:
  - Designed event processing pipeline for ingesting, processing and sharing event data with internal analytics teams.
  - Implemented streaming click/open analytics using AWS Kinesis and AWS Glue. This project replaced the Oracle implementation and reduced the delay for metric data availablity from 24-48hrs to 1-2 hours.
  - Implemented idempotency enforcement for email sending at scale ensuring that no email is sent more than once.
  - Prototyped realtime click/open rate dashboard using ElasticSearch and Kibana for a team hackathon.

### *Technical Architect*, [Mary Kay](https://marykay.com) (2009-08 — 2016-08)

Mary Kay manufactures and sells cosmetics through a global network of independent beauty consultants. Having spent the majority of my career at Mary Kay, I enjoyed working on a diverse set of products and services that enabled the company grow into a truly global company with over $4billion of anual wholesale volume. Here are some hilights of the things I worked on most recently at Mary Kay:
  - Worked on replatforming marykay.com and marykayintouch.com on Sitecore CMS. In this role I acted as the Sitecore architect. I provided prototypes and code samples for the more difficult parts of the application and provided technical guidance to the development staff and partners that were building the solution. I also implemented the integration of Sitecore with Mary Kay's product catalog system and built the search and faceted product category pages.
  - Built the CI/CD deployment pipeline for the Sitecore projects. Prior to the Sitecore projects these sites were built using Sharepoint and releases would take as long as 6 hours to complete. Using my automated build and deploy system these releases could be executed in minutes. Additionally, developers could use the same deployment scripts on their local development machines which reduced their environment setup time from days to minutes compared to the Sharepoint development process.
  - Prototyped deploying Sitecore on Windows Server containers as a POC for our operations group.
  - Led the design and implementation of a UX redesign for myCustomers. myCustomers is a CRM tool that Mary Kay consultants use to manage their customer list and orders placed online at marykay.com. I boostrapped the project using KockoutJS and Bootstrap css. Working with BAs and Stakeholders in weekly iterations I would get feedback and approval on UX using functional protoypes built using KnockuotJS, Twitter Bootstrap and mocked backend services. These prototypes were built directly in the project and the team and I would complete the implementation once they UX was approved. We completed the redesign in 2 months compared to the 15 month developemnt effort on the previous version. My team received a CIO award for delivering the finished product in record time and the positive feedback from our stake holders and Mary Kay consultants.
  - I integrated ElasticSearch with myCustomers to provide the feceted customer and order history searches. I was able to rapidly implement this feature because of the async event based architecture of the backend services I had previously built.
  - Led the technical design and implementation of the services for marykay.com and its Personal Web Site program that allows Mary Kay consultants to sign up for and sell Mary Kay products online. I used a domain driven design approach and a CQRS/EventSourced architecture. I built out the intial code, unit tests and build automation. As the project grew I provided mentoring and code reviews for new team members.
  - The FrontOffice CRM sytem is a WPF application used internally by telepone support. The web browser views in the application used an embedded IE control that sometimes crashed the application. I implmented a new model that hosted the web browser in another process similar to how Google Chrome works. This reduced the impact of web view crashes and enabled the use of newer versions of IE.
  - The FrontOffice CRM system also needed a realtime push notification system to send state change notifications between all of the running instances. I built a service and client API for this feature. The client API provided a reactive programming model using .NET Rx extensions. The real challenge that I solved was enabling the client to write message filters that were applied on the server reducing network traffic.
  - Developed a Silverlight application that would display reporting data from an OLAP cube overlaid on a map. Data would be displayed in regions, states and zips depending on the zoom level. Allowed user to adjust coloring and ranges for the quintiles.

### *Technology Consultant*, [DevU](https://www.devu.com/) (2006-04 — 2009-08)

DevU (formerly LearnVisualStudio.net) is a video training site focused mainly on Microsoft .NET languages and tools. In this startup environment of about 4 employees I took on many roles from building the cms, payment and email campaign systems to developing example code used for training content.
  - Developed ecommerce solution for selling subscription based access to video training content. Both LearnVisualStudio.NET and TrainingSpot.com use this solution.
  - Developed an email campaign tool used to drive traffic and sales for LearnVisualStudio.NET
  - Researched and provided training course materials for LearnVisualStudio.NET.
  - Developed and recorded video training content for ASP.NET MVC 1.0.
  - Built and maintained web and database server infrastructure.

### *Technical Consultant*, [Mary Kay](https://marykay.com) (1998-10 — 2006-04)


  - Implemented the first version of marykayintouch.com, a content portal used by Mary Kay sales consultants to access news and information from Mary Kay corporate and to access many of the other suite of applications provided by Mary Kay headquarters. Used asp 3.0, VB 6, Visual InterDev and Sql Server. I also participated in the conversion of this project to .NET in later years. After porting to .NET I integrated the Google search appliance to provide a better search experience to the consultants.
  - Implemented core framework components shared by many of the .NET applications including the online ordering site.
  - Implemented the mail order entry application. This application was particularly challenging because it required quite a lot of keyboard interaction so that the data entry people could quickly navigate the order sheets. It was basically a SPA application developed in 2001-2002 using HTCs and the WebService behavior HTC from Microsoft. One interesting aspect was I built a DataSet in JavaScript so the client code was very similar to code that manipulated the order on the server side.
  - Implemented a calendar application using ASP.NET WebForms. Included a pluggable data provider model so that calendar events could be aggregated from many data sources.
  - Implemented the myBusiness application. myBusiness is a reporting tool that the Mary Kay sales force uses to see how their sales and recruiting is doing. It also provides alerts when they are close to certain recruiting or sales goals.

### *Programmer*, USData (1996-01 — 1998-10)


  - Used Microsoft Visual C/C++, Visual InterDev, Visual Basic, Visual J++, MFC, and ATL to develop distributed component solutions for the factory automation industry. Developed custom OLE containers and ActiveX/OLE controls with MFC and ATL.




## EDUCATION

### University of North Texas (1994-01 — 1996-01)



### Tarrant County Junior College (1989-01 — 1992-01)













