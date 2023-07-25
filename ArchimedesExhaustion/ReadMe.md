# Description and guide on proof
The method of exhaustion was developed by Archimedes in order to estimate the value of pi and the area of circles up to any amount of digits wanted. 
Given a circle, one can estimate these values with any precision by inscribing a regular n-gon with n large enough and computing its area, which is something that by the time, Archimedes already knew how to do. Exercise 11 on Spivaks Chapter 11 (least upper bounds) consists on proving this fact rigorously.
In order to prove it, two things are necessary : 
#### 1-Show that any positive sequence of real values where each term is less or equal to half the previous one, converges to zero.
#### 2-Say P and P' are both regular polygons inscribed in a circle C, with n and 2*n sides. Show that Area(C)-A(P') <= (A(C)-A(P))/2.
With those two things proven, it is straight forward to prove the statement : "There is a regular polygon P inscribed in a circle with area as close as desired to the are of the circle".
# The method of exhaustion in action:
Below is an animation where the method is applied for a circle of radius R = 1 and various n-gons with an increasing number of sides are inscribed. At the end, there is a plot of the sequence of areas obtained for each n-gon (on this case, the areas should approach the constant pi, since Area = Pi*R^2)

![exhaustionmethod (1)](https://github.com/Panithecracker/Real-Analysis-Visuals/assets/97905110/39b20c4b-26cd-4c6e-8f7a-1c99c7db93e4)

![Screenshot 2023-07-25 120509](https://github.com/Panithecracker/Real-Analysis-Visuals/assets/97905110/aa463c5b-733a-429a-a6af-540c78856a7d)

