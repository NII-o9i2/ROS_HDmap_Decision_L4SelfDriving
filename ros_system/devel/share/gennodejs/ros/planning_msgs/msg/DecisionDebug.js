// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleIn = require('./ObstacleIn.js');

//-----------------------------------------------------------

class DecisionDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle = null;
      this.lanechange_id = null;
      this.lane_id = null;
      this.ego_cost = null;
      this.onlane_obs_num = null;
      this.lanechange_process = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle')) {
        this.obstacle = initObj.obstacle
      }
      else {
        this.obstacle = new Array(50).fill(new ObstacleIn());
      }
      if (initObj.hasOwnProperty('lanechange_id')) {
        this.lanechange_id = initObj.lanechange_id
      }
      else {
        this.lanechange_id = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('ego_cost')) {
        this.ego_cost = initObj.ego_cost
      }
      else {
        this.ego_cost = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('onlane_obs_num')) {
        this.onlane_obs_num = initObj.onlane_obs_num
      }
      else {
        this.onlane_obs_num = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('lanechange_process')) {
        this.lanechange_process = initObj.lanechange_process
      }
      else {
        this.lanechange_process = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DecisionDebug
    // Check that the constant length array field [obstacle] has the right length
    if (obj.obstacle.length !== 50) {
      throw new Error('Unable to serialize array field obstacle - length must be 50')
    }
    // Serialize message field [obstacle]
    obj.obstacle.forEach((val) => {
      bufferOffset = ObstacleIn.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lanechange_id]
    bufferOffset = _serializer.int8(obj.lanechange_id, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int8(obj.lane_id, buffer, bufferOffset);
    // Check that the constant length array field [ego_cost] has the right length
    if (obj.ego_cost.length !== 3) {
      throw new Error('Unable to serialize array field ego_cost - length must be 3')
    }
    // Serialize message field [ego_cost]
    bufferOffset = _arraySerializer.float32(obj.ego_cost, buffer, bufferOffset, 3);
    // Check that the constant length array field [onlane_obs_num] has the right length
    if (obj.onlane_obs_num.length !== 3) {
      throw new Error('Unable to serialize array field onlane_obs_num - length must be 3')
    }
    // Serialize message field [onlane_obs_num]
    bufferOffset = _arraySerializer.int8(obj.onlane_obs_num, buffer, bufferOffset, 3);
    // Serialize message field [lanechange_process]
    bufferOffset = _serializer.int8(obj.lanechange_process, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DecisionDebug
    let len;
    let data = new DecisionDebug(null);
    // Deserialize message field [obstacle]
    len = 50;
    data.obstacle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle[i] = ObstacleIn.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lanechange_id]
    data.lanechange_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ego_cost]
    data.ego_cost = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [onlane_obs_num]
    data.onlane_obs_num = _arrayDeserializer.int8(buffer, bufferOffset, 3)
    // Deserialize message field [lanechange_process]
    data.lanechange_process = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/DecisionDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da2ec6dc8e24bc6e33c0fa04fe1dfa3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      ObstacleIn[50] obstacle
      int8 lanechange_id
      int8 lane_id
      float32[3] ego_cost
      int8[3] onlane_obs_num
      int8 lanechange_process
    
    ================================================================================
    MSG: planning_msgs/ObstacleIn
    int8 id
    float32 s
    float32 l
    float32 vs
    float32 as
    float32 vl
    float32 al
    int8 lane_no
    float32 time_cost
    float32 des_cost
    float32 decision_cost
    int8 decision_tag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DecisionDebug(null);
    if (msg.obstacle !== undefined) {
      resolved.obstacle = new Array(50)
      for (let i = 0; i < resolved.obstacle.length; ++i) {
        if (msg.obstacle.length > i) {
          resolved.obstacle[i] = ObstacleIn.Resolve(msg.obstacle[i]);
        }
        else {
          resolved.obstacle[i] = new ObstacleIn();
        }
      }
    }
    else {
      resolved.obstacle = new Array(50).fill(new ObstacleIn())
    }

    if (msg.lanechange_id !== undefined) {
      resolved.lanechange_id = msg.lanechange_id;
    }
    else {
      resolved.lanechange_id = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.ego_cost !== undefined) {
      resolved.ego_cost = msg.ego_cost;
    }
    else {
      resolved.ego_cost = new Array(3).fill(0)
    }

    if (msg.onlane_obs_num !== undefined) {
      resolved.onlane_obs_num = msg.onlane_obs_num;
    }
    else {
      resolved.onlane_obs_num = new Array(3).fill(0)
    }

    if (msg.lanechange_process !== undefined) {
      resolved.lanechange_process = msg.lanechange_process;
    }
    else {
      resolved.lanechange_process = 0
    }

    return resolved;
    }
};

module.exports = DecisionDebug;
