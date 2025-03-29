class SurahDataModel {
  String suraNameAr;
  String suraNameEg;
  String ayaNumber;

  // Constructor to initialize the attributes
  SurahDataModel({
    required this.suraNameAr,
    required this.suraNameEg,
    required this.ayaNumber,
  });
}

class SurahDataModelArgument {
  SurahDataModel surahDataModel;
  int index;

  SurahDataModelArgument({required this.surahDataModel, required this.index});
}

List<SurahDataModel> surahList = [
  SurahDataModel(
    suraNameAr: "الفاتحه",
    suraNameEg: "Al-Fatiha",
    ayaNumber: "7",
  ),
  SurahDataModel(
    suraNameAr: "البقرة",
    suraNameEg: "Al-Baqarah",
    ayaNumber: "286",
  ),
  SurahDataModel(
    suraNameAr: "آل عمران",
    suraNameEg: "Aal-E-Imran",
    ayaNumber: "200",
  ),
  SurahDataModel(
    suraNameAr: "النساء",
    suraNameEg: "An-Nisa'",
    ayaNumber: "176",
  ),
  SurahDataModel(
    suraNameAr: "المائدة",
    suraNameEg: "Al-Ma'idah",
    ayaNumber: "120",
  ),
  SurahDataModel(
    suraNameAr: "الأنعام",
    suraNameEg: "Al-An'am",
    ayaNumber: "165",
  ),
  SurahDataModel(
    suraNameAr: "الأعراف",
    suraNameEg: "Al-A'raf",
    ayaNumber: "206",
  ),
  SurahDataModel(
    suraNameAr: "الأنفال",
    suraNameEg: "Al-Anfal",
    ayaNumber: "75",
  ),
  SurahDataModel(
    suraNameAr: "التوبة",
    suraNameEg: "At-Tawbah",
    ayaNumber: "129",
  ),
  SurahDataModel(suraNameAr: "يونس", suraNameEg: "Yunus", ayaNumber: "109"),
  SurahDataModel(suraNameAr: "هود", suraNameEg: "Hud", ayaNumber: "123"),
  SurahDataModel(suraNameAr: "يوسف", suraNameEg: "Yusuf", ayaNumber: "111"),
  SurahDataModel(suraNameAr: "الرعد", suraNameEg: "Ar-Ra'd", ayaNumber: "43"),
  SurahDataModel(suraNameAr: "إبراهيم", suraNameEg: "Ibrahim", ayaNumber: "52"),
  SurahDataModel(suraNameAr: "الحجر", suraNameEg: "Al-Hijr", ayaNumber: "99"),
  SurahDataModel(suraNameAr: "النحل", suraNameEg: "An-Nahl", ayaNumber: "128"),
  SurahDataModel(
    suraNameAr: "الإسراء",
    suraNameEg: "Al-Isra",
    ayaNumber: "111",
  ),
  SurahDataModel(suraNameAr: "الكهف", suraNameEg: "Al-Kahf", ayaNumber: "110"),
  SurahDataModel(suraNameAr: "مريم", suraNameEg: "Maryam", ayaNumber: "98"),
  SurahDataModel(suraNameAr: "طه", suraNameEg: "Ta-Ha", ayaNumber: "135"),
  SurahDataModel(
    suraNameAr: "الأنبياء",
    suraNameEg: "Al-Anbiya",
    ayaNumber: "112",
  ),
  SurahDataModel(suraNameAr: "الحج", suraNameEg: "Al-Hajj", ayaNumber: "78"),
  SurahDataModel(
    suraNameAr: "المؤمنون",
    suraNameEg: "Al-Mu'minun",
    ayaNumber: "118",
  ),
  SurahDataModel(suraNameAr: "النّور", suraNameEg: "An-Nur", ayaNumber: "64"),
  SurahDataModel(
    suraNameAr: "الفرقان",
    suraNameEg: "Al-Furqan",
    ayaNumber: "77",
  ),
  SurahDataModel(
    suraNameAr: "الشعراء",
    suraNameEg: "Ash-Shu'ara",
    ayaNumber: "227",
  ),
  SurahDataModel(suraNameAr: "النّمل", suraNameEg: "An-Naml", ayaNumber: "93"),
  SurahDataModel(suraNameAr: "القصص", suraNameEg: "Al-Qasas", ayaNumber: "88"),
  SurahDataModel(
    suraNameAr: "العنكبوت",
    suraNameEg: "Al-Ankabut",
    ayaNumber: "69",
  ),
  SurahDataModel(suraNameAr: "الرّوم", suraNameEg: "Ar-Rum", ayaNumber: "60"),
  SurahDataModel(suraNameAr: "لقمان", suraNameEg: "Luqman", ayaNumber: "34"),
  SurahDataModel(suraNameAr: "السجدة", suraNameEg: "As-Sajda", ayaNumber: "30"),
  SurahDataModel(
    suraNameAr: "الأحزاب",
    suraNameEg: "Al-Ahzab",
    ayaNumber: "73",
  ),
  SurahDataModel(suraNameAr: "سبأ", suraNameEg: "Saba", ayaNumber: "54"),
  SurahDataModel(suraNameAr: "فاطر", suraNameEg: "Fatir", ayaNumber: "45"),
  SurahDataModel(suraNameAr: "يس", suraNameEg: "Ya-Sin", ayaNumber: "83"),
  SurahDataModel(
    suraNameAr: "الصافات",
    suraNameEg: "As-Saffat",
    ayaNumber: "182",
  ),
  SurahDataModel(suraNameAr: "ص", suraNameEg: "Sad", ayaNumber: "88"),
  SurahDataModel(suraNameAr: "الزمر", suraNameEg: "Az-Zumar", ayaNumber: "75"),
  SurahDataModel(suraNameAr: "غافر", suraNameEg: "Ghafir", ayaNumber: "85"),
  SurahDataModel(suraNameAr: "فصّلت", suraNameEg: "Fussilat", ayaNumber: "46"),
  SurahDataModel(
    suraNameAr: "الشورى",
    suraNameEg: "Ash-Shura",
    ayaNumber: "53",
  ),
  SurahDataModel(
    suraNameAr: "الزخرف",
    suraNameEg: "Az-Zukhruf",
    ayaNumber: "89",
  ),
  SurahDataModel(
    suraNameAr: "الدّخان",
    suraNameEg: "Ad-Dukhan",
    ayaNumber: "59",
  ),
  SurahDataModel(
    suraNameAr: "الجاثية",
    suraNameEg: "Al-Jathiya",
    ayaNumber: "37",
  ),
  SurahDataModel(
    suraNameAr: "الأحقاف",
    suraNameEg: "Al-Ahqaf",
    ayaNumber: "35",
  ),
  SurahDataModel(suraNameAr: "محمد", suraNameEg: "Muhammad", ayaNumber: "38"),
  SurahDataModel(suraNameAr: "الفتح", suraNameEg: "Al-Fath", ayaNumber: "29"),
  SurahDataModel(
    suraNameAr: "الحجرات",
    suraNameEg: "Al-Hujurat",
    ayaNumber: "18",
  ),
  SurahDataModel(suraNameAr: "ق", suraNameEg: "Qaf", ayaNumber: "45"),
  SurahDataModel(
    suraNameAr: "الذاريات",
    suraNameEg: "Adh-Dhariyat",
    ayaNumber: "60",
  ),
  SurahDataModel(suraNameAr: "الطور", suraNameEg: "At-Tur", ayaNumber: "49"),
  SurahDataModel(suraNameAr: "النجم", suraNameEg: "An-Najm", ayaNumber: "62"),
  SurahDataModel(suraNameAr: "القمر", suraNameEg: "Al-Qamar", ayaNumber: "55"),
  SurahDataModel(
    suraNameAr: "الرحمن",
    suraNameEg: "Ar-Rahman",
    ayaNumber: "78",
  ),
  SurahDataModel(
    suraNameAr: "الواقعة",
    suraNameEg: "Al-Waqi'a",
    ayaNumber: "96",
  ),
  SurahDataModel(suraNameAr: "الحديد", suraNameEg: "Al-Hadid", ayaNumber: "29"),
  SurahDataModel(
    suraNameAr: "المجادلة",
    suraNameEg: "Al-Mujadila",
    ayaNumber: "22",
  ),
  SurahDataModel(suraNameAr: "الحشر", suraNameEg: "Al-Hashr", ayaNumber: "24"),
  SurahDataModel(
    suraNameAr: "الممتحنة",
    suraNameEg: "Al-Mumtahina",
    ayaNumber: "13",
  ),
  SurahDataModel(suraNameAr: "الصف", suraNameEg: "As-Saff", ayaNumber: "14"),
  SurahDataModel(
    suraNameAr: "الجمعة",
    suraNameEg: "Al-Jumu'a",
    ayaNumber: "11",
  ),
  SurahDataModel(
    suraNameAr: "المنافقون",
    suraNameEg: "Al-Munafiqun",
    ayaNumber: "11",
  ),
  SurahDataModel(
    suraNameAr: "التغابن",
    suraNameEg: "At-Taghabun",
    ayaNumber: "18",
  ),
  SurahDataModel(suraNameAr: "الطلاق", suraNameEg: "At-Talaq", ayaNumber: "12"),
  SurahDataModel(
    suraNameAr: "التحريم",
    suraNameEg: "At-Tahrim",
    ayaNumber: "12",
  ),
  SurahDataModel(suraNameAr: "الملك", suraNameEg: "Al-Mulk", ayaNumber: "30"),
  SurahDataModel(suraNameAr: "القلم", suraNameEg: "Al-Qalam", ayaNumber: "52"),
  SurahDataModel(
    suraNameAr: "الحاقة",
    suraNameEg: "Al-Haqqah",
    ayaNumber: "58",
  ),
  SurahDataModel(
    suraNameAr: "المعارج",
    suraNameEg: "Al-Ma'arij",
    ayaNumber: "44",
  ),
  SurahDataModel(suraNameAr: "نوح", suraNameEg: "Nuh", ayaNumber: "28"),
  SurahDataModel(suraNameAr: "الجن", suraNameEg: "Al-Jinn", ayaNumber: "72"),
  SurahDataModel(
    suraNameAr: "المزّمّل",
    suraNameEg: "Al-Muzzammil",
    ayaNumber: "20",
  ),
  SurahDataModel(
    suraNameAr: "المدّثر",
    suraNameEg: "Al-Muddathir",
    ayaNumber: "56",
  ),
  SurahDataModel(
    suraNameAr: "القيامة",
    suraNameEg: "Al-Qiyamah",
    ayaNumber: "40",
  ),
  SurahDataModel(
    suraNameAr: "الإنسان",
    suraNameEg: "Al-Insan",
    ayaNumber: "31",
  ),
  SurahDataModel(
    suraNameAr: "المرسلات",
    suraNameEg: "Al-Mursalat",
    ayaNumber: "50",
  ),
  SurahDataModel(suraNameAr: "النبأ", suraNameEg: "An-Naba'", ayaNumber: "40"),
  SurahDataModel(
    suraNameAr: "النازعات",
    suraNameEg: "An-Nazi'at",
    ayaNumber: "46",
  ),
  SurahDataModel(suraNameAr: "عبس", suraNameEg: "Abasa", ayaNumber: "42"),
  SurahDataModel(
    suraNameAr: "التكوير",
    suraNameEg: "At-Takwir",
    ayaNumber: "29",
  ),
  SurahDataModel(
    suraNameAr: "الإنفطار",
    suraNameEg: "Al-Infitar",
    ayaNumber: "19",
  ),
  SurahDataModel(
    suraNameAr: "المطفّفين",
    suraNameEg: "Al-Mutaffifin",
    ayaNumber: "36",
  ),
  SurahDataModel(
    suraNameAr: "الإنشقاق",
    suraNameEg: "Al-Inshiqaq",
    ayaNumber: "25",
  ),
  SurahDataModel(suraNameAr: "البروج", suraNameEg: "Al-Buruj", ayaNumber: "22"),
  SurahDataModel(suraNameAr: "الطارق", suraNameEg: "At-Tariq", ayaNumber: "17"),
  SurahDataModel(suraNameAr: "الأعلى", suraNameEg: "Al-A'la", ayaNumber: "19"),
  SurahDataModel(
    suraNameAr: "الغاشية",
    suraNameEg: "Al-Ghashiyah",
    ayaNumber: "26",
  ),
  SurahDataModel(suraNameAr: "الفجر", suraNameEg: "Al-Fajr", ayaNumber: "30"),
  SurahDataModel(suraNameAr: "البلد", suraNameEg: "Al-Balad", ayaNumber: "20"),
  SurahDataModel(suraNameAr: "الشمس", suraNameEg: "Ash-Shams", ayaNumber: "15"),
  SurahDataModel(suraNameAr: "الليل", suraNameEg: "Al-Lail", ayaNumber: "21"),
  SurahDataModel(suraNameAr: "الضحى", suraNameEg: "Ad-Duha", ayaNumber: "11"),
  SurahDataModel(suraNameAr: "الشرح", suraNameEg: "Ash-Sharh", ayaNumber: "8"),
  SurahDataModel(suraNameAr: "التين", suraNameEg: "At-Tin", ayaNumber: "8"),
  SurahDataModel(suraNameAr: "العلق", suraNameEg: "Al-Alaq", ayaNumber: "19"),
  SurahDataModel(suraNameAr: "القدر", suraNameEg: "Al-Qadr", ayaNumber: "5"),
  SurahDataModel(
    suraNameAr: "البينة",
    suraNameEg: "Al-Bayyina",
    ayaNumber: "8",
  ),
  SurahDataModel(
    suraNameAr: "الزلزلة",
    suraNameEg: "Az-Zalzalah",
    ayaNumber: "8",
  ),
  SurahDataModel(
    suraNameAr: "العاديات",
    suraNameEg: "Al-Adiyat",
    ayaNumber: "11",
  ),
  SurahDataModel(
    suraNameAr: "القارعة",
    suraNameEg: "Al-Qari'a",
    ayaNumber: "11",
  ),
  SurahDataModel(
    suraNameAr: "التكاثر",
    suraNameEg: "At-Takathur",
    ayaNumber: "8",
  ),
  SurahDataModel(
    suraNameAr: "الپرافت",
    suraNameEg: "Al-Kawthar",
    ayaNumber: "3",
  ),
  SurahDataModel(suraNameAr: "الفيل", suraNameEg: "Al-Fil", ayaNumber: "5"),
  SurahDataModel(suraNameAr: "قريش", suraNameEg: "Quraish", ayaNumber: "4"),
  SurahDataModel(suraNameAr: "الماعون", suraNameEg: "Al-Ma'un", ayaNumber: "7"),
  SurahDataModel(
    suraNameAr: "الكوثر",
    suraNameEg: "Al-Kawthar",
    ayaNumber: "3",
  ),
  SurahDataModel(suraNameAr: "الناس", suraNameEg: "An-Nas", ayaNumber: "6"),
];
