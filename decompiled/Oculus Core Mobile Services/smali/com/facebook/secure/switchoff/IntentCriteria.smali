.class public Lcom/facebook/secure/switchoff/IntentCriteria;
.super Ljava/lang/Object;
.source "IntentCriteria.java"


# instance fields
.field private final mEndpointClassName:Ljava/lang/String;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNegativeIntentFilter:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mResolver:Landroid/content/ContentResolver;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mEndpointClassName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mNegativeIntentFilter:Z

    .line 61
    iput-object v1, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;ZLandroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mResolver:Landroid/content/ContentResolver;

    .line 70
    iput-object p2, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mEndpointClassName:Ljava/lang/String;

    .line 72
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mNegativeIntentFilter:Z

    .line 73
    iput-object p4, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 167
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 168
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 169
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Something went wrong with the parser"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private matchesIntentFilter(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "TAG"

    .line 90
    invoke-virtual {v0, v3, p1, v2, v4}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    .line 91
    if-lez v0, :cond_2

    move v0, v1

    .line 92
    :goto_1
    iget-boolean v3, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mNegativeIntentFilter:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 91
    goto :goto_1

    :cond_3
    move v1, v0

    .line 92
    goto :goto_0
.end method

.method public static parse(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v0, Lcom/facebook/secure/switchoff/IntentCriteria;

    invoke-direct {v0}, Lcom/facebook/secure/switchoff/IntentCriteria;-><init>()V

    .line 156
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 135
    sparse-switch v4, :sswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Criteria specification is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :sswitch_0
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_1
    invoke-static {v0}, Lcom/facebook/secure/switchoff/IntentCriteria;->createIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 156
    new-instance v0, Lcom/facebook/secure/switchoff/IntentCriteria;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/facebook/secure/switchoff/IntentCriteria;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;ZLandroid/content/IntentFilter;)V

    goto :goto_0

    .line 143
    :sswitch_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 144
    if-gez v2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Criteria specification is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 148
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    const/16 v5, 0x21

    if-ne v4, v5, :cond_2

    :goto_2
    move v1, v0

    move-object v0, v2

    move-object v2, v3

    .line 150
    goto :goto_1

    :cond_2
    move v0, v1

    .line 149
    goto :goto_2

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2a -> :sswitch_0
        0x3a -> :sswitch_1
    .end sparse-switch
.end method

.method public static parseIntentCriteria(Ljava/lang/String;Landroid/content/Context;)[Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 3

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/secure/switchoff/IntentCriteria;->parseMultiple(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/facebook/secure/switchoff/IntentCriteria;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :goto_1
    const-string v1, "IntentCriteria"

    const-string v2, "Error parsing switch-off criteria."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/secure/switchoff/IntentCriteria;

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static parseMultiple(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-array v0, v0, [Lcom/facebook/secure/switchoff/IntentCriteria;

    .line 121
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const-string v1, "\\^\\^\\^"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    array-length v1, v2

    new-array v1, v1, [Lcom/facebook/secure/switchoff/IntentCriteria;

    .line 118
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 119
    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lcom/facebook/secure/switchoff/IntentCriteria;->parse(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/facebook/secure/switchoff/IntentCriteria;

    move-result-object v3

    aput-object v3, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public matchesEndpointName(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mEndpointClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentCriteria;->mEndpointClassName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesEndpointNameAndIntentFilter(Ljava/lang/Object;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/facebook/secure/switchoff/IntentCriteria;->matchesEndpointName(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/facebook/secure/switchoff/IntentCriteria;->matchesIntentFilter(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
