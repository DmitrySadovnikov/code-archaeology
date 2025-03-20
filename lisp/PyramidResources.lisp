(defun calculate-resources (pyramid-size)
  (if (numberp pyramid-size)
      (let ((limestone-needed (* pyramid-size 1000))
            (granite-needed (* pyramid-size 500))
            (labor-needed (* pyramid-size 2000)))
        (format t "Limestone needed: ~A~%" limestone-needed)
        (format t "Granite needed: ~A~%" granite-needed)
        (format t "Labor needed: ~A~%" labor-needed))
      (format t "Error: Pyramid size must be a number.")))

(defun main ()
  (format t "Enter pyramid size: ")
  (force-output) ; Ensure the prompt is displayed before reading input
  (let ((pyramid-size (read)))
    (calculate-resources pyramid-size)))

(main)
