.class public Lnubia/util/NumberAttribution;
.super Ljava/lang/Object;
.source "NumberAttribution.java"


# static fields
.field private static final CITY:Ljava/lang/String; = "City"

.field private static final CITYID:Ljava/lang/String; = "CityID"

.field private static final CITY_ID_INDEX:I = 0x0

.field private static final CORP:Ljava/lang/String; = "Corp"

.field private static final CORPID:Ljava/lang/String; = "CorpID"

.field private static final CORP_ID_INDEX:I = 0x1

.field private static final CitiesTable:Ljava/lang/String; = "Cities"

.field private static final CorpTable:Ljava/lang/String; = "Corps"

.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/mobilenuminmainland.db"

.field private static final LOG_TAG:Ljava/lang/String; = "NumberAttribution"

.field private static final Mobile:Ljava/lang/String; = "Mobile"

.field private static final NumbersTable:Ljava/lang/String; = "Numbers"

.field private static final PROVINCE:Ljava/lang/String; = "Province"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lnubia/util/NumberAttribution;

.field private static sCitiesWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCorpWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 55
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->openDatabase(Landroid/content/Context;)V

    .line 56
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->initCitiesWordBook()V

    .line 58
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->initCorpWordBook()V

    .line 60
    :cond_0
    return-void
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 242
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private formatNumberArribution(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "numberArribution"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 207
    move-object v0, p1

    .line 208
    .local v0, "formatedNumberArribution":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 209
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "provinceAndCity":[Ljava/lang/String;
    aget-object v2, v1, v4

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v1    # "provinceAndCity":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 194
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 196
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 200
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    if-nez v1, :cond_1

    .line 201
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_1
    return-object v1
.end method

.method private getDBNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "realNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v0, 0x0

    .line 286
    .local v0, "nationalnumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 289
    .local v2, "tempnumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    const-string v5, "CN"

    invoke-virtual {v4, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 293
    :goto_0
    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_1
    return-object v3

    .line 295
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 305
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 304
    goto :goto_2

    .line 291
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 187
    :goto_0
    return-object v2

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 170
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 172
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 173
    .local v4, "locale":Ljava/util/Locale;
    const-string v0, "CN"

    .line 177
    .local v0, "countryIso":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 179
    invoke-static {p0, v4}, Lnubia/util/NumberAttribution;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 182
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v3, v5, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "geoInfo":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v2    # "geoInfo":Ljava/lang/String;
    .end local v5    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 185
    const/4 v2, 0x0

    .restart local v2    # "geoInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnubia/util/NumberAttribution;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v1, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lnubia/util/NumberAttribution;

    invoke-direct {v0, p0}, Lnubia/util/NumberAttribution;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initCitiesWordBook()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 81
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 82
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Cities"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 83
    const/4 v8, 0x0

    .line 84
    .local v8, "city":Ljava/lang/String;
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "CityID"

    aput-object v4, v2, v5

    const-string v4, "Province"

    aput-object v4, v2, v6

    const-string v4, "City"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 86
    .local v9, "cityCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 87
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget-object v1, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_1
    if-eqz v9, :cond_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v1

    :cond_1
    if-eqz v9, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    :cond_2
    :goto_3
    return-void

    .line 91
    :catch_1
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private initCorpWordBook()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 95
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 96
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Corps"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 97
    const/4 v8, 0x0

    .line 98
    .local v8, "corp":Ljava/lang/String;
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "CorpID"

    aput-object v4, v2, v5

    const-string v4, "Corp"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    .local v9, "corpCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 101
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_1
    if-eqz v9, :cond_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v1

    :cond_1
    if-eqz v9, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    :cond_2
    :goto_3
    return-void

    .line 106
    :catch_1
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/mobilenuminmainland.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "/system/etc/mobilenuminmainland.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NumberAttribution"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V

    goto :goto_0
.end method

.method private queryId(Ljava/lang/String;)[I
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 265
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 266
    .local v0, "arryID":[I
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v3, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT CityID, CorpID FROM Numbers WHERE Mobile = ?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 271
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v0, v3

    .line 273
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 269
    :catch_1
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v3

    :catch_2
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public canQuery()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    return v0
.end method

.method public queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v3, ""

    .line 143
    .local v3, "numberArribution":Ljava/lang/String;
    iget-object v6, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    move-object v4, v3

    .line 162
    .end local v3    # "numberArribution":Ljava/lang/String;
    .local v4, "numberArribution":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 146
    .end local v4    # "numberArribution":Ljava/lang/String;
    .restart local v3    # "numberArribution":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lnubia/util/NumberAttribution;->getDBNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "tmpnumber":Ljava/lang/String;
    invoke-direct {p0, v5}, Lnubia/util/NumberAttribution;->queryId(Ljava/lang/String;)[I

    move-result-object v0

    .line 148
    .local v0, "arryID":[I
    if-eqz v0, :cond_2

    .line 149
    const/4 v6, 0x0

    aget v1, v0, v6

    .line 150
    .local v1, "cityID":I
    const/4 v6, 0x1

    aget v2, v0, v6

    .line 151
    .local v2, "corpID":I
    if-lez v1, :cond_1

    .line 152
    sget-object v6, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lnubia/util/NumberAttribution;->formatNumberArribution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_1
    if-lez v2, :cond_2

    const/4 v6, 0x4

    if-ge v2, v6, :cond_2

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, Lnubia/util/NumberAttribution;->sCorpWordBook:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .end local v1    # "cityID":I
    .end local v2    # "corpID":I
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    invoke-static {p1, p2}, Lnubia/util/NumberAttribution;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v4, v3

    .line 162
    .end local v3    # "numberArribution":Ljava/lang/String;
    .restart local v4    # "numberArribution":Ljava/lang/String;
    goto :goto_0
.end method

.method public queryAttributionByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnubia/util/NumberAttribution;->queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
