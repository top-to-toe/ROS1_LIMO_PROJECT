; Auto-generated. Do not edit!


(cl:in-package hello_ros-msg)


;//! \htmlinclude MyTopic.msg.html

(cl:defclass <MyTopic> (roslisp-msg-protocol:ros-message)
  ((first_name
    :reader first_name
    :initarg :first_name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:integer
    :initform 0))
)

(cl:defclass MyTopic (<MyTopic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyTopic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyTopic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_ros-msg:<MyTopic> is deprecated: use hello_ros-msg:MyTopic instead.")))

(cl:ensure-generic-function 'first_name-val :lambda-list '(m))
(cl:defmethod first_name-val ((m <MyTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_ros-msg:first_name-val is deprecated.  Use hello_ros-msg:first_name instead.")
  (first_name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <MyTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_ros-msg:age-val is deprecated.  Use hello_ros-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <MyTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_ros-msg:score-val is deprecated.  Use hello_ros-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyTopic>) ostream)
  "Serializes a message object of type '<MyTopic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'first_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'first_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'score)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyTopic>) istream)
  "Deserializes a message object of type '<MyTopic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'first_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'score)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyTopic>)))
  "Returns string type for a message object of type '<MyTopic>"
  "hello_ros/MyTopic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyTopic)))
  "Returns string type for a message object of type 'MyTopic"
  "hello_ros/MyTopic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyTopic>)))
  "Returns md5sum for a message object of type '<MyTopic>"
  "936b8cbca9e84059fb52d40e0776fdda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyTopic)))
  "Returns md5sum for a message object of type 'MyTopic"
  "936b8cbca9e84059fb52d40e0776fdda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyTopic>)))
  "Returns full string definition for message of type '<MyTopic>"
  (cl:format cl:nil "string first_name~%uint8 age~%uint32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyTopic)))
  "Returns full string definition for message of type 'MyTopic"
  (cl:format cl:nil "string first_name~%uint8 age~%uint32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyTopic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'first_name))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyTopic>))
  "Converts a ROS message object to a list"
  (cl:list 'MyTopic
    (cl:cons ':first_name (first_name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':score (score msg))
))
