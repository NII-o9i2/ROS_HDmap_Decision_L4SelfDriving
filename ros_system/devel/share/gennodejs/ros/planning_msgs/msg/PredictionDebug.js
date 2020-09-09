// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Propt = require('./Propt.js');
let ObstaclePred = require('./ObstaclePred.js');
let GlobalObstacle = require('./GlobalObstacle.js');

//-----------------------------------------------------------

class PredictionDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.propt = null;
      this.obstacle_pred = null;
      this.obstacle_glbl = null;
    }
    else {
      if (initObj.hasOwnProperty('propt')) {
        this.propt = initObj.propt
      }
      else {
        this.propt = new Array(32).fill(new Propt());
      }
      if (initObj.hasOwnProperty('obstacle_pred')) {
        this.obstacle_pred = initObj.obstacle_pred
      }
      else {
        this.obstacle_pred = new Array(64).fill(new ObstaclePred());
      }
      if (initObj.hasOwnProperty('obstacle_glbl')) {
        this.obstacle_glbl = initObj.obstacle_glbl
      }
      else {
        this.obstacle_glbl = new Array(32).fill(new GlobalObstacle());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionDebug
    // Check that the constant length array field [propt] has the right length
    if (obj.propt.length !== 32) {
      throw new Error('Unable to serialize array field propt - length must be 32')
    }
    // Serialize message field [propt]
    obj.propt.forEach((val) => {
      bufferOffset = Propt.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [obstacle_pred] has the right length
    if (obj.obstacle_pred.length !== 64) {
      throw new Error('Unable to serialize array field obstacle_pred - length must be 64')
    }
    // Serialize message field [obstacle_pred]
    obj.obstacle_pred.forEach((val) => {
      bufferOffset = ObstaclePred.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [obstacle_glbl] has the right length
    if (obj.obstacle_glbl.length !== 32) {
      throw new Error('Unable to serialize array field obstacle_glbl - length must be 32')
    }
    // Serialize message field [obstacle_glbl]
    obj.obstacle_glbl.forEach((val) => {
      bufferOffset = GlobalObstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionDebug
    let len;
    let data = new PredictionDebug(null);
    // Deserialize message field [propt]
    len = 32;
    data.propt = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.propt[i] = Propt.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_pred]
    len = 64;
    data.obstacle_pred = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_pred[i] = ObstaclePred.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_glbl]
    len = 32;
    data.obstacle_glbl = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_glbl[i] = GlobalObstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 142;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PredictionDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d3465080864d10f01de4bdd96ef7bc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Propt[32] propt
    ObstaclePred[64] obstacle_pred
    GlobalObstacle[32] obstacle_glbl
    
    ================================================================================
    MSG: planning_msgs/Propt
    float32 frenet_l
    float32 frenet_s
    float32 angle_diff
    
    ================================================================================
    MSG: planning_msgs/ObstaclePred
    float32[10] prediction_x
    float32[10] prediction_y
    uint32 predict_method
    bool is_valid
    
    ================================================================================
    MSG: planning_msgs/GlobalObstacle
    float32 enu_x
    float32 enu_y
    float32 enu_theta
    float32 enu_vx
    float32 enu_vy
    float32 enu_ax
    float32 enu_ay
    float32 confidence
    int8 type
    float32 velocity
    float32 length
    float32 width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionDebug(null);
    if (msg.propt !== undefined) {
      resolved.propt = new Array(32)
      for (let i = 0; i < resolved.propt.length; ++i) {
        if (msg.propt.length > i) {
          resolved.propt[i] = Propt.Resolve(msg.propt[i]);
        }
        else {
          resolved.propt[i] = new Propt();
        }
      }
    }
    else {
      resolved.propt = new Array(32).fill(new Propt())
    }

    if (msg.obstacle_pred !== undefined) {
      resolved.obstacle_pred = new Array(64)
      for (let i = 0; i < resolved.obstacle_pred.length; ++i) {
        if (msg.obstacle_pred.length > i) {
          resolved.obstacle_pred[i] = ObstaclePred.Resolve(msg.obstacle_pred[i]);
        }
        else {
          resolved.obstacle_pred[i] = new ObstaclePred();
        }
      }
    }
    else {
      resolved.obstacle_pred = new Array(64).fill(new ObstaclePred())
    }

    if (msg.obstacle_glbl !== undefined) {
      resolved.obstacle_glbl = new Array(32)
      for (let i = 0; i < resolved.obstacle_glbl.length; ++i) {
        if (msg.obstacle_glbl.length > i) {
          resolved.obstacle_glbl[i] = GlobalObstacle.Resolve(msg.obstacle_glbl[i]);
        }
        else {
          resolved.obstacle_glbl[i] = new GlobalObstacle();
        }
      }
    }
    else {
      resolved.obstacle_glbl = new Array(32).fill(new GlobalObstacle())
    }

    return resolved;
    }
};

module.exports = PredictionDebug;
