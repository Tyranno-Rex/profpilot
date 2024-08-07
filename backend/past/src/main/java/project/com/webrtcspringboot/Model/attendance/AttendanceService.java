package project.com.webrtcspringboot.Model.attendance;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import project.com.webrtcspringboot.Model.User.Users;
import project.com.webrtcspringboot.Model.flight.Flight;

@RequiredArgsConstructor
@Service
public class AttendanceService {
    private final AttendanceRepository attendanceRepository;

    public Attendance findAttendanceByUserAndDateAndFlight(Users user, String date, Flight flight) {
        return this.attendanceRepository.findByUserAndTodayAndFlight(user, date, flight);
    }

    public Attendance isStudentAttended(String lectureName, Flight flight, Users user) {
        return this.attendanceRepository.findByLectNameAndFlightAndUser(lectureName, flight, user);
    }
}
