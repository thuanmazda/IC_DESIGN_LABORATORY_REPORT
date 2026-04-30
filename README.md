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
```

## 🛠 Công cụ và Thư viện sử dụng
* **Mô phỏng chức năng (Simulation):** Cadence Xcelium / SimVision
* **Tổng hợp mạch (Synthesis & STA):** Cadence Genus
* **Thư viện chuẩn (Standard Cell Library - 45nm):**
  * High Threshold Voltage (HVT): Ưu tiên tiết kiệm dòng rò.
  * Low Threshold Voltage (LVT): Ưu tiên tốc độ chuyển mạch.

---

## 🧪 Tóm tắt các thí nghiệm (Experiments)

### Experiment 1: Timing Analysis for Combinational Circuits
* Khảo sát mạch tổ hợp ALU 4-bit dưới điều kiện ràng buộc `max_delay = 0.1ns`.
* Phân tích 10 đường truyền trễ nhất (10 Worst Paths) và đánh giá độ chênh lệch thời gian (Slack) tại 4 góc mô phỏng:
  1. Fast (FF) - 1.0V - HVT
  2. Fast (FF) - 1.2V - HVT
  3. Slow (SS) - 1.0V - HVT
  4. Slow (SS) - 1.2V - HVT

### Experiment 2: Timing Optimization under Varying Constraints
* Sử dụng thư viện `slow_vdd1v2_basicCells_hvt.lib` để quan sát hành vi tối ưu hóa của công cụ Genus.
* Thực hiện tổng hợp và đánh giá mạch qua 5 mốc ràng buộc `max_delay` ngày càng khắt khe: **10 ns $\rightarrow$ 1 ns $\rightarrow$ 0.5 ns $\rightarrow$ 0.2 ns $\rightarrow$ 0.1 ns**.
* Xác định ngưỡng vi phạm timing và đánh giá sự đánh đổi giữa tốc độ và độ phức tạp của Gate-level Schematic.

### Experiment 3: Timing Analysis for Sequential Circuits
* Khảo sát mạch ALU tuần tự (đồng bộ theo sườn lên của xung nhịp `clk`).
* Đánh giá Setup Check và Hold Check với cấu hình SDC thay đổi qua 5 kịch bản (Scenarios), điều chỉnh linh hoạt các thông số: `period`, `max_delay`, `input_delay`, và `output_delay`.
* Xác định đường truyền tới hạn và nhận xét ảnh hưởng của tần số hoạt động đến hiệu năng toàn hệ thống.

---

## 🚀 Hướng dẫn chạy mô phỏng (How to Run)

**1. Khởi động môi trường Cadence**
Đảm bảo đã kết nối VPN và đăng nhập vào server của phòng Lab. Khởi tạo môi trường bằng lệnh:
```bash
source /tools/cadence/cadence.sh
```

**2. Chạy quá trình Tổng hợp (Synthesis)**
Di chuyển vào thư mục chứa project và khởi chạy Genus với kịch bản Tcl:
```bash
genus -f scripts/run_synthesis.tcl
```
*Lưu ý: Các báo cáo (timing, power, area) sẽ tự động sinh ra trong thư mục `02_reports/` và netlist/SDF sẽ nằm ở `03_outputs/`.*

**3. Xem sơ đồ mức cổng (Gate-level Schematic)**
Trong giao diện GUI của Genus, trên cửa sổ dòng lệnh (Genus-CLI), sử dụng lệnh `gui_show` để mở giao diện trực quan và kiểm tra mạch.

**4. Mô phỏng hậu tổng hợp (Post-synthesis Simulation)**
Chạy Xcelium để kiểm chứng chức năng của Netlist kết hợp file SDF:
```bash
xrun 01_rtl/tb_alu.sv 03_outputs/alu_netlist.sv -v <đường_dẫn_thư_viện_45nm> +sdf_annotate...
```
