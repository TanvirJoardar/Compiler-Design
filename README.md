# Compiler-Design

1. Download jdk from https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
   and set the classpath of jdk folder (typically C:\Program Files\Java\jdk1.8.0_261\bin)

2. Download antlr from www.antlr.org

3. Create a folder and save your grammer as prog.g4 (name your root as 'root') in it. Also, move downloaded antlr file to it.

4. Create a txt file with input sequence named 'input.txt'. 

5. Run these commands one by one in cmd (from the path you saved prog.g4 grammer)
    a) SET CLASSPATH=.;C:\Javalib\antlr-4.8-complete.jar;%CLASSPATH%
    b) java -jar antlr-4.8-complete.jar prog.g4
    c) javac -cp .;antlr-4.8-complete.jar prog*.java
    d) java -cp .;antlr-4.8-complete.jar org.antlr.v4.gui.TestRig prog root -gui input.txt
