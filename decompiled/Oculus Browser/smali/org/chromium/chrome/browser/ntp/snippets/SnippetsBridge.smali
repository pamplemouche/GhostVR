.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static addSuggestion(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJZIZ)Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    .line 2
    new-instance v15, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;

    if-nez p12, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    move-object/from16 v16, v2

    const-string v6, ""

    move-object v2, v15

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v17, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move/from16 v16, p13

    invoke-direct/range {v2 .. v16}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJZLjava/lang/Integer;Z)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v17

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;

    return-object v0
.end method

.method public static createSuggestionList()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static createSuggestionsCategoryInfo(ILjava/lang/String;IIZLjava/lang/String;)Lorg/chromium/chrome/browser/ntp/cards/SuggestionsCategoryInfo;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/ntp/cards/SuggestionsCategoryInfo;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ntp/cards/SuggestionsCategoryInfo;-><init>(ILjava/lang/String;IIZLjava/lang/String;)V

    return-object v7
.end method

.method private onCategoryStatusChanged(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method private onFullRefreshRequired()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method private onNewSuggestions(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method private onSuggestionInvalidated(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method private onSuggestionsVisibilityChanged(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method
