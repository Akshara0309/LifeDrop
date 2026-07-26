
---

## 2. `database/Tables.md`

```md
# LifeDrop Database Tables

Even though Firestore uses collections and documents rather than SQL tables, this file documents the logical data entities.

---

## 1. Users

Stores all registered users.

| Field | Type | Description |
|---|---|---|
| userId | String | Unique Firebase Authentication UID |
| name | String | User full name |
| email | String | User email |
| phone | String | Phone number |
| role | String | donor / recipient / hospital / blood_bank / admin |
| profileImage | String | Profile image URL |
| location | String | User location |
| createdAt | Timestamp | Account creation date |
| updatedAt | Timestamp | Last update date |
| isActive | Boolean | Account status |

---

## 2. Donors

Stores donor-specific information.

| Field | Type | Description |
|---|---|---|
| donorId | String | Unique donor ID |
| userId | String | Related user ID |
| bloodGroup | String | Donor blood group |
| age | Number | Donor age |
| gender | String | Donor gender |
| location | String | Donor location |
| latitude | Number | Latitude |
| longitude | Number | Longitude |
| availability | Boolean | Donor availability |
| lastDonationDate | Timestamp | Last donation date |
| donationCount | Number | Total donations |
| verified | Boolean | Verification status |

---

## 3. Recipients

Stores recipient-specific information.

| Field | Type | Description |
|---|---|---|
| recipientId | String | Unique recipient ID |
| userId | String | Related user ID |
| bloodGroup | String | Required blood group |
| location | String | Recipient location |
| emergencyContact | String | Emergency contact |
| createdAt | Timestamp | Registration date |

---

## 4. Hospitals

Stores hospital information.

| Field | Type | Description |
|---|---|---|
| hospitalId | String | Unique hospital ID |
| name | String | Hospital name |
| email | String | Hospital email |
| phone | String | Hospital contact |
| address | String | Hospital address |
| latitude | Number | Latitude |
| longitude | Number | Longitude |
| verificationStatus | String | pending / verified / rejected |
| adminId | String | Admin who verified hospital |
| createdAt | Timestamp | Registration date |

---

## 5. Blood Banks

Stores blood bank information.

| Field | Type | Description |
|---|---|---|
| bloodBankId | String | Unique blood bank ID |
| name | String | Blood bank name |
| email | String | Blood bank email |
| phone | String | Contact number |
| address | String | Blood bank address |
| latitude | Number | Latitude |
| longitude | Number | Longitude |
| verificationStatus | String | Verification status |
| createdAt | Timestamp | Registration date |

---

## 6. Blood Inventory

Stores blood stock information.

| Field | Type | Description |
|---|---|---|
| inventoryId | String | Unique inventory ID |
| bloodBankId | String | Related blood bank |
| bloodGroup | String | Blood group |
| unitsAvailable | Number | Available blood units |
| lastUpdated | Timestamp | Last stock update |
| lowStock | Boolean | Low stock indicator |

---

## 7. Emergency Requests

Stores emergency blood requests.

| Field | Type | Description |
|---|---|---|
| requestId | String | Unique request ID |
| requesterId | String | User who created request |
| hospitalId | String | Related hospital |
| bloodGroup | String | Required blood group |
| unitsRequired | Number | Required units |
| patientName | String | Patient name |
| contactNumber | String | Contact number |
| location | String | Hospital/request location |
| urgency | String | normal / urgent |
| status | String | pending / accepted / fulfilled / cancelled |
| createdAt | Timestamp | Request creation time |

---

## 8. Donations

Stores donor donation history.

| Field | Type | Description |
|---|---|---|
| donationId | String | Unique donation ID |
| donorId | String | Donor ID |
| hospitalId | String | Hospital ID |
| bloodBankId | String | Blood bank ID |
| bloodGroup | String | Donated blood group |
| donationDate | Timestamp | Donation date |
| units | Number | Number of units |
| status | String | completed / cancelled |

---

## 9. Notifications

Stores user notifications.

| Field | Type | Description |
|---|---|---|
| notificationId | String | Unique notification ID |
| userId | String | Receiver user ID |
| title | String | Notification title |
| message | String | Notification message |
| type | String | emergency / reminder / update |
| isRead | Boolean | Read status |
| createdAt | Timestamp | Notification time |

---

## 10. Rewards

Stores donor achievements.

| Field | Type | Description |
|---|---|---|
| rewardId | String | Unique reward ID |
| donorId | String | Donor ID |
| title | String | Achievement title |
| description | String | Achievement description |
| points | Number | Reward points |
| unlocked | Boolean | Achievement status |
| unlockedAt | Timestamp | Unlock date |

---

## 11. Admin Activities

Stores important admin actions.

| Field | Type | Description |
|---|---|---|
| activityId | String | Unique activity ID |
| adminId | String | Admin user ID |
| action | String | Action performed |
| targetId | String | Affected record |
| description | String | Activity description |
| createdAt | Timestamp | Activity time |