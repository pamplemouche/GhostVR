.class public Lcom/oculus/localmedia/MediaQueryUtils;
.super Ljava/lang/Object;
.source "MediaQueryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 47
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    :cond_1
    return-object p0
.end method

.method public static parseMediaType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;
    .locals 5

    .prologue
    .line 20
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->values()[Lcom/oculus/localmedia/MediaType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    :goto_1
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    goto :goto_1
.end method

.method public static parseMediaTypes(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-lez v0, :cond_1

    :goto_1
    return v0

    :cond_1
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->all()I

    move-result v0

    goto :goto_1
.end method

.method public static parseSortType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSort;
    .locals 1

    .prologue
    .line 29
    const-string v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    .line 38
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->SIZE:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 35
    :cond_2
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->DURATION:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 38
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0
.end method
