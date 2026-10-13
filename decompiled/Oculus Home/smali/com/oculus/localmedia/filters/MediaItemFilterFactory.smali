.class public Lcom/oculus/localmedia/filters/MediaItemFilterFactory;
.super Ljava/lang/Object;
.source "MediaItemFilterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilter;
    .locals 9
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v5

    .line 13
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "!=<>"

    invoke-direct {v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 17
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "operator":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->fromString(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    move-result-object v1

    .line 22
    .local v1, "operand":Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    const-string v6, "projection"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 23
    new-instance v5, Lcom/oculus/localmedia/filters/ProjectionTypeFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/ProjectionTypeFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    const-string v6, "format"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 25
    new-instance v5, Lcom/oculus/localmedia/filters/FormatFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/FormatFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_3
    const-string v6, "size"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    new-instance v5, Lcom/oculus/localmedia/filters/FileSizeFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/FileSizeFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_4
    const-string v6, "width"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 29
    new-instance v5, Lcom/oculus/localmedia/filters/MediaWidthFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/MediaWidthFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_5
    const-string v6, "height"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 31
    new-instance v5, Lcom/oculus/localmedia/filters/MediaHeightFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/MediaHeightFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_6
    const-string v6, "duration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 33
    new-instance v5, Lcom/oculus/localmedia/filters/DurationFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/DurationFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_7
    const-string v6, "date"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 35
    new-instance v5, Lcom/oculus/localmedia/filters/DateFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/DateFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_8
    const-string v6, "alpha"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 37
    new-instance v5, Lcom/oculus/localmedia/filters/AlphaFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/AlphaFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_9
    const-string v6, "stereo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 39
    new-instance v5, Lcom/oculus/localmedia/filters/StereoTypeFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/StereoTypeFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :cond_a
    const-string v6, "visibility"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 41
    new-instance v5, Lcom/oculus/localmedia/filters/VisibilityFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/VisibilityFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :cond_b
    const-string v6, "fov"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    new-instance v5, Lcom/oculus/localmedia/filters/FieldOfViewFilter;

    invoke-direct {v5, v1, v4}, Lcom/oculus/localmedia/filters/FieldOfViewFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
