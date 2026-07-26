# LifeDrop Sample Data

## Overview

This document contains sample fictional data used for application development, testing, and demonstration purposes. The data does not represent real users or organizations.

---

## 1. Sample User

```json
{
  "userId": "user001",
  "name": "Arun Kumar",
  "email": "arun@example.com",
  "phone": "+91XXXXXXXXXX",
  "role": "donor",
  "profileImage": "",
  "location": "Chennai",
  "createdAt": "2026-07-25T10:30:00Z",
  "updatedAt": "2026-07-25T10:30:00Z",
  "isActive": true
}
```

---

## 2. Sample Donor

```json
{
  "donorId": "donor001",
  "userId": "user001",
  "bloodGroup": "O+",
  "age": 24,
  "gender": "Male",
  "location": "Chennai",
  "latitude": 13.0827,
  "longitude": 80.2707,
  "availability": true,
  "lastDonationDate": "2026-05-10T09:00:00Z",
  "donationCount": 8,
  "verified": true
}
```

---

## 3. Sample Recipient

```json
{
  "recipientId": "recipient001",
  "userId": "user002",
  "bloodGroup": "O+",
  "location": "Chennai",
  "emergencyContact": "+91XXXXXXXXXX",
  "createdAt": "2026-07-25T11:00:00Z"
}
```

---

## 4. Sample Hospital

```json
{
  "hospitalId": "hospital001",
  "name": "Apollo Hospital",
  "email": "hospital@example.com",
  "phone": "+91XXXXXXXXXX",
  "address": "Chennai",
  "latitude": 13.0569,
  "longitude": 80.2425,
  "verificationStatus": "verified",
  "adminId": "admin001",
  "createdAt": "2026-07-20T09:30:00Z"
}
```

---

## 5. Sample Blood Bank

```json
{
  "bloodBankId": "bank001",
  "name": "LifeDrop Blood Bank",
  "email": "bloodbank@example.com",
  "phone": "+91XXXXXXXXXX",
  "address": "Chennai",
  "latitude": 13.0800,
  "longitude": 80.2700,
  "verificationStatus": "verified",
  "createdAt": "2026-07-20T09:30:00Z"
}
```

---

## 6. Sample Blood Inventory

```json
{
  "inventoryId": "inventory001",
  "bloodBankId": "bank001",
  "bloodGroup": "O+",
  "unitsAvailable": 160,
  "lastUpdated": "2026-07-25T12:00:00Z",
  "lowStock": false
}
```

---

## 7. Sample Emergency Request

```json
{
  "requestId": "request001",
  "requesterId": "recipient001",
  "hospitalId": "hospital001",
  "bloodGroup": "O+",
  "unitsRequired": 2,
  "patientName": "Test Patient",
  "contactNumber": "+91XXXXXXXXXX",
  "location": "Chennai",
  "urgency": "urgent",
  "status": "pending",
  "createdAt": "2026-07-25T13:00:00Z"
}
```

---

## 8. Sample Donation

```json
{
  "donationId": "donation001",
  "donorId": "donor001",
  "hospitalId": "hospital001",
  "bloodBankId": "bank001",
  "bloodGroup": "O+",
  "donationDate": "2026-07-25T14:00:00Z",
  "units": 1,
  "status": "completed"
}
```

---

## 9. Sample Notification

```json
{
  "notificationId": "notification001",
  "userId": "user001",
  "title": "Emergency Blood Request",
  "message": "O+ blood is urgently required near your location.",
  "type": "emergency",
  "isRead": false,
  "createdAt": "2026-07-25T15:00:00Z"
}
```

---

## 10. Sample Reward

```json
{
  "rewardId": "reward001",
  "donorId": "donor001",
  "title": "Lifesaver",
  "description": "Awarded for completing multiple successful blood donations.",
  "points": 100,
  "unlocked": true,
  "unlockedAt": "2026-07-25T16:00:00Z"
}
```

---

## 11. Sample Admin Activity

```json
{
  "activityId": "activity001",
  "adminId": "admin001",
  "action": "Verify Hospital",
  "targetId": "hospital001",
  "description": "Hospital verification approved by administrator.",
  "createdAt": "2026-07-25T17:00:00Z"
}
```

---

## Notes

- All sample data shown in this document is fictional and intended only for development, testing, and demonstration purposes.
- Actual application data will be securely stored in Firebase Cloud Firestore.
- Sample records can be imported into Firestore during development to test application functionality.