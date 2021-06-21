//对象数组按对象属性进行排序（日期属性）
function sortDownDate(a, b) {
               return Date.parse(a.received) - Date.parse(b.received);
    
             function sortUpDate(a, b) {
                 return Date.parse(b.received) - Date.parse(a.received);
             }
            }
    
            var arr=[
               {
                    sender: "elson",
                    received: "2017-08-18 13:23:21",
                    age: "21"
                },
                {
                    sender: "neson",
                    received: "2017-03-18 19:23:21",
                    age: "22"
                },
                {
                    sender: "nelson",
                    received: "2015-08-18 13:23:21",
                    age: "22"
                },
                {
                    sender: "lson",
                    received: "2018-01-18 12:12:12",
                    age: "56"
                },
                {
                    sender: "nelson",
                    received: "2011-02-18 13:23:21",
                    age: "22"
               },
                {
                    sender: "son",
                    received: "2011-08-18 3:3:3",
                   age: "22"
                },
                {
                    sender: "eson",
                    received: "2017-01-18 13:23:21",
                    age: "22"
                },
                {
                    sender: "nelson",
                    received: "2017-08-18 6:6:6",
                    age: "34"
                },
                {
                    sender: "elon",
                    received: "2017-02-18 13:23:21",
                    age: "22"
                },
                {
                    sender: "elon",
                  received: "2017-04-18 13:23:21",
                  age: "22"
              },
                {
                  sender: "lson",
                   received: "2017-06-18 13:23:21",
                   age: "22"
              },
             {
                 sender: "eon",
                 received: "2017-08-18 13:23:21",
                 age: "22"
             },
          ];
 
        console.log(arr.sort(sortDownDate));//正序
         //console.log(arr.sort(sortUpDate));//反序