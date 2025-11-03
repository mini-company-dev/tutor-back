package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Comment;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Getter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tutor {
    @Id
    @GeneratedValue
    private UUID id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id", nullable = false, updatable = false)
    private Member member;

    private String bioVideoUrl;

    private String shortBio;

    @Builder.Default
    @Column(nullable = false)
    private int rating = 0;

    private String classStyleFileUrl;

    @Column(nullable = false)
    private boolean isActive;

    @OneToMany(mappedBy = "tutor", cascade = CascadeType.REMOVE)
    private Set<TutorSpecialty> specialties;

    public void addSpecialty(Specialty specialty) {
        boolean exists = specialties.stream()
                .anyMatch(ts -> ts.getSpecialty().getId().equals(specialty.getId()));

        if (!exists) {
            TutorSpecialty tutorSpecialty = TutorSpecialty.builder()
                    .tutor(this)
                    .specialty(specialty)
                    .build();
            specialties.add(tutorSpecialty);
        }
    }

    public void removeSpecialty(UUID specialtyId) {
        specialties.removeIf(ts -> ts.getSpecialty().getId().equals(specialtyId));
    }

    @ElementCollection
    @CollectionTable(
            name = "tutor_tags",
            joinColumns = @JoinColumn(name = "tutor_id")
    )
    @Column(name = "tag", nullable = false)
    private Set<String> tags;

    public void updateProfile(String bioVideoUrl,
                              String shortBio,
                              String classStyleFileUrl,
                              Set<String> tags) {
        this.bioVideoUrl = bioVideoUrl;
        this.shortBio = shortBio;
        this.classStyleFileUrl = classStyleFileUrl;
        this.tags = tags;
    }

    @Builder.Default
    @OneToMany(mappedBy = "tutor", cascade = CascadeType.ALL, orphanRemoval = true)
    List<Student> students = new ArrayList<>();

    public void addStudent(Student student) {
        students.add(student);
    }
}
