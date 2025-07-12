
(cl:in-package :asdf)

(defsystem "hello_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MyTopic" :depends-on ("_package_MyTopic"))
    (:file "_package_MyTopic" :depends-on ("_package"))
    (:file "TimeWaitAction" :depends-on ("_package_TimeWaitAction"))
    (:file "_package_TimeWaitAction" :depends-on ("_package"))
    (:file "TimeWaitActionFeedback" :depends-on ("_package_TimeWaitActionFeedback"))
    (:file "_package_TimeWaitActionFeedback" :depends-on ("_package"))
    (:file "TimeWaitActionGoal" :depends-on ("_package_TimeWaitActionGoal"))
    (:file "_package_TimeWaitActionGoal" :depends-on ("_package"))
    (:file "TimeWaitActionResult" :depends-on ("_package_TimeWaitActionResult"))
    (:file "_package_TimeWaitActionResult" :depends-on ("_package"))
    (:file "TimeWaitFeedback" :depends-on ("_package_TimeWaitFeedback"))
    (:file "_package_TimeWaitFeedback" :depends-on ("_package"))
    (:file "TimeWaitGoal" :depends-on ("_package_TimeWaitGoal"))
    (:file "_package_TimeWaitGoal" :depends-on ("_package"))
    (:file "TimeWaitResult" :depends-on ("_package_TimeWaitResult"))
    (:file "_package_TimeWaitResult" :depends-on ("_package"))
  ))