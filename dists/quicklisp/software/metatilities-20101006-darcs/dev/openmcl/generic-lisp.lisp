(in-package #:metatilities)

;;; ---------------------------------------------------------------------------
;;; specify that we're using the OPENMCL interface
;;; ---------------------------------------------------------------------------

(setf (default-interface) :OPENMCL)

;;; ---------------------------------------------------------------------------

(defmethod is-interface-available-p ((interface (eql :OPENMCL)))
  (values t))


;;; ---------------------------------------------------------------------------
;;; quitting
;;; ---------------------------------------------------------------------------

(defmethod quit-lisp* ((interface (eql :OPENMCL)))
  (ccl:quit))


;;; ---------------------------------------------------------------------------
;;; memory management stuff
;;; ---------------------------------------------------------------------------

(defmethod total-bytes-allocated* ((interface (eql :OPENMCL)))
  (values (ccl::total-bytes-allocated)))

;;; ---------------------------------------------------------------------------

(defmethod gc-time* ((interface (eql :OPENMCL)))
  (values (ccl:gctime)))

;;; ---------------------------------------------------------------------------

(defmethod collect-garbage* ((interface (eql :OPENMCL)))
  (ccl:gc))

;;; ***************************************************************************
;;; *                              End of File                                *
;;; ***************************************************************************