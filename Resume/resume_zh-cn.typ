#import "./template.typ": *
#import "@preview/sicons:16.0.0": sicon-label

#let myInfo = (
  name: "赵禹惟",
  sepPhone: "135-7877-4880",
  school: "中国海洋大学",
  major: "计算机科学与技术",
  department: "信息科学与工程学部",
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

  #v(1.5em)

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
  计算机科学与技术、机器人工程双学位本科生，专注于机器人系统、人工智能与空间计算方向。具备 ROS2 机器人开发、计算机视觉、iOS 原生应用及跨平台软件开发经验，曾以第一作者身份在 _IEEE GRSL_ 发表论文。长期参与开源项目维护与工程实践，熟悉 Python, C/C++, Swift 等开发语言，具备从算法验证到系统落地的完整开发经验。
]

== #fa-graduation-cap 教育背景

*#{myInfo.school}* #h(1fr) *青岛, 中国* \
#{myInfo.major} (主修) #h(1fr) 2023.09 - 2026.07

#v(0.5em)

*Heriot-Watt University* #h(1fr) *Edinburgh, United Kingdom* \
_BEng (Hons) Robotics, Autonomous and Interactive Systems_ (双学位) #h(1fr) 2026.09 - 2027.06

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *均分*
][
  87.2/100 #h(0.5em) (GPA: 3.57/4)
]

#sidebar(with-line: true, side-width: 12%)[
  *核心课程*
][
  计算机系统基础 (98.5/100)、集成机器人 (98/100)、人工智能和智能体 (96.5/100)、Linux 与 C 语言 (96/100)、线性代数 (95/100)。

  系统学习计算机体系结构、操作系统基础、机器人感知与控制、人工智能算法及数学建模方法，具备机器人系统开发、计算机视觉及跨平台软件开发相关理论基础。
]

== #fa-wrench 专业技能

#sidebar(with-line: true, side-width: 12%)[
  *编程语言*
][
  熟练使用 Python, C/C++, Swift 进行项目开发;具备 Java 基础开发能力; 熟悉 Nim 语言及其编译构建流程; 熟练使用 LaTeX 与 Typst 进行技术文档与科研论文排版。
]

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *应用开发*
][
  熟悉 ROS2 机器人开发框架，具备 SLAM 建图、定位导航、视觉感知及机器人系统集成经验; 熟悉 PyTorch 模型训练与部署，具备目标检测与多模态数据处理经验; 具备 SwiftUI, ARKit, RealityKit 等 Apple 平台开发经验; 具备 STM32 等嵌入式开发与硬件调试经验。
]

#v(0.5em)

#sidebar(with-line: true, side-width: 12%)[
  *环境与工具*
][
  熟悉 Linux (Ubuntu, ArchLinux) 与 macOS 开发环境; 熟练使用 Git 进行版本控制与开源协作; 熟悉 CMake 构建系统及 GCC/Clang 编译工具链; 具备跨平台软件编译、调试与部署经验。
]

== #fa-github 项目经历

1. *CourtSweeper 智能网球捡拾机器人* #h(1fr) #link("https://github.com/RamessesN/CourtSweeper")[RamessesN/CourtSweeper]

- 技术栈: ROS2, slam_toolbox, Nav2, Yolo26, Jetson Orin NX, Robomaster-SDK-Ultra, SwiftUI

#v(0em)

- 开发面向网球场景的自主捡球机器人，基于 ROS2 构建感知、导航与执行控制系统。利用 2D 激光雷达完成地图构建与定位，并结合 Nav2 导航框架实现路径规划与自主移动；训练并部署轻量化 YOLO 模型，实现网球目标检测与跟踪。开发 RoboMaster 底盘 ROS2 驱动节点，实现 `/cmd_vel` 指令与底层运动控制接口对接；设计双滚轮捡球机构并实现电机控制逻辑。同步开发 SwiftUI 移动端应用，实现机器人状态监控、视频回传及远程操作。

2. *Lost Anchor 端侧智能 iOS 增强现实应用* #h(1fr) #link("https://github.com/RamessesN/Macintustin")[RamessesN/Macintustin]

- 技术栈: Swift, SwiftUI, ARKit, RealityKit, CoreLocation, CoreML

#v(0em)

- 开发面向校园导览场景的原生 iOS 增强现实应用，基于 ARKit 与 RealityKit 构建空间锚点和三维内容展示功能，实现现实场景与数字信息的融合呈现。结合 CoreLocation 实现地理位置感知与地标信息展示，并探索端侧 AI 在移动设备上的应用。基于 Qwen-2B 4-bit 量化模型完成 CoreML 格式的转换与部署，实现离线环境下的本地推理能力，为智能问答与导览交互提供支持。

