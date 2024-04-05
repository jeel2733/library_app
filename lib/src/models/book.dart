class Book {
  String title;
  String author;
  String description;
  String coverUrl;
  String category;
  num rating;

  Book(this.title, this.author, this.description, this.coverUrl, this.category,
      this.rating);
}

final initialBooks = [
  Book(
    'Fourth generation data communications and networking ',
    'Book is available',
    'https://www.google.com/search?q=fourth+generation+data+communications+and+networking+pdf&rlz=1C1OKWM_enIN975IN975&ei=pXI1ZMffLJuYseMPhIu8kAI&oq=Fourth+generation+data+communications+and+networking+&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAxgAMgUIIRCgATIFCCEQoAE6CggAEEcQ1gQQsAM6BwghEKABEAo6BgghEA0QFToICCEQFhAeEB1KBAhBGABQWFiRbWCAe2gBcAF4AIABvAKIAZMTkgEIMC4xMS4yLjGYAQCgAQGgAQLIAQjAAQE&sclient=gws-wiz-serp',
    // '',
    // 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/children_bookcover.png',
    //'https://drive.google.com/file/d/143ktUD9qQ16WxWeV4NXz6rRL7u7DvY0q/view?usp=sharing',
     'https://m.media-amazon.com/images/I/71gfvWeTAiL.jpg',
    'DCN',
    9.0,
  ),
  Book(
    'Data Structures and Algorithms in Java',
    'Book is not available',
    'https://www.google.com/search?q=data+structures+and+algorithms+in+java+book&rlz=1C1OKWM_enIN975IN975&oq=Data+Structures+and+Algorithms+in+Java+book&aqs=chrome.0.0i355i512j46i512j0i512l2j0i22i30l6.3323j0j9&sourceid=chrome&ie=UTF-8',
     'https://www.oreilly.com/api/v2/epubs/9780763757564/files/images/cover.jpg',
    // 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/560d16623f9c2df9615744dfab551b3d/e50c016f-b6a8-4666-8fb8-fe6bd5fd9fec_rw_1920.jpeg?h=dc627898fc5eac88aa791fb2b124ecbd',
    'DSA',
    7.0,
  ),
  Book(
    'Database Management Systems',
    'Book is available',
    'https://www.google.com/search?q=database+management+systems+book&rlz=1C1OKWM_enIN975IN975&oq=Database+Management+Systems+book&aqs=chrome.0.0i355i512j46i512j0i22i30l8.2226j0j9&sourceid=chrome&ie=UTF-8',
    'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91zPPwURKUL.jpg',
    // 'https://pro2-bar-s3-cdn-cf4.myportfolio.com/2e52194b029a65d876d57172b412d63e/5a0ce3f3-5f59-4098-8d45-93a73cf2800c_rw_1200.png?h=40a11543bd7bdc2d8e956150e3a5af2c',
    'DBMS',
    6.7,
  ),
];

final bookToAdd = Book(
  'Harry Potter',
  'Book is available',
  'https://ztcprep.com/library/story/Harry_Potter/Harry_Potter_(www.ztcprep.com).pdf',
   'https://images.ctfassets.net/usf1vwtuqyxm/3d9kpFpwHyjACq8H3EU6ra/85673f9e660407e5e4481b1825968043/English_Harry_Potter_4_Epub_9781781105672.jpg?w=914&q=70&fm=jpg',
  // 'https://www.google.com/url?sa=i&url=https%3A%2F%2Few.com%2Fbooks%2Fharry-potter-book-covers%2F&psig=AOvVaw1GZjt6AvrUc7uV67QOjqD6&ust=1680715401267000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLii3PXekP4CFQAAAAAdAAAAABAE',
  'Fantasy',
  9.2,
);
