# LifeDrop Firebase Security Rules

## 1. Security Objectives

The LifeDrop database must ensure that:

- Only authenticated users can access protected resources.
- Users can access only the information they are authorized to view.
- Users can update only their own profiles.
- Donors can manage only their own donor information.
- Recipients can manage only their own requests.
- Hospitals can manage only their own records and emergency requests.
- Blood banks can manage only their own blood inventory.
- Administrators have elevated privileges to manage the system.
- Unauthorized users cannot access private data.

---

## 2. Authentication

All protected Firestore operations require an authenticated Firebase user.

```text
request.auth != null
```

Firebase Authentication is used to verify the identity of every user before allowing access to Firestore data.

---

## 3. User Access

Users can:

- Register an account.
- View their own profile.
- Update their own profile.
- Delete their own account (if supported by the application).

Users cannot:

- Read another user's private profile.
- Modify another user's account.
- Delete another user's account.

---

## 4. Donor Access

A donor can:

- View their own donor profile.
- Update their availability status.
- Update their location.
- View their donation history.
- View earned rewards.
- Receive emergency donation requests.

A donor cannot:

- Modify another donor's profile.
- Delete another donor's records.

---

## 5. Recipient Access

Recipients can:

- Manage their own recipient profile.
- Create emergency blood requests.
- View their own requests.
- Track request status.
- View eligible donor information when authorized.

Recipients cannot:

- Modify another recipient's profile.
- Delete another user's requests.

---

## 6. Hospital Access

Verified hospitals can:

- Create emergency blood requests.
- View eligible donor information.
- Update request status.
- Manage their own hospital profile.
- View donation records related to their hospital.

Hospitals cannot:

- Modify another hospital's profile.
- Access unauthorized hospital records.

---

## 7. Blood Bank Access

Verified blood banks can:

- View their blood inventory.
- Update blood stock information.
- Manage inventory records.
- View blood requests relevant to their inventory.

Blood banks cannot:

- Modify another blood bank's inventory.
- Access confidential records of other blood banks.

---

## 8. Admin Access

Administrators have elevated permissions.

Admins can:

- Manage users.
- Verify hospitals.
- Verify blood banks.
- View system activities.
- Manage emergency requests.
- Generate reports.
- Monitor application usage.

Administrative privileges should be assigned using secure server-side role management and must not rely solely on client-provided role values.

---

## 9. Notifications

Users can:

- View their own notifications.
- Mark notifications as read.

Users cannot:

- Read another user's notifications.
- Delete or modify another user's notifications.

---

## 10. Rewards

Donors can:

- View their earned rewards.
- View badges and achievement points.

Reward creation, updates, and deletion should only be performed by trusted backend services or administrators.

---

## 11. Data Validation

The application should validate:

- Required fields
- Valid email addresses
- Valid phone numbers
- Blood group values
- User roles
- Request status
- Verification status
- Numeric values
- Geographic coordinates
- Timestamp values

Invalid or incomplete data should be rejected before being stored.

---

## 12. Sensitive Information

Sensitive information includes:

- Phone numbers
- Email addresses
- User location
- Emergency contact details
- Authentication information

Sensitive data should only be accessible to authorized users who require it for application functionality.

---

## 13. Security Principle

LifeDrop follows the **Principle of Least Privilege**.

Every user is granted only the minimum permissions necessary to perform their assigned tasks. Access to sensitive data and administrative functions is restricted through authentication, authorization, and role-based access control (RBAC).

---

## 14. Summary

The security model of LifeDrop is designed to ensure data confidentiality, integrity, and availability by enforcing authentication, role-based authorization, secure data validation, and restricted access to sensitive information. These security practices help protect user privacy while maintaining the reliability and trustworthiness of the blood donation management system.