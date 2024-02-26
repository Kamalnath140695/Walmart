function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  
  var config = { // base config JSON
    emailid : 'kamalnath140695@gmail.com',
    password:'Kamal@123',
    createName:'kamal',
    lastName:'nath',
    Password:'Kamal@123',
    phNo:"8072287661",
    baseUrl:"https://www.walmart.com/",
    CreateUserUrl:"https://www.walmart.com/account/signup?vid=oaoh&tid=0&returnUrl=%2F",
    googleUrl:"https://www.google.com/",
    gmailsigninemailId:"kamalnath140695@gmail.com",
    gmailSearch:"Walmart.com",
    oldUserUrl:"https://www.walmart.com/account/signin/withotpchoice?vid=oaoh&tid=0&returnUrl=%2F",
    verifyYou: "https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F",
    env:env
  }
  if(!env){
	  env = 'qa';
  } 
  if (env == 'stage') {
    config.baseUrl= "https://www.walmart.com/",
    config.url="https://www.google.com/",
    config.password=password
    
  } else if (env == 'qa') {
	  config.baseUrl="https://www.walmart.com/",
    config.googleUrl="https://www.google.com/",
    config.password='Kamal@146',
    config.emailid='kamalnath.qatesting@gmail.com',
    config.createName='kamal',
config.lastName='nath',
config.Password='Kamal@146',
config.phNo="8072287661",
config.baseUrl="https://www.walmart.com/",
config.CreateUserUrl="https://www.walmart.com/account/signup?vid=oaoh&tid=0&returnUrl=%2F",
config.url="https://www.google.com/",
config.gmailsigninemailId="kamalnath.qatesting@gmail.com",
config.gmailSearch="Walmart.com",
config.oldUserUrl="https://www.walmart.com/account/signin/withotpchoice?vid=oaoh&tid=0&returnUrl=%2F",
config.verifyYou="https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F"
  
	  
    /*config.baseUrl=baseUrl,
    config.url=url,
    config.password=password,
    config.emailid=emailid,
    config.createName=createName,
config.lastName=lastName,
config.Password=Password,
config.phNo=phNo,
config.baseUrl=baseUrl,
config.CreateUserUrl=CreateUserUrl,
config.url=url,
config.gmailsigninemailId=gmailsigninemailId,
config.gmailSearch=gmailSearch,
config.oldUserUrl=oldUserUrl,
config.verifyYou=verifyYou,
config.driver = driver*/
  }
  /*var config = {
    driver: {
      type: 'chrome',
      showDriverLog: true,
      start: true,
      stop: false,
      addOptions: ["--remote-allow-origins=*,--disable-popup-blocking=*, --disable-save-password-bubble=*,--disable-infobars=*"]
    }
  };*/
 
 /* config.driver = karate.callSingle('classpath:com/signUp/init-driver.feature');
 */ 

karate.configure('driver', { type: 'chrome', showDriverLog: true,start:true, stop: false, addOptions: ["--remote-allow-origins=*,--disable-popup-blocking, --disable-save-password-bubble=*,--disable-infobars=*"] });
  /* karate.configure('driverTarget', { docker: 'karatelabs/karate-chrome', secComp: 'src/test/java/chrome.json', vncPort: 5900 });
*/

  /* var configures = Java.type('javaclass.ChromeDriverIns.java');
  var config = new configures();*/
  /*karate.configure('report',{showLog: true, showAllSteps: true, printEnabled:true });
  */ var info=karate.info;
     karate.log(info);
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  
  return config;
}