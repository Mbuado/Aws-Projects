# 🏨 Hotel Booking Chatbot with Amazon Lex, Lambda, and WhatsApp Integration

This project demonstrates how to build and extend a hotel booking chatbot using Amazon Lex, AWS Lambda, and Twilio WhatsApp Messaging. The chatbot can collect hotel booking information, validate it using backend logic, and even interact with users via WhatsApp.

> 🔗 Full YouTube Playlist: [Conversational AI and Chatbot with Amazon Lex](https://www.youtube.com/playlist?list=PLAMHV77MSKJ7s4jE7F_k_Od8qZlFGf1BY)

---

##  Tech Stack

Amazon Lex (V1/V2) – Natural language interface
AWS Lambda (Python) – Fulfillment and logic processing
Twilio API – WhatsApp messaging integration
IAM Roles & Permissions
Amazon CloudWatch** – Logging and monitoring

---

 Core Features

- Hotel booking chatbot using slot filling
- Lambda-based backend for validation and processing
- WhatsApp integration using Twilio
- Real-time conversational experience over multiple channels

---

 Project Structure



Getting Started

1. Set Up Amazon Lex

- Import `lex-bot-definition.json` into the Lex console
- Configure slots and utterances
- Link to a Lambda function under “Fulfillment”

2. Deploy Lambda Function

- Paste code from `lambda_function.py` into a new Lambda function from https://github.com/PradipNichite/Youtube-Tutorials/blob/main/Amazon_Lex/Part2.py
- Assign correct IAM permissions
- Test using `test_events.json`

3. Connect WhatsApp via Twilio

Watch the detailed guide: [📹 Twilio + WhatsApp + Lex Integration](https://youtu.be/KLUONyhcjNI)

- Set up a Twilio sandbox for WhatsApp
- Link your Twilio number to a webhook (AWS Lambda or API Gateway)
- Write a Lambda function (e.g., `twilio-webhook-lambda.py`) to process incoming messages and forward them to Lex
- Parse Lex responses and return them to WhatsApp users



