class BookModelEntity {
	String msg;
	int code;
	List<BookModelData> data;

	BookModelEntity({this.msg, this.code, this.data});

	BookModelEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		code = json['code'];
		if (json['data'] != null) {
			data = new List<BookModelData>();(json['data'] as List).forEach((v) { data.add(new BookModelData.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class BookModelData {
	String authorName;
	String reason;
	String chapteridFirst;
	int dateUpdated;
	int discountNum;
	String formats;
	String praiseCount;
	String bookCover;
	String readCount;
	String userid;
	String chapterNum;
	String numClick;
	String price;
	String audiobookPlaycount;
	int quickPrice;
	String digest;
	String topicFirst;
	String state;
	List<String> tag;
	String className;
	String introduction;
	String firstCateName;
	int isNew;
	String firstCateId;
	String author;
	String topClass;
	String bookInfo;
	String searchHeat;
	String size;
	String chargeMode;
	String statName;
	String chapterid;
	String recommendNum;
	String topic;
	bool isShortStory;
	String bid;
	String bookname;

	BookModelData({this.authorName, this.reason, this.chapteridFirst, this.dateUpdated, this.discountNum, this.formats, this.praiseCount, this.bookCover, this.readCount, this.userid, this.chapterNum, this.numClick, this.price, this.audiobookPlaycount, this.quickPrice, this.digest, this.topicFirst, this.state, this.tag, this.className, this.introduction, this.firstCateName, this.isNew, this.firstCateId, this.author, this.topClass, this.bookInfo, this.searchHeat, this.size, this.chargeMode, this.statName, this.chapterid, this.recommendNum, this.topic, this.isShortStory, this.bid, this.bookname});

	BookModelData.fromJson(Map<String, dynamic> json) {
		authorName = json['author_name'];
		reason = json['reason'];
		chapteridFirst = json['chapterid_first'];
		dateUpdated = json['date_updated'];
		discountNum = json['discountNum'];
		formats = json['formats'];
		praiseCount = json['praiseCount'];
		bookCover = json['book_cover'];
		readCount = json['readCount'];
		userid = json['userid'];
		chapterNum = json['chapterNum'];
		numClick = json['num_click'];
		price = json['price'];
		audiobookPlaycount = json['audiobook_playCount'];
		quickPrice = json['quick_price'];
		digest = json['digest'];
		topicFirst = json['topic_first'];
		state = json['state'];
		tag = json['tag']?.cast<String>();
		className = json['class_name'];
		introduction = json['introduction'];
		firstCateName = json['first_cate_name'];
		isNew = json['is_new'];
		firstCateId = json['first_cate_id'];
		author = json['author'];
		topClass = json['top_class'];
		bookInfo = json['book_info'];
		searchHeat = json['search_heat'];
		size = json['size'];
		chargeMode = json['chargeMode'];
		statName = json['stat_name'];
		chapterid = json['chapterid'];
		recommendNum = json['recommend_num'];
		topic = json['topic'];
		isShortStory = json['isShortStory'];
		bid = json['bid'];
		bookname = json['bookname'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['author_name'] = this.authorName;
		data['reason'] = this.reason;
		data['chapterid_first'] = this.chapteridFirst;
		data['date_updated'] = this.dateUpdated;
		data['discountNum'] = this.discountNum;
		data['formats'] = this.formats;
		data['praiseCount'] = this.praiseCount;
		data['book_cover'] = this.bookCover;
		data['readCount'] = this.readCount;
		data['userid'] = this.userid;
		data['chapterNum'] = this.chapterNum;
		data['num_click'] = this.numClick;
		data['price'] = this.price;
		data['audiobook_playCount'] = this.audiobookPlaycount;
		data['quick_price'] = this.quickPrice;
		data['digest'] = this.digest;
		data['topic_first'] = this.topicFirst;
		data['state'] = this.state;
		data['tag'] = this.tag;
		data['class_name'] = this.className;
		data['introduction'] = this.introduction;
		data['first_cate_name'] = this.firstCateName;
		data['is_new'] = this.isNew;
		data['first_cate_id'] = this.firstCateId;
		data['author'] = this.author;
		data['top_class'] = this.topClass;
		data['book_info'] = this.bookInfo;
		data['search_heat'] = this.searchHeat;
		data['size'] = this.size;
		data['chargeMode'] = this.chargeMode;
		data['stat_name'] = this.statName;
		data['chapterid'] = this.chapterid;
		data['recommend_num'] = this.recommendNum;
		data['topic'] = this.topic;
		data['isShortStory'] = this.isShortStory;
		data['bid'] = this.bid;
		data['bookname'] = this.bookname;
		return data;
	}
}
