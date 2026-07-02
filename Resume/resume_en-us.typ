#import "./template.typ": *
#import "@preview/sicons:16.0.0": sicon-label

#let myInfo = (
  name: "Yuwei ZHAO",
  sepPhone: "135-7877-4880",
  school: "Ocean University of China & Heriot-Watt University",
  major: "Computer Science x Robotics",
  department: "Faculty of Information Science and Engineering",
  email: "stanley_zhao0113@outlook.com",
  github: "github.com/RamessesN",
)

#show: resume.with(
  size: 10pt,
  theme-color: theme-color,
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: bytes(read("./img/蓝底.JPG", encoding: none)),
  // photograph-width: 11em,
  // gutter-width: 2.5em,
)[
  = #text(size: 1.5em)[#myInfo.name]

  #v(1em)

  #info(
    color: theme-color,
    (
      icon: fa-envelope,
      content: myInfo.email,
      link: "mailto:" + myInfo.email,
    ),
    (
      icon: fa-github,
      content: myInfo.github,
      link: "https://" + myInfo.github,
    ),
    (
      icon: fa-graduation-cap,
      content: myInfo.major,
    ),
    (
      icon: fa-building-columns,
      content: myInfo.school,
    )
  )
][
  Computer Science and Robotics dual-degree undergraduate student with interests in robotics systems, artificial intelligence, and spatial computing. Experienced in ROS2-based robotic development, computer vision, iOS native application development, and cross-platform software engineering. First author of a paper published in #link("https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=8859")[_IEEE GRSL_]. Active contributor to open-source projects with hands-on experience spanning algorithm development, system integration, and software deployment.
]

== #fa-graduation-cap Education Background
#sidebar(with-line: true, side-width: 12%)[
  *GPA*
][
  3.57/4 #h(0.5em) (Average Score: 87.2/100)
]

#sidebar(with-line: true, side-width: 12%)[
  #v(1.5em) *Major Coursework*
][
  Computer Systems Fundamentals (98.5/100)、Integrated Robotics (98/100)、Artificial Intelligence and Agents (96.5/100)、Linux and C Programming (96/100)、Linear Algebra (95/100)。

  Solid foundation in robot perception & control, AI algorithms, computer architecture, operating system fundamentals, and mathematical modeling. Well-versed in the theoretical principles of robotic system development, computer vision, and cross-platform software engineering.
]

== #fa-wrench Technical Skills

#sidebar(with-line: true, side-width: 12%)[
  *Programming Languages*
][
  *Proficient:* Python, C/C++, Swift \
  *Familiar:* Java, Nim (including compiler build pipelines) \
  *Typesetting & Documentation:* LaTeX, Typst (for technical documentation and research papers)
]

#sidebar(with-line: true, side-width: 12%)[
  #v(2em) *Application Development*
][
  *Robotics:* Proficient with ROS2 framework; hands-on experience in SLAM mapping, localization & navigation, visual perception, and robotic system integration. \
  *AI & Deep Learning:* Experienced in PyTorch model training and deployment; skilled in object detection and multimodal data processing. \
  *Apple Platforms:* Full-stack development using SwiftUI, ARKit, and RealityKit. \
  *Embedded Systems:* Hardware debugging and firmware development with STM32 and Arduino; familiar with hardware-software co-design in Raspberry Pi environments.
]

#sidebar(with-line: true, side-width: 12%)[
  *Environments & Tools*
][
  *Operating Systems:* Linux (Ubuntu, Arch Linux), macOS \
  *Version Control:* Git (proficient in version control and open-source collaboration) \
  *Build Systems & Toolchains:* CMake, GCC/Clang compilation toolchains \
  *Software Engineering:* Cross-platform software compilation, debugging, and deployment
]

== #fa-github Projects Experience

1. *CourtSweeper - Autonomous Tennis Ball Collection Robot* #h(1fr) #link("https://github.com/RamessesN/CourtSweeper")[_RamessesN/CourtSweeper_]

- ROS2, slam_toolbox, Nav2, Yolo26, Jetson Orin NX, Robomaster-SDK-Ultra, SwiftUI

- Developed an autonomous tennis ball collection robot with ROS2-based perception, navigation, and control pipeline. Built LiDAR-based mapping and localization using `slam_toolbox`, and implemented autonomous navigation with Nav2. Trained and deployed a lightweight YOLO model for real-time ball detection and tracking. Developed ROS2 driver nodes mapping `/cmd_vel` to the RoboMaster chassis, and designed a dual-roller collection mechanism with motor control. Built a SwiftUI app for remote monitoring and teleoperation.


2. *Autonomous Path-Tracking Embedded System for Robotic Sailboats* #h(1fr) #link("https://github.com/RamessesN/CourtSweeper")[_RamessesN/CourtSweeper_]

- STM32F103C8T6, C, EDA, PWM, USART, BLE, Python

