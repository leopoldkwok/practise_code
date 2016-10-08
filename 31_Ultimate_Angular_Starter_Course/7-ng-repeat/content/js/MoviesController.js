function MoviesController() {
  this.favourites = [{
    title: 'The Shawshank Redemption',
    year: '1994'
  },{
    title: 'Second todo item!',
    year: '2010'
  },{
    title: 'Third todo item!',
    year: '1999'
  },{
    title: 'Saving Private Ryan',
    year: '1998'
  }];
}

angular
  .module('app')
  .controller('MoviesController', MoviesController);
