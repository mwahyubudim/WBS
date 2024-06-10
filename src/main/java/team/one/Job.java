package team.one;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Job {
    @Id
    private String jobId;
    private String jobDesc;

    // Getters and Setters
    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    public String getJobDesc() {
        return jobDesc;
    }

    public void setJobDesc(String jobDesc) {
        this.jobDesc = jobDesc;
    }
}
