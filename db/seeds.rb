

f = Feature.create(external_id:'8', magnitude:4.27, place:'25 km N of Hope, England',
              time:'2014-02-30', tsunami:false, mag_type:'md',
              title:'M 8 - 25 km N of Hope, England', longitude:23.1537,
              latitude:-80.6887,);

c = Comment.create(author_name:'Unknow', body:'This is my message', feature_id: f.id);
c = Comment.create(author_name:'Anonimus', body:'This is my message', feature_id: f.id);
c =Comment.create(author_name:'John Doe', body:'This is my message', feature_id: f.id);
