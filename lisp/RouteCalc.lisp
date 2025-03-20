(defun get-distance (city1 city2 distance-matrix)
  (let ((city1-index (position city1 (car distance-matrix)))
        (city2-index (position city2 (car distance-matrix))))
    (nth city2-index (nth city1-index (cdr distance-matrix)))))

(defun main ()
  (let ((distance-matrix
         (list
          (list "Thebes" "Memphis" "Alexandria" "Asyut")
          (list 0 200 400 100)
          (list 200 0 300 250)
          (list 400 300 0 500)
          (list 100 250 500 0))))
    (format t "Available cities:~%")
    (loop for city in (car distance-matrix)
          for i from 1 do
          (format t "~A. ~A~%" i city))
    (format t "Enter start city number (1-4): ")
    (let ((start-city (read)))
      (format t "Enter end city number (1-4): ")
      (let ((end-city (read)))
        (let ((start-city-name (nth (1- start-city) (car distance-matrix)))
              (end-city-name (nth (1- end-city) (car distance-matrix))))
          (format t "Shortest distance from ~A to ~A: ~A~%"
                  start-city-name end-city-name
                  (get-distance start-city-name end-city-name distance-matrix)))))))

(main)
