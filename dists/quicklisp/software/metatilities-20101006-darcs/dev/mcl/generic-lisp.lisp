(in-package #:metatilities)

;;; ---------------------------------------------------------------------------
;;; specify that we're using the CCL interface
;;; ---------------------------------------------------------------------------

(setf (default-interface) :CCL)

;;; ---------------------------------------------------------------------------

(defmethod is-interface-available-p ((interface (eql :CCL)))
  (values t))


;;; ---------------------------------------------------------------------------
;;; quitting
;;; ---------------------------------------------------------------------------

(defmethod quit-lisp* ((interface (eql :CCL)))
  (ccl:quit))


;;; ---------------------------------------------------------------------------
;;; memory management stuff
;;; ---------------------------------------------------------------------------

(defmethod total-bytes-allocated* ((interface (eql :CCL)))
  (values (ccl::total-bytes-allocated)))

;;; ---------------------------------------------------------------------------

(defmethod gc-time* ((interface (eql :CCL)))
  (values (ccl:gctime)))

;;; ---------------------------------------------------------------------------

(defmethod collect-garbage* ((interface (eql :CCL)))
  (ccl:gc))


;;; ***************************************************************************
;;; *                              End of File                                *
;;; ***************************************************************************