# Here we setup the environment
# variables needed by the tinyos 
# make system

export TOSROOT="/vagrant/tinyos-2.1.2"
export TOSDIR="$TOSROOT/tos"
export CLASSPATH=$CLASSPATH:$TOSROOT/support/sdk/java:$TOSROOT/support/sdk/java/tinyos.jar
export MAKERULES="$TOSROOT/support/make/Makerules"
export PYTHONPATH=$PYTHONPATH:$TOSROOT/support/sdk/python
export PATH=$PATH:/opt/msp430-47-expr/bin

echo "TinyOS version: TinyOS-2.1.2 with XM1000 support and MSP430-gcc 4.7"
