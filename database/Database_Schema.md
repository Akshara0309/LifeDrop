# LifeDrop Database Schema

## 1. Project Overview

LifeDrop is a Smart Blood Donation and Emergency Blood Management System designed to connect donors, recipients, hospitals, blood banks, and administrators through a centralized platform.

The database stores and manages user information, blood groups, donor availability, emergency blood requests, donation history, blood inventory, notifications, rewards, and administrative activities.

---

## 2. Database Technology

The LifeDrop application uses the following Firebase services:

- **Database:** Firebase Cloud Firestore
- **Authentication:** Firebase Authentication
- **File Storage:** Firebase Storage
- **Notifications:** Firebase Cloud Messaging (FCM)

---

## 3. Main Entities

The primary entities of the LifeDrop database are:

1. Users
2. Donors
3. Recipients
4. Hospitals
5. Blood Banks
6. Blood Inventory
7. Emergency Requests
8. Donations
9. Notifications
10. Rewards
11. Admin Activities

---

## 4. Entity Relationships

### User → Donor

One user can have one donor profile.

### User → Recipient

One user can have one recipient profile.

### Hospital → Emergency Request

A hospital can create multiple emergency blood requests.

### Recipient → Emergency Request

A recipient can create multiple emergency blood requests.

### Donor → Donations

A donor can have multiple donation records.

### Blood Bank → Blood Inventory

A blood bank maintains multiple blood inventory records.

### User → Notifications

A user can receive multiple notifications.

### Donor → Rewards

A donor can earn multiple rewards.

---

## 5. Database Structure

```text
Users
│
├── Donor Profile
├── Recipient Profile
└── Notifications

Hospitals
│
└── Emergency Requests

Blood Banks
│
└── Blood Inventory

Donors
│
├── Donations
└── Rewards

Admin
│
└── Admin Activities
```

---

## 6. Important Data

The database stores the following information:

- User name
- Email address
- Phone number
- Blood group
- Location
- Date of birth
- Gender
- Donor availability
- Last donation date
- Total donation count
- Hospital details
- Blood bank details
- Blood inventory
- Emergency requests
- Donation records
- Notifications
- Rewards and achievements
- Administrative activities

---

## 7. Data Validation

The application validates:

- Email format
- Phone number format
- Blood group values
- Required fields
- User role
- Hospital verification status
- Blood bank verification status
- Emergency request status
- Donation status
- Numeric values
- Timestamp values

Invalid or incomplete data is rejected before being stored in the database.

---

## 8. Supported Blood Groups

The system supports the following blood groups:

- A+
- A-
- B+
- B-
- AB+
- AB-
- O+
- O-

---

## 9. User Roles

The application supports the following user roles:

- Donor
- Recipient
- Hospital
- Blood Bank
- Administrator

---

## 10. Emergency Request Status

Emergency blood requests can have one of the following statuses:

- Pending
- Accepted
- Fulfilled
- Cancelled

---

## 11. Verification Status

Hospitals and Blood Banks can have the following verification statuses:

- Pending
- Verified
- Rejected

Only verified organizations are allowed to participate in blood request and donation management.

---

## 12. Database Goals

The LifeDrop database is designed to provide:

- Secure data storage
- Fast donor search
- Real-time emergency blood request management
- Blood inventory management
- Donation tracking
- Notification management
- Reward management
- Role-based access control
- Administrative monitoring and reporting
- Scalable and efficient data management using Firebase Cloud Firestore

---

## 13. Summary

The LifeDrop database schema provides a scalable and secure foundation for managing blood donation services using Firebase Cloud Firestore. The schema is designed to support real-time synchronization, efficient document retrieval, role-based access control, and seamless integration with Flutter and other Firebase services.