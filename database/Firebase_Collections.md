# LifeDrop Firebase Collections

## Overview

LifeDrop uses **Firebase Cloud Firestore** as its primary NoSQL database. Data is organized into collections and documents, enabling efficient storage and real-time synchronization of users, blood requests, donations, notifications, and blood inventory.

---

## Main Collections

```text
users
donors
recipients
hospitals
bloodBanks
bloodInventory
emergencyRequests
donations
notifications
rewards
adminActivities
```

---

## 1. users

**Collection Path**

```text
users/{userId}
```

**Fields**

- name
- email
- phone
- role
- profileImage
- location
- createdAt
- updatedAt
- isActive

---

## 2. donors

**Collection Path**

```text
donors/{donorId}
```

**Fields**

- userId
- bloodGroup
- age
- gender
- location
- latitude
- longitude
- availability
- lastDonationDate
- donationCount
- verified

---

## 3. recipients

**Collection Path**

```text
recipients/{recipientId}
```

**Fields**

- userId
- bloodGroup
- location
- emergencyContact
- createdAt

---

## 4. hospitals

**Collection Path**

```text
hospitals/{hospitalId}
```

**Fields**

- name
- email
- phone
- address
- latitude
- longitude
- verificationStatus
- adminId
- createdAt

---

## 5. bloodBanks

**Collection Path**

```text
bloodBanks/{bloodBankId}
```

**Fields**

- name
- email
- phone
- address
- latitude
- longitude
- verificationStatus
- createdAt

---

## 6. bloodInventory

**Collection Path**

```text
bloodInventory/{inventoryId}
```

**Fields**

- bloodBankId
- bloodGroup
- unitsAvailable
- lastUpdated
- lowStock

---

## 7. emergencyRequests

**Collection Path**

```text
emergencyRequests/{requestId}
```

**Fields**

- requesterId
- hospitalId
- bloodGroup
- unitsRequired
- patientName
- contactNumber
- location
- urgency
- status
- createdAt

---

## 8. donations

**Collection Path**

```text
donations/{donationId}
```

**Fields**

- donorId
- hospitalId
- bloodBankId
- bloodGroup
- donationDate
- units
- status

---

## 9. notifications

**Collection Path**

```text
notifications/{notificationId}
```

**Fields**

- userId
- title
- message
- type
- isRead
- createdAt

---

## 10. rewards

**Collection Path**

```text
rewards/{rewardId}
```

**Fields**

- donorId
- title
- description
- points
- unlocked
- unlockedAt

---

## 11. adminActivities

**Collection Path**

```text
adminActivities/{activityId}
```

**Fields**

- adminId
- action
- targetId
- description
- createdAt

---

# Firebase Authentication

Firebase Authentication is responsible for:

- User Registration
- Email and Password Login
- Google Sign-In
- Password Reset
- Authentication State Management
- Secure User Authentication

The Firebase Authentication **UID** is used as the **userId** in the **users** collection to uniquely identify every registered user across the application.

---

# Summary

The Firestore database consists of **11 primary collections** that collectively manage user information, blood donations, emergency requests, blood inventory, notifications, rewards, and administrative activities. This collection structure is designed to support efficient data retrieval, scalability, and real-time synchronization for the LifeDrop application.