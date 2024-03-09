// Product: Đối tượng cần được xây dựng
class Computer {
  String cpu;
  String ram;
  String storage;
  String gpu;

  Computer(this.cpu, this.ram, this.storage, this.gpu);

  void displayInfo() {
    print("Computer Configuration:");
    print("CPU: $cpu");
    print("RAM: $ram");
    print("Storage: $storage");
    print("GPU: $gpu");
  }
}

// Abstract Builder: Interface cho Builder
abstract class ComputerBuilder {
  void buildCPU();
  void buildRAM();
  void buildStorage();
  void buildGPU();
  Computer getResult();
}

// Concrete Builder: Implement Builder
class HighEndComputerBuilder implements ComputerBuilder {
  Computer _computer = Computer("", "", "", "");

  @override
  void buildCPU() {
    _computer.cpu = "Intel Core i9";
  }

  @override
  void buildRAM() {
    _computer.ram = "32GB DDR4";
  }

  @override
  void buildStorage() {
    _computer.storage = "1TB SSD";
  }

  @override
  void buildGPU() {
    _computer.gpu = "NVIDIA RTX 3080";
  }

  @override
  Computer getResult() {
    return _computer;
  }
}

// Director: Quản lý quá trình xây dựng
class ComputerDirector {
  ComputerBuilder _builder;

  ComputerDirector(this._builder);

  void constructComputer() {
    _builder.buildCPU();
    _builder.buildRAM();
    _builder.buildStorage();
    _builder.buildGPU();
  }

  Computer getComputer() {
    return _builder.getResult();
  }
}
