#import "./template.typ": *
#import "@preview/sicons:16.0.0": sicon-label

#let myInfo = (
  name: "Yuwei ZHAO",
  sepPhone: "135-7877-4880",
  school: "Ocean University of China",
  major: "Computer Science and Technology",
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
  photograph: bytes(read("./img/蓝底.JPG", encoding: none)),
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = #text(size: 1.3em)[#myInfo.name]

  #v(0.5em)

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) " + myInfo.sepPhone,
    ),
    (
      icon: fa-building-columns,
      content: myInfo.school,
    ),
    (
      icon: fa-graduation-cap,
      content: myInfo.major,
    ),
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
  )
][
  Computer Science and Robotics dual-degree undergraduate student with interests in robotics systems, artificial intelligence, and spatial computing. Experienced in ROS2-based robotic development, computer vision, iOS native application development, and cross-platform software engineering. First author of a paper published in _IEEE GRSL_. Active contributor to open-source projects with hands-on experience spanning algorithm development, system integration, and software deployment.
]

== #fa-graduation-cap Education Background

*#{myInfo.school}* #h(1fr) *Qingdao, China* \
_B.Eng. in #{myInfo.major}_ #h(1fr) 2023.09 - 2026.07

#v(0.5em)

*Heriot-Watt University* #h(1fr) *Edinburgh, United Kingdom* \
_B.Eng. (Hons) Robotics, Autonomous and Interactive Systems_ #h(1fr) 2026.09 - 2027.06

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *GPA*
][
  3.57/4 #h(0.5em) (Average Score: 87.2/100)
]

#sidebar(with-line: true, side-width: 12%)[
  *Major Coursework*
][
  Computer Systems Fundamentals (98.5/100)、Integrated Robotics (98/100)、Artificial Intelligence and Agents (96.5/100)、Linux and C Programming (96/100)、Linear Algebra (95/100)。

  Strong academic foundation in computer architecture, operating systems, robotics, artificial intelligence, and mathematical modeling, complemented by hands-on experience in robotic systems, computer vision, and cross-platform software development.
]

== #fa-wrench Technical Skills

#sidebar(with-line: true, side-width: 12%)[
  *Programming Languages*
][
  Python, C/C++, Swift, Java, Nim
]

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *Robotics \ & AI*
][
  ROS2, SLAM, Nav2, Computer Vision, Multi-Sensor Fusion, PyTorch, Deep Learning Model Deployment
]

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *Mobile Development*
][
  SwiftUI, ARKit, RealityKit, CoreLocation, CoreML
]

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *Systems \ & Tools*
][
  Linux (Ubuntu, Arch Linux), macOS, Git, CMake, GCC/Clang Toolchain, Cross-Platform Software Development
]

== #fa-github Projects

1. *CourtSweeper - Autonomous Tennis Ball Collection Robot* #h(1fr) #link("https://github.com/RamessesN/CourtSweeper")[RamessesN/CourtSweeper]

- ROS2, slam_toolbox, Nav2, Yolo26, Jetson Orin NX, Robomaster-SDK-Ultra, SwiftUI

#v(0em)

- Developed an autonomous tennis ball collection robot based on ROS2, integrating perception, navigation, and motion control subsystems. Build 2D mapping and localization pipelines using LiDAR and `slam_toolbox`, and implemented autonomous navigation with Nav2. Trained and deployed a lightweight YOLO model for real-time tennis ball detection and tracking. Developed ROS2 driver nodes for RoboMaster chassis control and implemented ball collection mechanisms with custom motor control logic. Build a SwiftUI mobile application for remote operation, video streaming, and robot status monitoring.

2. *Lost Anchor - On-Device AR Navigation Application* #h(1fr) #link("https://github.com/RamessesN/Macintustin")[RamessesN/Macintustin]

- Swift, SwiftUI, ARKit, RealityKit, CoreLocation, CoreML

#v(0em)

- Developed a native iOS augmented reality application for campus navigfation and location-based information visualization. Implemented spatial anchors and 3D content rendering using ARKit and RealityKit. Integrated CoreLocation for location awareness and contextual information presentation. Converted and deployed a 4-bit quantized Qwen-2B language model to CoreML, enabling fully offline on-device inference.

3. *Robomaster-SDK-Ultra & YDLidar Cross-Platform Maintenance* #h(1fr) #link("https://github.com/RamessesN/Robomaster-SDK-Ultra")[RamessesN/Robomaster-SDK-Ultra]

