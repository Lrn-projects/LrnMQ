const message = @import("messages.zig");

pub const CircularBuffer = struct {
    buffer: [256]message.Messages,
    head: usize,
    tail: usize,
    size: usize,

    pub fn init() CircularBuffer {
        return CircularBuffer{ .buffer = undefined, .head = 0, .tail = 0, .size = 256 };
    }
};
