const std = @import("std");
const zig_time = @import("zig-time");

// Structure for messages
pub const Messages = struct {
    id: [16]u8,
    payloads: [64]u8,
    timestamp: i64,
};
