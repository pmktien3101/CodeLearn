package hd.fe.com.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "usergroup_role")
public class UsergroupRole {
    @Id
    @Column(name = "usergroup_role_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String usergroupRoleUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "usergroup_uuid", nullable = false)
    private Usergroup usergroupUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "role_uuid", nullable = false)
    private Role roleUuid;

}