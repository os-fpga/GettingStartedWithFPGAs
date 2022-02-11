# Getting Started with FPGAs Course

# _This course is work-in-progress. (Sorry for the premature Linkedin post.) Come back soon!_

## Virtual Lab Setup

### System requirements

The virtual portions of this course can be run from any modern web browser.

The physical FPGA flow requires:
  - Python3
  - Git
  - the standard software installation for your FPGA board

### Repository

  - First, clone the Virtual FPGA Lab repository: `git clone git@github.com:BalaDhinesh/Virtual-FPGA-Lab.git`.
  - And `cd Virtual-FPGA-Lab`.
  - Then perform the necessary installs:
    ```sh
    pip3 install sandpiper-saas makerchip-app
    ```
    These are very light-weight installs that simply interface to web and cloud applications.

### Makerchip Starting Code Template

  - Open this [starting code template](http://www.makerchip.com/sandbox?code_url=https:%2F%2Fraw.githubusercontent.com%2Fos-fpga%2FGettingStartedWithFPGAs%2Fmain%2Fstarting_code.tlv) in Makerchip.
  - Watch this short introduction to Makerchip. TODO: Video.
The template contains a list of supported boards.
  - If you have one of these boards, you may choose it, or choose any board you like for the virtual lab.

The template code is configured to enable LED output.
We'll review the structure of this code soon enough. For now, let's code some logic.

### Simple Counter

Let's drive the LED lights on the FPGA board with the bits of a free-running counter. Each LED will be one bit.
You'll need to provide the logic for the free-running counter, connected to the LEDs.

  - Where the template code says: `Drive $Leds[15:0] here.`, paste this statement, which implements a free-running counter: `$Leds[15:0] <= $reset ? 16'b0 : $Leds + 1;`
  - Under the "E" menu in the EDITOR, select "Compile/Sim" (or press `<ctrl>-Enter`).
  - In the VIZ tab, step simulation (with the `>` arrow) to observe the LEDs showing incrementing binary values.

<img src="https://user-images.githubusercontent.com/64545984/130662713-a4831559-f909-4b1e-856d-6f736de6e4b5.gif" alt="Basys3_LED" width="600">

### Running on the Physical FPGAs

If you have a compatible FPGA board, let's try it.

  - Follow [the steps provided in the Virtual FPGA Lab repository](https://github.com/BalaDhinesh/Virtual-FPGA-Lab/tree/main/fpga#steps-to-run-fpga-setup).

Supporting all FPGA boards is something that requires help from the community. If you found any issues, please submit a pull request.

### Seven-Segment Displays

Most boards come with a seven-segment display, or have peripherals for them. Let's display our counter on the seven-segment display.

First we'll do this the easy way.

  - Instantiate this macro TODO: TBD.
  - Compile/Sim and see that the count appears in VIZ on the 7-segment display.
  - If you have a physical FPGA board try that as well.

### How's This All Work?

  - Watch this video describing the various components of the source code. TODO: TBD.
  - Watch this video describing the various components of the physical FPGA flow. TODO: TBD.

### 7-Segment Display Interface

Above, we used the XXX macro to drive the pins of the FPGA properly to display our output value (`$count`). Let's use this controller logic to get a feel for TL-Verilog.

The 7-segment display is controlled by three output signals:

```
  logic [3:0] digit;  // Active low enables for digits of the display.
  logic [6:0] sseg;   // The segments to illuminate of the enabled digits.
  logic  dp;
```

The `digit` vector has a bit for each digit in the display. For each deasserted (0) bit, the corresponding digit is enable.

The 7 `sseg` output bits, when deasserted (0), illuminate the corresponding segment of each enabled digit. The seven segments are shown below, labeled with their conrolling bit index.

```
  ___
 | 6 |
1|___|5
 | 0 |
2|___|4
   3
```

Note that it is not possible to simultaneously display different digit values on different digits. But, we saw multi-digit count values on the 7-segment display, both virtually and physically. How is this possible? Well, on the virtual board, put simply, we were cheating. On the physical board, only one digit is displayed in each clock cycle. With a 100 MHz clock, our eyes do not detect the flickering, and the display appears to be showing all digits simultaneously.

You can see this behavior cycle-by-cycle in simulation by changing the XXX argument to the XXX macro.

### Disecting the 7-Segment Controller

Let's use the 7-segment conroller to get a feel for some basics of TL-Verilog.

...

### Writing Your Own Code

  - Use what you learned from the 7-segment controller to generate the behavior seen below.
  
  (TODO: Screen capture of dash moving right-to-left along the top segments, then left-to-right along the bottom)

  - Try running this on your physical FPGA board as well.

### Wrapping Up

That's it. You did it! You wrote your own FPGA logic. So what's next? Here are some ideas:

  - Learn more about [TL-Verilog](https://redwoodeda.com/tl-verilog) and [Makerchip](https://makerchip.com).
  - Find other course offerings from the [OSFPGA](https://osfpga.org), [Redwood EDA](https://www.redwoodeda.com/publications), and [VSD](https://www.vlsisystemdesign.com/).

It you found issues, take matters into your own hands by submitting a pull request.

And, share your experience on social media in a post with the link to this repository.
