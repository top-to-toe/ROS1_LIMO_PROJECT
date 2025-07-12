;; Auto-generated. Do not edit!


(when (boundp 'hello_ros::MyTopic)
  (if (not (find-package "HELLO_ROS"))
    (make-package "HELLO_ROS"))
  (shadow 'MyTopic (find-package "HELLO_ROS")))
(unless (find-package "HELLO_ROS::MYTOPIC")
  (make-package "HELLO_ROS::MYTOPIC"))

(in-package "ROS")
;;//! \htmlinclude MyTopic.msg.html


(defclass hello_ros::MyTopic
  :super ros::object
  :slots (_first_name _age _score ))

(defmethod hello_ros::MyTopic
  (:init
   (&key
    ((:first_name __first_name) "")
    ((:age __age) 0)
    ((:score __score) 0)
    )
   (send-super :init)
   (setq _first_name (string __first_name))
   (setq _age (round __age))
   (setq _score (round __score))
   self)
  (:first_name
   (&optional __first_name)
   (if __first_name (setq _first_name __first_name)) _first_name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _first_name
    4 (length _first_name)
    ;; uint8 _age
    1
    ;; uint32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _first_name
       (write-long (length _first_name) s) (princ _first_name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint32 _score
       (write-long _score s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _first_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _score
     (setq _score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hello_ros::MyTopic :md5sum-) "936b8cbca9e84059fb52d40e0776fdda")
(setf (get hello_ros::MyTopic :datatype-) "hello_ros/MyTopic")
(setf (get hello_ros::MyTopic :definition-)
      "string first_name
uint8 age
uint32 score

")



(provide :hello_ros/MyTopic "936b8cbca9e84059fb52d40e0776fdda")


