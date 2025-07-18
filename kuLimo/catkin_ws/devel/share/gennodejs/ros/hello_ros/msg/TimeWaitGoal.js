// Auto-generated. Do not edit!

// (in-package hello_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimeWaitGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_to_wait = null;
    }
    else {
      if (initObj.hasOwnProperty('time_to_wait')) {
        this.time_to_wait = initObj.time_to_wait
      }
      else {
        this.time_to_wait = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeWaitGoal
    // Serialize message field [time_to_wait]
    bufferOffset = _serializer.float32(obj.time_to_wait, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeWaitGoal
    let len;
    let data = new TimeWaitGoal(null);
    // Deserialize message field [time_to_wait]
    data.time_to_wait = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_ros/TimeWaitGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '490f5a78b6ea9351e88beac27668bc8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Gaol
    float32 time_to_wait # 목표 wait 시간
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeWaitGoal(null);
    if (msg.time_to_wait !== undefined) {
      resolved.time_to_wait = msg.time_to_wait;
    }
    else {
      resolved.time_to_wait = 0.0
    }

    return resolved;
    }
};

module.exports = TimeWaitGoal;
