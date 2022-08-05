package lierengu.workbench.domain;

public class Employee {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.emp_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String empId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.emp_name
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String empName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.gender
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String gender;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.identity
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String identity;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.degree
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String degree;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.working
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String working;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.department
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String department;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.job
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String job;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.onboarding
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String onboarding;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.dimission
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String dimission;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.phone
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String phone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.email
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.photo_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String photoId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.group_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String groupId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.address
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String address;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.school
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String school;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.profession
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String profession;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.birth
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String birth;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_emp.age
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    private String age;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.id
     *
     * @return the value of t_emp.id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.id
     *
     * @param id the value for t_emp.id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.emp_id
     *
     * @return the value of t_emp.emp_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getEmpId() {
        return empId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.emp_id
     *
     * @param empId the value for t_emp.emp_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setEmpId(String empId) {
        this.empId = empId == null ? null : empId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.emp_name
     *
     * @return the value of t_emp.emp_name
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getEmpName() {
        return empName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.emp_name
     *
     * @param empName the value for t_emp.emp_name
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setEmpName(String empName) {
        this.empName = empName == null ? null : empName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.gender
     *
     * @return the value of t_emp.gender
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getGender() {
        return gender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.gender
     *
     * @param gender the value for t_emp.gender
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.identity
     *
     * @return the value of t_emp.identity
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getIdentity() {
        return identity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.identity
     *
     * @param identity the value for t_emp.identity
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.degree
     *
     * @return the value of t_emp.degree
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getDegree() {
        return degree;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.degree
     *
     * @param degree the value for t_emp.degree
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.working
     *
     * @return the value of t_emp.working
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getWorking() {
        return working;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.working
     *
     * @param working the value for t_emp.working
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setWorking(String working) {
        this.working = working == null ? null : working.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.department
     *
     * @return the value of t_emp.department
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getDepartment() {
        return department;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.department
     *
     * @param department the value for t_emp.department
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.job
     *
     * @return the value of t_emp.job
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getJob() {
        return job;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.job
     *
     * @param job the value for t_emp.job
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.onboarding
     *
     * @return the value of t_emp.onboarding
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getOnboarding() {
        return onboarding;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.onboarding
     *
     * @param onboarding the value for t_emp.onboarding
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setOnboarding(String onboarding) {
        this.onboarding = onboarding == null ? null : onboarding.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.dimission
     *
     * @return the value of t_emp.dimission
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getDimission() {
        return dimission;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.dimission
     *
     * @param dimission the value for t_emp.dimission
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setDimission(String dimission) {
        this.dimission = dimission == null ? null : dimission.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.phone
     *
     * @return the value of t_emp.phone
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.phone
     *
     * @param phone the value for t_emp.phone
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.email
     *
     * @return the value of t_emp.email
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.email
     *
     * @param email the value for t_emp.email
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.photo_id
     *
     * @return the value of t_emp.photo_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getPhotoId() {
        return photoId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.photo_id
     *
     * @param photoId the value for t_emp.photo_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setPhotoId(String photoId) {
        this.photoId = photoId == null ? null : photoId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.group_id
     *
     * @return the value of t_emp.group_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getGroupId() {
        return groupId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.group_id
     *
     * @param groupId the value for t_emp.group_id
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setGroupId(String groupId) {
        this.groupId = groupId == null ? null : groupId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.address
     *
     * @return the value of t_emp.address
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.address
     *
     * @param address the value for t_emp.address
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.school
     *
     * @return the value of t_emp.school
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getSchool() {
        return school;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.school
     *
     * @param school the value for t_emp.school
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.profession
     *
     * @return the value of t_emp.profession
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getProfession() {
        return profession;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.profession
     *
     * @param profession the value for t_emp.profession
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setProfession(String profession) {
        this.profession = profession == null ? null : profession.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.birth
     *
     * @return the value of t_emp.birth
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getBirth() {
        return birth;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.birth
     *
     * @param birth the value for t_emp.birth
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setBirth(String birth) {
        this.birth = birth == null ? null : birth.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_emp.age
     *
     * @return the value of t_emp.age
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public String getAge() {
        return age;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_emp.age
     *
     * @param age the value for t_emp.age
     *
     * @mbggenerated Thu Aug 04 14:59:11 CST 2022
     */
    public void setAge(String age) {
        this.age = age == null ? null : age.trim();
    }
}