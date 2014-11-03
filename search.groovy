import com.day.cq.wcm.foundation.Search

def search = new Search(slingRequest)

search.searchIn = '/content/honda/en'
search.query = 'honda jazz'

def result = search.getResult()

def hits = result.getHits()

println hits.size

hits.each {
    it ->
    println it.title
}
