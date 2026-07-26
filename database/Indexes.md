# LifeDrop Firestore Indexes

## Overview

Cloud Firestore automatically creates single-field indexes for most fields. However, composite indexes are required for queries that filter or sort using multiple fields.

The following indexes are recommended for the LifeDrop application to improve query performance.

---

## 1. Donor Search

**Purpose**

Find available donors based on blood group and availability.

```text
Collection: donors

Fields:
bloodGroup     Ascending
availability   Ascending
```

---

## 2. Emergency Requests

**Purpose**

Find pending emergency blood requests for a specific blood group.

```text
Collection: emergencyRequests

Fields:
bloodGroup     Ascending
status         Ascending
createdAt      Descending
```

---

## 3. Hospital Requests

**Purpose**

Retrieve emergency requests created by a specific hospital.

```text
Collection: emergencyRequests

Fields:
hospitalId     Ascending
status         Ascending
createdAt      Descending
```

---

## 4. Donation History

**Purpose**

Display the latest donation history for a donor.

```text
Collection: donations

Fields:
donorId        Ascending
donationDate   Descending
```

---

## 5. Notifications

**Purpose**

Display the latest notifications for a user.

```text
Collection: notifications

Fields:
userId         Ascending
createdAt      Descending
```

---

## 6. Blood Inventory

**Purpose**

Find available blood units in a specific blood bank.

```text
Collection: bloodInventory

Fields:
bloodBankId    Ascending
bloodGroup     Ascending
```

---

## 7. Hospital Verification

**Purpose**

Retrieve hospitals waiting for administrator verification.

```text
Collection: hospitals

Fields:
verificationStatus   Ascending
createdAt            Descending
```

---

## 8. Blood Bank Verification

**Purpose**

Retrieve blood banks waiting for administrator verification.

```text
Collection: bloodBanks

Fields:
verificationStatus   Ascending
createdAt            Descending
```

---

## 9. Nearby Donor Search (Optional)

**Purpose**

Retrieve available donors within a specific location.

```text
Collection: donors

Fields:
location       Ascending
availability   Ascending
bloodGroup     Ascending
```

---

## 10. Reward History (Optional)

**Purpose**

Display donor rewards ordered by the date they were earned.

```text
Collection: rewards

Fields:
donorId        Ascending
unlockedAt     Descending
```

---

## Notes

- Firestore automatically creates single-field indexes.
- Composite indexes are created only when required by application queries.
- If a required composite index is missing, Firebase provides an index creation link in the error message.
- Only create composite indexes that are necessary for application performance to avoid unnecessary storage and maintenance.

---

## Summary

The recommended indexes improve the performance of frequently used queries such as donor search, emergency request management, donation history, notifications, blood inventory lookup, and administrative verification tasks. These indexes help ensure efficient data retrieval and scalability as the LifeDrop application grows.