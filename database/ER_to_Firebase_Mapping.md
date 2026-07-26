# LifeDrop ER Model to Firebase Mapping

## 1. Overview

The LifeDrop application uses **Firebase Cloud Firestore** as its primary database instead of a traditional relational SQL database.

In Firestore, data is organized into **collections** and **documents**. Each entity from the ER model is mapped to a corresponding Firestore collection. Relationships between entities are maintained using document IDs and reference fields.

---

## 2. Entity Mapping

| ER Entity | Firebase Collection |
|-----------|---------------------|
| User | users |
| Donor | donors |
| Recipient | recipients |
| Hospital | hospitals |
| Blood Bank | bloodBanks |
| Blood Inventory | bloodInventory |
| Emergency Request | emergencyRequests |
| Donation | donations |
| Notification | notifications |
| Reward | rewards |
| Admin Activity | adminActivities |

---

## 3. User Mapping

**ER Entity**

```text
User
```

**Firebase Collection**

```text
users/{userId}
```

**Relationships**

```text
User (1) -------- (1) Donor

User (1) -------- (1) Recipient

User (1) -------- (N) Notifications
```

---

## 4. Donor Mapping

**ER Entity**

```text
Donor
```

**Firebase Collection**

```text
donors/{donorId}
```

**Relationships**

```text
User (1) -------- (1) Donor

Donor (1) -------- (N) Donations

Donor (1) -------- (N) Rewards
```

---

## 5. Recipient Mapping

**ER Entity**

```text
Recipient
```

**Firebase Collection**

```text
recipients/{recipientId}
```

**Relationships**

```text
User (1) -------- (1) Recipient

Recipient (1) -------- (N) Emergency Requests
```

---

## 6. Hospital Mapping

**ER Entity**

```text
Hospital
```

**Firebase Collection**

```text
hospitals/{hospitalId}
```

**Relationships**

```text
Hospital (1) -------- (N) Emergency Requests

Hospital (1) -------- (N) Donations
```

---

## 7. Blood Bank Mapping

**ER Entity**

```text
Blood Bank
```

**Firebase Collection**

```text
bloodBanks/{bloodBankId}
```

**Relationships**

```text
Blood Bank (1) -------- (N) Blood Inventory

Blood Bank (1) -------- (N) Donations
```

---

## 8. Blood Inventory Mapping

**ER Entity**

```text
Blood Inventory
```

**Firebase Collection**

```text
bloodInventory/{inventoryId}
```

**Relationships**

```text
Blood Bank (1) -------- (N) Blood Inventory
```

---

## 9. Emergency Request Mapping

**ER Entity**

```text
Emergency Request
```

**Firebase Collection**

```text
emergencyRequests/{requestId}
```

**Relationships**

```text
Recipient (1) -------- (N) Emergency Requests

Hospital (1) -------- (N) Emergency Requests
```

---

## 10. Donation Mapping

**ER Entity**

```text
Donation
```

**Firebase Collection**

```text
donations/{donationId}
```

**Relationships**

```text
Donor (1) -------- (N) Donations

Hospital (1) -------- (N) Donations

Blood Bank (1) -------- (N) Donations
```

---

## 11. Notification Mapping

**ER Entity**

```text
Notification
```

**Firebase Collection**

```text
notifications/{notificationId}
```

**Relationships**

```text
User (1) -------- (N) Notifications
```

---

## 12. Reward Mapping

**ER Entity**

```text
Reward
```

**Firebase Collection**

```text
rewards/{rewardId}
```

**Relationships**

```text
Donor (1) -------- (N) Rewards
```

---

## 13. Admin Activity Mapping

**ER Entity**

```text
Admin Activity
```

**Firebase Collection**

```text
adminActivities/{activityId}
```

**Relationships**

```text
Admin (1) -------- (N) Admin Activities
```

---

## 14. Firestore Database Structure

```text
Firestore
│
├── users
├── donors
├── recipients
├── hospitals
├── bloodBanks
├── bloodInventory
├── emergencyRequests
├── donations
├── notifications
├── rewards
└── adminActivities
```

---

## 15. Relationship Summary

```text
User
│
├── Donor
│   ├── Donations
│   └── Rewards
│
├── Recipient
│   └── Emergency Requests
│
└── Notifications

Hospital
├── Emergency Requests
└── Donations

Blood Bank
├── Blood Inventory
└── Donations

Admin
└── Admin Activities
```

---

## 16. Design Approach

Firebase Cloud Firestore uses a **NoSQL document-based architecture** rather than relational tables.

Relationships between collections are maintained using document reference fields such as:

```text
userId
donorId
recipientId
hospitalId
bloodBankId
inventoryId
requestId
donationId
notificationId
rewardId
activityId
```

Instead of SQL joins, related documents are connected using these identifiers. This approach provides:

- High scalability
- Fast document retrieval
- Flexible schema evolution
- Efficient real-time synchronization
- Seamless integration with Flutter and Firebase services

---

## 17. Summary

The ER model has been successfully mapped to Firebase Cloud Firestore using **11 primary collections**. Each entity is represented as a dedicated collection, while relationships are maintained through document identifiers and reference fields. This design supports a scalable, secure, and efficient backend architecture for the LifeDrop application.