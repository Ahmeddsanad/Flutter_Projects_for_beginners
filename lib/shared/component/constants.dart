List<Map> tasks = [];

//https://newsapi.org/v2/everything?q=tesla&from=2022-07-24&sortBy=publishedAt&apiKey=8cf0ab8b4fa8438990ae6171e83c225b


//base url : https://newsapi.org/
//method url : v2/everything?
//queries : q=tesla&from=2022-07-24&sortBy=publishedAt&apiKey=8cf0ab8b4fa8438990ae6171e83c225b


// another news api with 1.science 2.sports 3.business

//https://newsapi.org/v2/everything?q=apple&from=2022-08-26&to=2022-08-26&sortBy=popularity&apiKey=8cf0ab8b4fa8438990ae6171e83c225b

//base url : https://newsapi.org/
//method url : v2/everything?
//queries : q=apple&from=2022-08-26&to=2022-08-26&sortBy=popularity&apiKey=8cf0ab8b4fa8438990ae6171e83c225b



//https://newsapi.org/v2/everything?q=tesla&apiKey=8cf0ab8b4fa8438990ae6171e83c225b

//https://newsapi.org/v2/everything?q=tesla&from=2022-08-01&sortBy=publishedAt&apiKey=8cf0ab8b4fa8438990ae6171e83c225b


void printFullText(String text)
{
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}


String token = '';