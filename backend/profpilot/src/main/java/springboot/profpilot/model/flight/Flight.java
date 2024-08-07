package springboot.profpilot.model.flight;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import springboot.profpilot.model.attendance.Attendance;
import springboot.profpilot.model.lecture.Lecture;
import springboot.profpilot.model.member.Member;
import springboot.profpilot.model.notification.Notification;

import java.util.List;

@Entity
@Getter
@Setter
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private Long identifier;
    private String date;
    private String time;
    private Long session;
    private String building;
    private String room;
    private String start_time;
    private String end_time;
    private String status;
    private Long student_count;
    private Long attend_student_count;

    @ManyToOne(cascade = CascadeType.ALL)
    @JsonBackReference
    private Lecture lecture;

    @ManyToOne(cascade = CascadeType.ALL)
    @JsonBackReference
    private Member Professor;

    @ManyToMany(cascade = CascadeType.ALL)
    @JsonBackReference
    private List<Member> Students;

//    @ManyToMany(cascade = CascadeType.ALL)
//    @JsonBackReference
//    private List<Attendance> attendances;

//    @ManyToMany(cascade = CascadeType.ALL)
//    @JsonBackReference
//    private List<Notification> notifications;
}
