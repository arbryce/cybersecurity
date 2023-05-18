#Time spent by normal processes executing in user mode
#Time spent by processes executing in kernel mode
#Time when system was idle
#Time spent by priority processes executing in user mode
#Time spent waiting for I/O to complete.
#Time spent for servicing hardware interrupts
#Time spent for servicing software interrupts
#Time spent by other operating systems running in a virtualized environment
#Time spent running a virtual CPU for guest operating systems under the control of the Linux kernel 

# Main

import psutil

print("User Time: ", psutil.cpu_times().user)
print("Kernel Time: ", psutil.cpu_times().system)
print("Idle Time: ", psutil.cpu_times().idle)
print("Priority User Time: ", psutil.cpu_times().nice)
print("I/O Wait Time: ", psutil.cpu_times().iowait)
print("Hardware Interrupt Time: ", psutil.cpu_times().irq)
print("Software Interrupt Time: ", psutil.cpu_times().softirq)
print("Virtual OS Time: ", psutil.cpu_times().steal)
print("Virtual CPU Time: ", psutil.cpu_times().guest)

# End