pragma solidity >=0.4.17 <0.7.0;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint marks1;
    uint marks2;
    uint marks3;
    uint marks4;
    uint result;
    string status;
    
    function reportCard(string name1, uint rollno1, string batch1, uint marksq1, uint marksq2, uint marksq3) public {
        
        name = name1;
        rollno = rollno1;
        batch = batch1;
        marks1 = marksq1;
        marks2 = marksq2;
        marks3 = marksq3;
        
        
        result = marks1 + marks2 + marks3;
        result = result * 100/300;
        
         if( result < 30)
            status = "fail";
            
        else if(result >= 30)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string){
        return (name, rollno, batch, marks1, marks2, marks3,result, status);
    }
}
