*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user Register to Register from on Futureskills with ${url} and ${browser} and ${email} and ${firstname} and ${lastname} and ${phone} and ${password}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='อีเมล']    ${email}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='ชื่อ']    ${firstname}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='นามสกุล']    ${lastname}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='เบอร์โทรศัพท์']    ${phone}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='รหัสผ่าน']    ${password}
    CommonKeywords.Wait until element is ready then input text    //input[@placeholder='ยืนยันรหัสผ่าน']    ${password}
    CommonKeywords.Wait until page contains checkbox then click element    //input[@name='consent'] 
user click to submit register form
    CommonKeywords.Wait until element is ready then click element    //button[contains(text(),'สมัครสมาชิก')]

Verify OTP text with ${expected_messages} 
    CommonKeywords.Wait until page contains element then verify text    //h6[contains(text(),'ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์')]    ${expected_messages}