- Designed an autonomous path-tracking control system for a robotic sailboat on `STM32F103C8T6`, covering the full hardware lifecycle from EDA design to PCB fabrication. Engineered a 15-channel infrared edge-detection sampling scheme to decouple signal acquisition from control decisions, and implemented a centroid-based servo angle algorithm with PD control for stable tracking. Used BLE for real-time debugging and built a cross-platform flashing workflow on macOS.

3. *Cross-Platform Driver  Maintenance for Robomaster-SDK & YDLidar* #h(1fr) #link("https://github.com/RamessesN/Robomaster-SDK-Ultra")[_RamessesN/Robomaster-SDK-Ultra_]

- Python, C++, FFmpeg, Opus, pybind11, Cmake, macOS, Linux #h(1fr) #link("https://github.com/RamessesN/YDLidar-SDK")[_RamessesN/YDLidar-SDK_]

- Maintained and extended the DJI RoboMaster Python SDK, addressing compatibility issues across moden Python releases. Integrated FFmpeg, Opus, and pybind11 dependencies into a unified build workflow for Apple Silicon and Linux platforms. Contributed ARM64 compatibility fixes to YDLiDAR SDK and improved build support on macOS.

4. *Lost Anchor - On-Device Intelligent iOS Augmented Reality Application* #h(1fr) #link("https://github.com/RamessesN/Macintustin")[_RamessesN/Macintustin_]

- Swift, SwiftUI, ARKit, RealityKit, CoreLocation, CoreML

- Developed a native iOS augmented reality application for campus navigfation and location-based information visualization. Implemented spatial anchors and 3D content rendering using ARKit and RealityKit. Integrated CoreLocation for location awareness and contextual information presentation. Converted and deployed a 4-bit quantized Qwen-2B language model to CoreML, enabling fully offline on-device inference.

5. *Nim Compiler Migration to LoongArch64* #h(1fr) #link("https://github.com/RamessesN/Nim2LoongArch64")[_RamessesN/Nim2LoongArch64_]

- Nim, GCC, Linux, LoongArch64, Git

- Contributed to the porting and adaptation fo the Nim compiler for the LoongArch64 architecture. Investigated platform compatibility issues and improved build scripts and toolchain configurations. Validated compiler functionality and runtime support on physical Loongson hardware platforms.

== #fa-research Research Experience

*Semantic-Guided Fusion Network for Multi-source Remote Sensing Image Classification*

First Author #h(1fr) _IEEE Geoscience and Remote Sensing Letters (GRSL) 2026_

Proposed SGFNet, a semantic-guided fusion network for multi-source remote sensing image classification, addressing semantic context modeling limitations and cross-modal spatial misalignment.

- Designed the *Semantic Mixed Convolution Block (SMCB)*, which dynamically generates convolution kernels based on semantic affinity to improve contextual representation learning.
- Developed the *Frequency-Modulated Fusion Block (FMFB)*, leveraging DCT-based frequency-domain interactions to enhance robustness against spatial misalignment between HSI and SAR/LiDAR modalities.
- Achieved Overall Accuracy (OA) of 92.38% on the Augsburg dataset and 94.17% on the Houston 2018 dataset, outperforming multiple state-of-the-art methods. Open-sourced the complete implementation of SGFNet #link("https://github.com/oucailab/SGFNet").

== #fa-award Honourship

#link("https://cmvc.moocollege.com/home/homepage")[*Marine Vehicle Design and Construction Contest*] #h(1fr) *Second Prize of the National* #h(1em) #date[2025.08]

#link("https://jienengjianpai.org")[*National Contest on Energy Saving & Emission Reduction*] #h(1fr) *Third Prize of the National* #h(1em) #date([2026.06])

#link("https://www.comap.com/contests/mcm-icm")[*The Mathematical & Interdisciplary Contest in Modeling*] #h(1fr) *Honorable Mention* #h(1em) #date[2025.05]

#link("https://www.appcontest.net/home/homepage")[*Apple Mobile Application Innovation Contest*] #h(1fr) *Second Prize of the East China Region* #h(1em) #date[2025.08]

#link("https://os.educg.net/#/")[*Computer System Development Capability Competition*] #h(1fr) *Excellence Award of the East China Region* #h(1em) #date[2024.11]

== #fa-building-columns Extracurricular Activities

*Ocean University of China - iOS Club, Minister* #h(1fr) #date[2024.09 - 2026.06]

Managed daily club operations and organized technical events, spearheading Swift development workshops and practical sessions. Mentored new members through introductory iOS development projects, fostering technical exchange and project collaboration within the club.

#v(1em)

*Robotics Group Project - Teaching Assistant (TA)* #h(1fr) #date[2025.08 - 2025.10]

Provided technical support and academic guidance for the robotics project course, instructing students on Python-based development for the RoboMaster platform. Delivered lectures on computer vision and motion control fundamentals, actively facilitating course project progression.
