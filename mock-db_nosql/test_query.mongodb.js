use ("sample_mflix")
db.movies.aggregate([
    {$match: {
      directors: "Christopher Nolan"
    }}, {$sort: {
      year: -1
    }}, {$limit: 5}, {$project: {
      _id: 0, title: 1, year: 1
    }}
])

// use ("sample_mflix") อิงข้างบนแล้วไม่ต้องใส่ก็ได้
db.movies.aggregate([
  { $match: { year: { $gte: 2000, $lte: 2010 } } },
  { $group: { _id: "$year", totalMovies: { $sum: 1 } } },
  { $sort: { _id: 1 } }
])

db.movies.aggregate([
  { $unwind: "$genres" },
  { $sortByCount: "$genres" },   // groups + counts + sorts, all in one
  { $limit: 10 }
])

