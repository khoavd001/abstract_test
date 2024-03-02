// Abstract Factory Interface
abstract class HealthcareManagementFactory {
  PatientInformationSystem createPatientInformationSystem();
  AppointmentSchedulingSystem createAppointmentSchedulingSystem();
}

// Concrete Factories
class HospitalFactory implements HealthcareManagementFactory {
  @override
  PatientInformationSystem createPatientInformationSystem() {
    return ElectronicHealthRecord();
  }

  @override
  AppointmentSchedulingSystem createAppointmentSchedulingSystem() {
    return HospitalAppointmentScheduler();
  }
}

class FamilyClinicFactory implements HealthcareManagementFactory {
  @override
  PatientInformationSystem createPatientInformationSystem() {
    return PaperHealthRecord();
  }

  @override
  AppointmentSchedulingSystem createAppointmentSchedulingSystem() {
    return FamilyClinicAppointmentScheduler();
  }
}

// Abstract Products
abstract class PatientInformationSystem {
  void recordPatientInformation();
}

abstract class AppointmentSchedulingSystem {
  void scheduleAppointment();
}

// Concrete Products
class ElectronicHealthRecord implements PatientInformationSystem {
  @override
  void recordPatientInformation() {
    print('Cài đặt cho hồ sơ điện tử');
  }
}

class HospitalAppointmentScheduler implements AppointmentSchedulingSystem {
  @override
  void scheduleAppointment() {
    print('Cài đặt cho lịch hẹn bệnh viện');
  }
}

class PaperHealthRecord implements PatientInformationSystem {
  @override
  void recordPatientInformation() {
    print('Cài đặt cho hồ sơ giấy');
  }
}

class FamilyClinicAppointmentScheduler implements AppointmentSchedulingSystem {
  @override
  void scheduleAppointment() {
    print('Cài đặt cho lịch hẹn phòng mạch gia đình');
  }
}
