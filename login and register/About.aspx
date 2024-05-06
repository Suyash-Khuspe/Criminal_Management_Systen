<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.About" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <linkrel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <title>About Criminal Management System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #151515;
            color: white;
        }

        div {
            padding: 20px;
            max-width: 800px;
            margin: 50px auto;
            background-color: #1f1f1f;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #4CAF50;
        }

        p {
            line-height: 1.5;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            text-decoration: underline;
            color: #45a049;
        }

        #Button1 {
            position: fixed;
            top: 20px;
            left: 20px;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        #Button1:hover {
            background-color: #45a049;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Back" CssClass="backButton" OnClick="Button1_Click" />
        <div>
               <h2>About the Criminal Management System</h2>
       <p>
           Welcome to the Criminal Management System (CMS), a comprehensive solution designed to streamline and enhance the management of criminal records and related data. Our system is developed with a commitment to facilitating efficient and secure information handling for law enforcement agencies, legal professionals, and criminal justice organizations.
       </p>

        <h2>Key Features:</h2>
<ul>
    <li>Criminal Records Management: Efficiently manage and organize detailed criminal records, including personal information, charges, and case history.</li>
    <li>User Records: Keep track of users within the system, providing access controls and ensuring data integrity.</li>
    <li>Query System: Seamlessly perform queries to retrieve relevant information, enhancing the investigative process.</li>
</ul>

<h2>Our Commitment:</h2>
<ul>
    <li><strong>Security and Confidentiality:</strong> The CMS prioritizes the security and confidentiality of sensitive data. Advanced security measures are implemented to protect information from unauthorized access.</li>
    <li><strong>Innovation in Technology:</strong> Utilizing cutting-edge technologies, our system offers a modern and scalable solution for criminal data management.</li>
</ul>

<h2>Development Team:</h2>
<p>The CMS is the result of collaborative efforts by a dedicated team of professionals with expertise in software development, data security, and criminal justice systems.</p>

<h2>System Architecture:</h2>
<p>Our system boasts a robust and scalable architecture, ensuring reliability and performance even in the face of increasing data volumes and user demands.</p>

<h2>Future Roadmap:</h2>
<p>We are committed to continuous improvement. Our roadmap includes regular updates and enhancements to provide users with the latest features and improvements.</p>

<h2>User Support:</h2>
<p>For any assistance or inquiries, our support team is readily available. Contact us <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MAIN_MENU/Contact.aspx">Here</asp:HyperLink> or visit our Contact page for more information.</p>

<h2>Legal Information:</h2>
<p>Please review our terms of use and privacy policy for important legal information regarding your use of the Criminal Management System.</p>

<h2>DEVELOPER:- "Suyash Sandeep Khuspe"</h2>



            <p>Thank you for choosing CMS. Empowering criminal justice professionals with innovative solutions for a safer community.</p>
        </div>
    </form>
</body>
</html>