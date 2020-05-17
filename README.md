# HWProject
Final project of Hardware synthesis lab

Explanation:
* Keyboard: 16 bit represent key
  * press: {prev,now (what is pressing last)}
  * release: {"F0",now (what just be released)}
  * hold: F0 won't appear

  this can be handle by state 
  * if [15:0] != "F0" : this means you are pressing key 
  * else if [15:0] == "F0" : it's mean that key is just be released

* VGA: 12 bit color 4r 4g 4b
  * Hsync & Vsync: Sync with your display
  * p_tick: indicate that accessing next pixel
  * x,y: position on your screen 0,0 for top-left corner
  
Ref:
* ISA: 
  * https://opencores.org/projects/8051
* USB keyboard: 
  * https://reference.digilentinc.com/learn/programmable-logic/tutorials/basys-3-keyboard-demo/start
* text: 
  * https://github.com/Derek-X-Wang/VGA-Text-Generator
  * https://github.com/MadLittleMods/FP-V-GA-Text
* vga:
  * https://embeddedthoughts.com/2016/07/29/driving-a-vga-monitor-using-an-fpga/
* image binarizer:
  * https://www.dcode.fr/binary-image
* other games: 
  * https://github.com/howardlau1999/flapga-mario
  * https://github.com/Siliciumer/DOS-Mario-FPGA
