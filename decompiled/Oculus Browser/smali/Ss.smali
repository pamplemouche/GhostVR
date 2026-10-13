.class public abstract LSs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LJs;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LJs;

    const-string v1, "MetadataUtils"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LSs;->a:LJs;

    const-string v0, "+hhmm"

    const-string v1, "+hh:mm"

    const-string v2, "Z"

    const-string v3, "+hh"

    .line 2
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LSs;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, LSs;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Input string is empty or null"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 14
    sget-object p0, LSs;->a:LJs;

    new-array v0, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {p0, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-object v2

    .line 17
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, LSs;->a:LJs;

    new-array v6, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, LJs;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    invoke-virtual {v0, v1, v6}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_2
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, LSs;->a:LJs;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 23
    iget-object v0, v1, LJs;->a:Ljava/lang/String;

    const-string v7, "Error extracting the date: %s"

    invoke-virtual {v1, v7, v6}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move-object v0, v2

    .line 24
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    sget-object p0, LSs;->a:LJs;

    new-array v0, v3, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Invalid date format"

    .line 27
    invoke-virtual {p0, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    return-object v2

    .line 28
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v6, 0x6

    if-eqz v1, :cond_6

    .line 29
    sget-object p0, LSs;->a:LJs;

    new-array v1, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, LJs;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "string is empty or null"

    .line 31
    invoke-virtual {p0, v4, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    const/16 v1, 0x54

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    if-eq v1, v4, :cond_7

    .line 33
    sget-object p0, LSs;->a:LJs;

    new-array v1, v3, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, LJs;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "T delimeter is not found"

    .line 35
    invoke-virtual {p0, v4, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    .line 36
    :cond_7
    :try_start_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_8

    goto/16 :goto_5

    .line 38
    :cond_8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_a

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_a

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_9

    goto/16 :goto_4

    .line 39
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    sget-object v4, LSs;->b:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-ne v1, v4, :cond_d

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "+0000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 42
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 43
    sget-object v4, LSs;->b:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-eq v1, v4, :cond_c

    sget-object v4, LSs;->b:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v4, v4, v7

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-eq v1, v4, :cond_c

    sget-object v4, LSs;->b:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-ne v1, v4, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_d

    const-string v1, "([\\+\\-]\\d\\d):(\\d\\d)"

    const-string v4, "$1$2"

    .line 46
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 47
    sget-object v1, LSs;->a:LJs;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    .line 48
    invoke-virtual {v1}, LJs;->a()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "Error extracting the time substring: %s"

    .line 49
    invoke-virtual {v1, p0, v4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_d
    :goto_4
    move-object p0, v2

    .line 50
    :goto_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p0, v1}, LZi;->a(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v6, :cond_e

    const-string p0, "yyyyMMdd\'T\'HHmmss"

    goto :goto_6

    .line 53
    :cond_e
    sget-object p0, LSs;->c:Ljava/lang/String;

    goto :goto_6

    :cond_f
    const-string p0, "yyyyMMdd"

    .line 54
    :goto_6
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 55
    :try_start_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v1

    :catch_2
    move-exception p0

    .line 57
    sget-object v0, LSs;->a:LJs;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    .line 58
    invoke-virtual {v0}, LJs;->a()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "Error parsing string: %s"

    .line 59
    invoke-virtual {v0, p0, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_10
    return-object v2
.end method

.method public static a(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    const-string v0, "images"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    new-instance v3, Lcom/google/android/gms/common/images/WebImage;

    invoke-direct {v3, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/WebImage;

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "url"

    iget-object v4, v1, Lcom/google/android/gms/common/images/WebImage;->x:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "width"

    iget v4, v1, Lcom/google/android/gms/common/images/WebImage;->y:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "height"

    iget v1, v1, Lcom/google/android/gms/common/images/WebImage;->z:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 11
    throw p0

    :cond_1
    :try_start_1
    const-string p1, "images"

    .line 12
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
