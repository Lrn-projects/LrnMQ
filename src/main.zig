const std = @import("std");
const message = @import("shared/messages.zig");
const zig_time = @import("zig-time");
const buff = @import("shared/buffer.zig");

pub fn main() !void {
    var id: [16]u8 = undefined;
    var payloads: [64]u8 = undefined;
    @memset(&id, 0);
    @memset(&payloads, 0);
    const time = zig_time.now().timestamp();
    const newMessage = message.Messages{
        .id = id,
        .payloads = payloads,
        .timestamp = time,
    };
    const buf = buff.CircularBuffer.init();
    std.log.info("buff {any}", .{buf});
}
