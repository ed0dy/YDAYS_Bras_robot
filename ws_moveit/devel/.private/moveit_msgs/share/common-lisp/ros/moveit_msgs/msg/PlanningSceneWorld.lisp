; Auto-generated. Do not edit!


(cl:in-package moveit_msgs-msg)


;//! \htmlinclude PlanningSceneWorld.msg.html

(cl:defclass <PlanningSceneWorld> (roslisp-msg-protocol:ros-message)
  ((collision_objects
    :reader collision_objects
    :initarg :collision_objects
    :type (cl:vector moveit_msgs-msg:CollisionObject)
   :initform (cl:make-array 0 :element-type 'moveit_msgs-msg:CollisionObject :initial-element (cl:make-instance 'moveit_msgs-msg:CollisionObject)))
   (octomap
    :reader octomap
    :initarg :octomap
    :type octomap_msgs-msg:OctomapWithPose
    :initform (cl:make-instance 'octomap_msgs-msg:OctomapWithPose)))
)

(cl:defclass PlanningSceneWorld (<PlanningSceneWorld>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningSceneWorld>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningSceneWorld)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_msgs-msg:<PlanningSceneWorld> is deprecated: use moveit_msgs-msg:PlanningSceneWorld instead.")))

(cl:ensure-generic-function 'collision_objects-val :lambda-list '(m))
(cl:defmethod collision_objects-val ((m <PlanningSceneWorld>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_msgs-msg:collision_objects-val is deprecated.  Use moveit_msgs-msg:collision_objects instead.")
  (collision_objects m))

(cl:ensure-generic-function 'octomap-val :lambda-list '(m))
(cl:defmethod octomap-val ((m <PlanningSceneWorld>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_msgs-msg:octomap-val is deprecated.  Use moveit_msgs-msg:octomap instead.")
  (octomap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningSceneWorld>) ostream)
  "Serializes a message object of type '<PlanningSceneWorld>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collision_objects))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'octomap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningSceneWorld>) istream)
  "Deserializes a message object of type '<PlanningSceneWorld>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'moveit_msgs-msg:CollisionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'octomap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningSceneWorld>)))
  "Returns string type for a message object of type '<PlanningSceneWorld>"
  "moveit_msgs/PlanningSceneWorld")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningSceneWorld)))
  "Returns string type for a message object of type 'PlanningSceneWorld"
  "moveit_msgs/PlanningSceneWorld")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningSceneWorld>)))
  "Returns md5sum for a message object of type '<PlanningSceneWorld>"
  "79457311445f53d410ab4e3781de8447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningSceneWorld)))
  "Returns md5sum for a message object of type 'PlanningSceneWorld"
  "79457311445f53d410ab4e3781de8447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningSceneWorld>)))
  "Returns full string definition for message of type '<PlanningSceneWorld>"
  (cl:format cl:nil "# collision objects~%CollisionObject[] collision_objects~%~%# The octomap that represents additional collision data~%octomap_msgs/OctomapWithPose octomap~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# The object's pose relative to the header frame.~%# The shapes and subframe poses are defined relative to this pose.~%geometry_msgs/Pose pose~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the object's pose~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Named subframes on the object. Use these to define points of interest on the object that you want~%# to plan with (e.g. \"tip\", \"spout\", \"handle\"). The id of the object will be prepended to the subframe.~%# If an object with the id \"screwdriver\" and a subframe \"tip\" is in the scene, you can use the frame~%# \"screwdriver/tip\" for planning.~%# The length of the subframe_names and subframe_poses has to be identical.~%string[] subframe_names~%geometry_msgs/Pose[] subframe_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: octomap_msgs/OctomapWithPose~%# A 3D map in binary format, as Octree~%Header header~%~%# The pose of the octree with respect to the header frame ~%geometry_msgs/Pose origin~%~%# The actual octree msg~%octomap_msgs/Octomap octomap~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningSceneWorld)))
  "Returns full string definition for message of type 'PlanningSceneWorld"
  (cl:format cl:nil "# collision objects~%CollisionObject[] collision_objects~%~%# The octomap that represents additional collision data~%octomap_msgs/OctomapWithPose octomap~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# The object's pose relative to the header frame.~%# The shapes and subframe poses are defined relative to this pose.~%geometry_msgs/Pose pose~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the object's pose~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Named subframes on the object. Use these to define points of interest on the object that you want~%# to plan with (e.g. \"tip\", \"spout\", \"handle\"). The id of the object will be prepended to the subframe.~%# If an object with the id \"screwdriver\" and a subframe \"tip\" is in the scene, you can use the frame~%# \"screwdriver/tip\" for planning.~%# The length of the subframe_names and subframe_poses has to be identical.~%string[] subframe_names~%geometry_msgs/Pose[] subframe_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: octomap_msgs/OctomapWithPose~%# A 3D map in binary format, as Octree~%Header header~%~%# The pose of the octree with respect to the header frame ~%geometry_msgs/Pose origin~%~%# The actual octree msg~%octomap_msgs/Octomap octomap~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningSceneWorld>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'octomap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningSceneWorld>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningSceneWorld
    (cl:cons ':collision_objects (collision_objects msg))
    (cl:cons ':octomap (octomap msg))
))
