var app = angular.module('blog', ['lbServices']); 

app.controller('ArticleController', 
               ['$http', 'Article', function ($http, Article) {
    var self = this;
    this.articles = Article.find();

    this.loading = false;
    this.article = {};
    
    this.add = function() {
        console.log('Adding article');
        self.loading = true;
        Article.create({title: self.article.title,
                       content: self.article.content,
                       createdAt: new Date()
        })
        .$promise
        .then(function(article) {
                           self.articles.push(article);
                           self.article = {};
                           self.loading = false;
                       });
    };
}]);
