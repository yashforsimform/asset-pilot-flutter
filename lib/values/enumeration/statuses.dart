/// Lifecycle status of a device/asset (from the inventory & device screens).
///
/// Mirrors `device_status` in schema_v3.dbml exactly — values map 1:1 to the
/// Postgres enum (snake_case on the wire, camelCase here).
enum DeviceStatus {
  available,
  assigned,
  shippingPending,
  returnShippingPending,
  underRepair,
  maintenance,
  lost,
  retired,
  returnedToClient,
}

/// Status of an employee's device request (request list & management screens).
///
/// Mirrors `request_status` in schema_v3.dbml exactly.
enum RequestStatus {
  requested,
  pendingMgrApproval,
  pendingItApproval,
  assigned,
  completed,
  rejected,
  cancelled,
}

/// Status of a support ticket.
enum SupportStatus { open, inProgress, resolved }

/// Status of a peer-to-peer handover (owner decides; IT only audits).
enum HandoverStatus { requested, accepted, rejected, completed, cancelled }

/// Status of an assignment-extension request.
enum ExtensionStatus { pending, approved, rejected }

/// Request priority.
enum RequestPriority { low, medium, high }

/// Whether a device is company-owned or client-owned.
enum OwnerType { company, client }

/// Manager approval leg — shared by `request` and `extension_request`.
///
/// Mirrors `mgr_approval_status` in schema_v3.dbml exactly.
enum MgrApprovalStatus { notRequired, pending, approved, rejected }

/// Who rejected a `request`. Mirrors `rejected_by_enum`.
enum RejectedBy { manager, itAdmin, itAdminCancel }

/// Category of a `support_request`. Mirrors `support_type`.
enum SupportType { update, damage, lost }

/// How a `support_request` was resolved. Mirrors `support_resolution`.
enum SupportResolution { remoteResolved, repairedInPlace, swapped, markedLost }

/// `device_log` event type — append-only audit trail. Mirrors
/// `device_log_event` exactly.
enum DeviceLogEvent {
  deviceCreated,
  deviceEdited,
  assigned,
  clientAssigned,
  shipOutboundInitiated,
  shipOutboundCompleted,
  returnShipInitiated,
  returnReceived,
  assignmentCompleted,
  statusChanged,
  supportOpened,
  supportResolved,
  supportAutoClosed,
  extensionRequested,
  extensionApproved,
  extensionRejected,
  handoverRequested,
  handoverAccepted,
  handoverRejected,
  handoverCancelled,
  handoverCompleted,
  markedLost,
  retired,
  returnedToClient,
}

/// Actor role recorded on a `device_log` row. Mirrors `actor_role` — a
/// superset of [UserRole] that also allows `system` for automated events.
enum ActorRole { employee, manager, itAdmin, system }