- Python, C++, FFmpeg, Opus, pybind11, Cmake, macOS, Linux #h(1fr) #link("https://github.com/RamessesN/YDLidar-SDK")[RamessesN/YDLidar-SDK]

#v(0em)

- Maintained and extended the DJI RoboMaster Python SDK, addressing compatibility issues across moden Python releases. Integrated FFmpeg, Opus, and pybind11 dependencies into a unified build workflow for Apple Silicon and Linux platforms. Contributed ARM64 compatibility fixes to YDLiDAR SDK and improved build support on macOS.

4. *Nim Compiler Migration to LoongArch64* #h(1fr) #link("https://github.com/RamessesN/Nim2LoongArch64")[RamessesN/Nim2LoongArch64]

- Nim, GCC, Linux, LoongArch64, Git

#v(0em)

- Contributed to the porting and adaptation fo the Nim compiler for the LoongArch64 architecture. Investigated platform compatibility issues and improved build scripts and toolchain configurations. Validated compiler functionality and runtime support on physical Loongson hardware platforms.

5. *Maritime Intelligent Perception and Digital Twin System* #h(1fr) #link("https://github.com/DerrickXu-XZZ/Ocean-Photovoltaic-O-M")[DerrickXu-XZZ/Ocean-Photovoltaic-O-M]

- Vue 3, Django, PyTorch, Depth-Pro #h(1fr) #link("https://github.com/RamessesN/VesselContest_C3")[RamessesN/VesselContest_C3]

#v(0em)

- Contributed to the development of a digital twin platform for offshore photovoltaic monitoring and maintenance. Built a monocular depth estimation pipeline using Apple’s Depth-Pro model to enrich maritime datasets with depth information. Developed visualization interfaces using Vue 3 and implemented backend services and RESTful APIs with Django.

== #fa-research Research Experience

*Semantic-Guided Fusion Network for Multi-source Remote Sensing Image Classification*

First Author #h(1fr) _IEEE Geoscience and Remote Sensing Letters (GRSL) 2026_

Proposed SGFNet, a semantic-guided fusion network for multi-source remote sensing image classification, addressing semantic context modeling limitations and cross-modal spatial misalignment.

- Designed the Semantic Mixed Convolution Block (SMCB), which dynamically generates convolution kernels based on semantic affinity to improve contextual representation learning.
- Developed the Frequency-Modulated Fusion Block (FMFB), leveraging DCT-based frequency-domain interactions to enhance robustness against spatial misalignment between HSI and SAR/LiDAR modalities.
- Achieved Overall Accuracy (OA) of 92.38% on the Augsburg dataset and 94.17% on the Houston 2018 dataset, outperforming multiple state-of-the-art methods. Open-sourced the complete implementation of SGFNet #link("https://github.com/oucailab/SGFNet").

== #fa-award Honourship

#item(
  [ *Marine Vehicle Design \
     and Construction Contest* ],
  [ *Second Prize of the National* ],
  date[2025.08]
)

#item(
  [ *Apple Mobile Application \
     Innovation Contest* ],
  [ *Second Prize of the East China Region* ],
  date[2025.08]
)

#item(
  [ *The Mathematical Contest \
     in Modeling and the \ 
     Interdisciplary Contest \
     in Modeling* ],
  [ *Honorable Mention* ],
  date[2025.05]
)

#item(
  [ *Computer System \ 
     Development Capability \
     Competition* ],
  [ *Excellence Award of the East China Region* ],
  date[2024.11]
)

#item(
  [ *Ocean University of China \
  Scholarship* ],
  [ *Third-Class Scholarship* ],
  date([2023 - 2024 & 2024 - 2025])
)

== #fa-building-columns Extracurricular Activities

#item(
  [ *#{myInfo.school} \ iOS Club Minister* ],
  [ 负责社团日常管理与技术活动组织，策划 \ 
    Swift 开发分享及实践活动; 指导新成员完 \
    成 iOS 开发入门项目，推动社团技术交 \
    流与项目协作。 ],
  date[2024.09 - 2026.06]
)

#item(
  [ *Robotics Group Project \ Teaching Assistant* ],
  [ 负责机器人项目课程辅导与技术支持，指导 \
  学生使用 Python 开展 RoboMaster 平台开发; \
  讲解计算机视觉、运动控制等基础内容，协 \
  助完成课程项目推进。 ],
  date[2025.08 - 2025.10]
)
