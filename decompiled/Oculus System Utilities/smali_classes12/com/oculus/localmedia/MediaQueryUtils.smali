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
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_0
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_1
    return-object p0
.end method

.method public static parseMediaType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;
    .locals 5
    .param p0, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->values()[Lcom/oculus/localmedia/MediaType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    .local v0, "t":Lcom/oculus/localmedia/MediaType;
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    .end local v0    # "t":Lcom/oculus/localmedia/MediaType;
    :goto_1
    return-object v0

    .line 26
    .restart local v0    # "t":Lcom/oculus/localmedia/MediaType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "t":Lcom/oculus/localmedia/MediaType;
    :cond_1
    sget-object v0, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    goto :goto_1
.end method

.method public static parseMediaTypes(Ljava/lang/String;)I
    .locals 6
    .param p0, "mediaTypes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Media type has is mandatory and need to be specified."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    .local v2, "types":I
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v0, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;

    move-result-object v1

    .line 17
    .local v1, "type":Lcom/oculus/localmedia/MediaType;
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v3

    or-int/2addr v2, v3

    .line 18
    goto :goto_0

    .line 19
    .end local v1    # "type":Lcom/oculus/localmedia/MediaType;
    :cond_1
    if-nez v2, :cond_2

    .line 20
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid media type was provided:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_2
    if-lez v2, :cond_3

    .end local v2    # "types":I
    :goto_1
    return v2

    .restart local v2    # "types":I
    :cond_3
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->all()I

    move-result v2

    goto :goto_1
.end method

.method public static parseSortType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSort;
    .locals 1
    .param p0, "sortType"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    .line 59
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->SIZE:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->DURATION:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    goto :goto_0
.end method

.method public static serializeMediaTypes(I)Ljava/lang/String;
    .locals 7
    .param p0, "bitmask"    # I

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 37
    .local v0, "first":Z
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->values()[Lcom/oculus/localmedia/MediaType;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 38
    .local v2, "type":Lcom/oculus/localmedia/MediaType;
    sget-object v6, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    if-eq v2, v6, :cond_1

    invoke-virtual {v2, p0}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "type":Lcom/oculus/localmedia/MediaType;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
