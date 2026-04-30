# EE3165 - IC Design Laboratory
**Lab 3: Synthesis and Static Timing Analysis (STA)**

[![Institution](https://img.shields.io/badge/Institution-HCMUT-blue.svg)](https://hcmut.edu.vn/)
[![Course](https://img.shields.io/badge/Course-EE3165-orange.svg)]()
[![Status](https://img.shields.io/badge/Status-Completed-success.svg)]()

Repository này lưu trữ mã nguồn, kịch bản tổng hợp (scripts) và các báo cáo kết quả của bài Lab 3 môn Thiết kế vi mạch (IC Design). Trọng tâm của bài thực hành là thực hiện quy trình tổng hợp mạch số (Synthesis) và Phân tích thời gian tĩnh (Static Timing Analysis - STA) sử dụng bộ công cụ Cadence.

## 👥 Nhóm thực hiện (Group 5 - L03)
**Giảng viên hướng dẫn:** ThS. Nguyễn Trung Hiếu

| STT | Họ và tên | MSSV | Tỉ lệ hoàn thành |
| :---: | :--- | :--- | :---: |
| 1 | Vũ Nhật Huy | 2311267 | 100% |
| 2 | Nguyễn Minh Thuận | 2313355 | 100% |
| 3 | Thái Đức Thiên | 2313222 | 100% |

---

## 🎯 Mục tiêu bài Lab
1. Nắm vững luồng thiết kế số: **RTL Design $\rightarrow$ Synthesis $\rightarrow$ Gate-level Simulation**.
2. Vận dụng thành thạo công cụ **Cadence Genus** để tổng hợp mã RTL thành Gate-level Netlist và trích xuất file SDF (Standard Delay Format).
3. Sử dụng các tập lệnh **Tcl** và thiết lập tệp ràng buộc **SDC (Synopsys Design Constraints)** để chỉ định các tham số thời gian, công suất và diện tích.
4. Thực hiện Static Timing Analysis (STA) để đánh giá và kiểm chứng các đường truyền tới hạn (Worst paths) cho cả mạch tổ hợp (Combinational) và mạch tuần tự (Sequential) dưới các điều kiện quy trình (Process Corners) khác nhau ở công nghệ 45nm.

---

## 📁 Cấu trúc thư mục (Repository Structure)
```text
EE3165_Lab3_STA/
├── 01_rtl/                 # Mã nguồn SystemVerilog (ALU tổ hợp, ALU tuần tự) và Testbench
├── 02_reports/             # Các file báo cáo trích xuất từ Genus (timing.rpt, area.rpt, power.rpt,...)
├── 03_outputs/             # Netlist mức cổng (*_netlist.sv) và file delay (.sdf) sau tổng hợp
├── scripts/                # File kịch bản Tcl (run_synthesis.tcl) và ràng buộc thời gian (constraints.sdc)
├── figure/                 # Hình ảnh sơ đồ mạch (Schematic) và dạng sóng minh họa
├── report/                 # File PDF báo cáo hoàn chỉnh của nhóm
└── README.md               # Tài liệu mô tả dự án