3. *Robomaster-SDK-Ultra 与 YDLidar 跨平台驱动维护* #h(1fr) #link("https://github.com/RamessesN/Robomaster-SDK-Ultra")[RamessesN/Robomaster-SDK-Ultra]

- 技术栈: Python, C++, FFmpeg, Opus, pybind11, Cmake, macOS, Linux #h(1fr) #link("https://github.com/RamessesN/YDLidar-SDK")[RamessesN/YDLidar-SDK]

#v(0em)

- 维护并扩展 DJI RoboMaster Python SDK，修复新版本 Python 环境下的兼容性问题，整合 FFmpeg、Opus 与 pybind11 依赖链路，实现 Apple Silicon 与 Linux 平台稳定运行。参与 YDLidar SDK ARM64 适配，完善 macOS 平台构建与运行支持。

4. *Nim 编译器向龙芯架构迁移* #h(1fr) #link("https://github.com/RamessesN/Nim2LoongArch64")[RamessesN/Nim2LoongArch64]

- 技术栈: Nim, GCC, Linux, LoongArch64, Git

#v(0em)

- 参与 Nim 编译器在国产龙芯 LoongArch64 架构上的移植与适配工作。针对编译流程中的平台兼容性问题进行分析与修复，完善工具链配置与构建脚本，解决交叉编译及本地编译过程中的环境依赖问题。通过实际龙芯硬件平台完成编译测试与运行验证，推动 Nim 语言生态对国产 CPU 架构的支持，为跨平台软件开发提供基础环境保障。

5. *全天候海上智能感知与数字孪生系统* #h(1fr) #link("https://github.com/DerrickXu-XZZ/Ocean-Photovoltaic-O-M")[DerrickXu-XZZ/Ocean-Photovoltaic-O-M]

- 技术栈: Vue 3, Django, PyTorch, Depth-Pro #h(1fr) #link("https://github.com/RamessesN/VesselContest_C3")[RamessesN/VesselContest_C3]

#v(0em)

- 参与学校工程学院海上光伏监测与运维数字孪生系统开发，负责数据处理流程及前后端功能实现。基于 Apple Depth-Pro 模型构建单目深度估计数据生成流程，为海上场景数据集补充深度信息；使用 Vue 3 开发可视化运维界面，实现设备状态展示、数据监测与交互功能；基于 Django 搭建后端服务并设计 RESTful API，完成前后端数据通信与业务逻辑实现。

== #fa-research 科研经历

*Semantic-Guided Fusion Network for Multi-source Remote Sensing Image Classification*

第一作者 #h(1fr) _IEEE GRSL 2026_

针对多源遥感图像分类中语义上下文建模不足及跨模态轻微空间错位问题，提出语义引导融合网络 (SGFNet)。

- 提出语义混合卷积模块 (SMCB)，利用语义亲和度动态生成卷积核，增强多源遥感数据的上下文语义建模能力；
- 提出调频融合模块 (FMFB)，基于 DCT 构建频域跨模态交互机制，缓解 HSI 与 SAR/LiDAR 数据间轻微空间错位造成的融合误差；
- 在 Augsburg 与 Houston2018 两个国际公开数据集上取得 92.38% 和 94.17% 的 OA，整体性能优于多种主流方法；核心代码已开源 #link("https://github.com/oucailab/SGFNet")。

== #fa-award 获奖情况

#item(
  [ *全国海洋航行器设计制作大赛* ],
  [ *全国二等奖* ],
  date(DT(2025, 8))
)

#item(
  [ *Apple 移动应用创新赛* ],
  [ *华东赛区二等奖* ],
  date(DT(2025, 8))
)

#item(
  [ *美国大学生数学建模竞赛* ],
  [ Honorable Mention ],
  date(DT(2025, 5))
)

#item(
  [ *全国大学生计算机系统能力大赛* ],
  [ *华东赛区优胜奖* ],
  date(DT(2024, 11))
)

#item(
  [ *中国海洋大学奖学金* ],
  [ *校级三等奖学金* ],
  date([2023 - 2024 学年 & 2024 - 2025 学年])
)

== #fa-building-columns 校园经历

#item(
  [ *#{myInfo.school} iOS Club 部长* ],
  [ 负责社团日常管理与技术活动组织，策划 \ 
    Swift 开发分享及实践活动; 指导新成员完 \
    成 iOS 开发入门项目，推动社团技术交 \
    流与项目协作。 ],
  date[#DT(2024, 9) - #DT(2026, 6)]
)

#item(
  [ *机器人小组项目课程助教* ],
  [ 负责机器人项目课程辅导与技术支持，指导 \
  学生使用 Python 开展 RoboMaster 平台开发; \
  讲解计算机视觉、运动控制等基础内容，协 \
  助完成课程项目推进。 ],
  date[#DT(2025, 8) - #DT(2025, 10)]
)
