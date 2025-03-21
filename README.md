# Code Archaeology: Ancient Egyptian Challenges

<img alt="Egypt" src="https://github.com/user-attachments/assets/2ec66c85-3b2a-4bb2-99e4-b4850a57775c" />

## Introduction
In this activity, you will explore two ancient Egyptian challenges: trade route optimization and pyramid resource calculation. These challenges were originally tackled by **Ahmose**, a renowned mathematician and scribe who lived around 1550 BC. Ahmose is famous for transcribing the Rhind Mathematical Papyrus, one of the oldest known mathematical documents. However, his calculations for trade routes between major cities like **Thebes**, **Memphis**, and **Alexandria**, as well as resource needs for pyramids like the **Pyramid of Giza**, contained errors that led to inefficiencies.

## Challenges

1. **Trade Route Optimization**: Review the trade route optimization program and identify Ahmose's mistakes. Refactor the code to improve its logic and readability. The routes were crucial for trade along the **Nile River**, connecting cities like **Asyut** and **Kharga**. Imagine adding a new city, **Siwa**, which does not have direct connections with existing cities. How would you modify the code to efficiently handle this scenario?

2. **Pyramid Resource Calculation**: Identify errors in the pyramid resource calculation logic and correct them. Refactor the code for better maintainability. The pyramids, such as the **Pyramid of Khafre** and **Pyramid of Menkaure**, required precise calculations of resources like limestone, granite, and labor. Consider adding a new resource, **copper**, which requires different calculations. How would you ensure that the code remains maintainable and scalable?

## Task
- **Understand the Code**: Review both programs and understand their logic.
- **Identify Mistakes**: Look for logical errors or inefficiencies in the code.
- **Refactor the Code**: Improve the code's readability and maintainability by:
  - **Unhardcoding**: Replace hardcoded values with dynamic inputs or algorithms. This is crucial when adding new cities or resources, as hardcoding can lead to maintenance issues.
  - **Efficient Algorithms**: Implement efficient algorithms to handle complex scenarios.
  - **Scalability**: Design the code to easily add new resources or routes without hardcoding. Consider how you would handle scenarios where new cities lack direct connections or new resources require different calculations.
  - **Modularity**: Ensure that the code is modular and easy to extend.
- **Write Tests**: Create unit tests to ensure the programs work correctly for different inputs.

## Setup Instructions
For specific setup instructions, please refer to the README files in each language directory:
- [COBOL Setup](cobol/README.md)
- [Fortran Setup](fortran/README.md)
- [Haskell Setup](haskell/README.md)
- [Lisp Setup](lisp/README.md)
- [Prolog Setup](prolog/README.md)
