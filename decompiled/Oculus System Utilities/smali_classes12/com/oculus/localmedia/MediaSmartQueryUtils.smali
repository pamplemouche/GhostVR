.class public Lcom/oculus/localmedia/MediaSmartQueryUtils;
.super Ljava/lang/Object;
.source "MediaSmartQueryUtils.java"


# static fields
.field private static final DAY_SECS:J = 0x15180L

.field private static final HIERARCHY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/localmedia/MediaSmartQueryType;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaSmartQueryType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MONTH_SECS:J = 0x28de80L

.field private static final WEEK_SECS:J = 0x1fa400L

.field private static final YEAR_SECS:J = 0x1e13380L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryUtils;->HIERARCHY:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V
    .locals 2
    .param p0, "query"    # Lcom/oculus/localmedia/MediaQuery;
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1    # "filter":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    .line 171
    return-void

    .line 170
    .restart local p1    # "filter":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getFoldersForPath(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "queryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaSmartQueryType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->getSmartQueryType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;

    move-result-object v0

    .line 51
    .local v0, "type":Lcom/oculus/localmedia/MediaSmartQueryType;
    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryUtils;->HIERARCHY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryUtils;->HIERARCHY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 54
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSmartQueryType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;
    .locals 4
    .param p0, "queryPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-eqz p0, :cond_0

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/localmedia/MediaSmartQueryType;->valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "Smart query path unsupported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static rewrite(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery;
    .locals 12
    .param p0, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 70
    iget-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-static {v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->getSmartQueryType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;

    move-result-object v6

    .line 71
    .local v6, "type":Lcom/oculus/localmedia/MediaSmartQueryType;
    if-nez v6, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object p0

    .line 75
    :cond_1
    sget-object v7, Lcom/oculus/localmedia/MediaSmartQueryUtils;->HIERARCHY:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 76
    sget-object v7, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v7}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v7

    iput v7, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    .line 82
    :goto_1
    const-wide/16 v4, 0x0

    .line 83
    .local v4, "startDate":J
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "endDate":J
    const/4 v1, 0x0

    .line 85
    .local v1, "startAlpha":Ljava/lang/String;
    const/4 v0, 0x0

    .line 86
    .local v0, "endAlpha":Ljava/lang/String;
    sget-object v7, Lcom/oculus/localmedia/MediaSmartQueryUtils$2;->$SwitchMap$com$oculus$localmedia$MediaSmartQueryType:[I

    invoke-virtual {v6}, Lcom/oculus/localmedia/MediaSmartQueryType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 146
    :goto_2
    :pswitch_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date<="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 148
    sget-object v7, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    iput-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 149
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    .line 151
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 153
    sget-object v7, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    iput-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 154
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    .line 156
    :cond_3
    if-eqz v1, :cond_4

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alpha>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 158
    sget-object v7, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    iput-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 159
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    .line 161
    :cond_4
    if-eqz v0, :cond_0

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alpha<="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 163
    sget-object v7, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    iput-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 164
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    goto/16 :goto_0

    .line 78
    .end local v0    # "endAlpha":Ljava/lang/String;
    .end local v1    # "startAlpha":Ljava/lang/String;
    .end local v2    # "endDate":J
    .end local v4    # "startDate":J
    :cond_5
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->all()I

    move-result v7

    iput v7, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    .line 79
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    goto/16 :goto_1

    .line 93
    .restart local v0    # "endAlpha":Ljava/lang/String;
    .restart local v1    # "startAlpha":Ljava/lang/String;
    .restart local v2    # "endDate":J
    .restart local v4    # "startDate":J
    :pswitch_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x15180

    sub-long v2, v8, v10

    .line 94
    goto/16 :goto_2

    .line 96
    :pswitch_2
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x15180

    sub-long v4, v8, v10

    .line 97
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x1fa400

    sub-long v2, v8, v10

    .line 98
    goto/16 :goto_2

    .line 100
    :pswitch_3
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x1fa400

    sub-long v4, v8, v10

    .line 101
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x28de80

    sub-long v2, v8, v10

    .line 102
    goto/16 :goto_2

    .line 104
    :pswitch_4
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x28de80

    sub-long v4, v8, v10

    .line 105
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x1e13380

    sub-long v2, v8, v10

    .line 106
    goto/16 :goto_2

    .line 108
    :pswitch_5
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x1e13380

    sub-long v4, v8, v10

    .line 109
    goto/16 :goto_2

    .line 111
    :pswitch_6
    const-string v0, "f"

    .line 112
    goto/16 :goto_2

    .line 114
    :pswitch_7
    const-string v1, "g"

    .line 115
    const-string v0, "k"

    .line 116
    goto/16 :goto_2

    .line 118
    :pswitch_8
    const-string v1, "l"

    .line 119
    const-string v0, "p"

    .line 120
    goto/16 :goto_2

    .line 122
    :pswitch_9
    const-string v1, "q"

    .line 123
    const-string v0, "u"

    .line 124
    goto/16 :goto_2

    .line 126
    :pswitch_a
    const-string v1, "v"

    .line 127
    goto/16 :goto_2

    .line 129
    :pswitch_b
    sget-object v7, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v7}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v7

    iput v7, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    goto/16 :goto_2

    .line 132
    :pswitch_c
    sget-object v7, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v7}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v7

    iput v7, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    goto/16 :goto_2

    .line 135
    :pswitch_d
    const-string v7, "projection=SPHERICAL"

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 136
    const-string v7, "fov!=180"

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :pswitch_e
    const-string v7, "fov=180"

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :pswitch_f
    const-string v7, "stereo!=UNKNOWN"

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    .line 143
    const-string v7, "stereo!=2D"

    invoke-static {p0, v7}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->addFilter(Lcom/oculus/localmedia/MediaQuery;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
