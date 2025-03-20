(defun calculate-limestone (pyramid-size)
  (let ((limestone-needed (* pyramid-size 1000)))
    (calculate-granite pyramid-size)
    limestone-needed))

(defun calculate-granite (pyramid-size)
  (let ((granite-needed (* pyramid-size 500)))
    (declare (special temporary-value))
    (setf temporary-value 0)
    nil))

(defun main ()
  (format t "Enter pyramid size: ")
  (force-output) ; Ensure the prompt is displayed before reading input
  (let ((pyramid-size (read)))
    (format t "Limestone needed: ~A~%" (calculate-limestone pyramid-size))))

(main)
