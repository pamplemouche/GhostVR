.class public Lcom/facebook/common/util/SpannableStringFormatter;
.super Ljava/lang/Object;
.source "SpannableStringFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs formatSpannedString(Landroid/content/res/Resources;I[Lcom/facebook/common/util/SpannableStringSubstitution;)Landroid/text/SpannableString;
    .locals 13
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "formatResId"    # I
    .param p2, "substitutions"    # [Lcom/facebook/common/util/SpannableStringSubstitution;

    .prologue
    .line 24
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v6, "placeholders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/common/util/SpannableStringSubstitution;>;"
    array-length v8, p2

    new-array v2, v8, [Ljava/lang/Object;

    .line 26
    .local v2, "firstReplacements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p2

    if-ge v4, v8, :cond_1

    .line 27
    aget-object v7, p2, v4

    .line 28
    .local v7, "substitution":Lcom/facebook/common/util/SpannableStringSubstitution;
    iget-object v8, v7, Lcom/facebook/common/util/SpannableStringSubstitution;->span:Ljava/lang/Object;

    if-nez v8, :cond_0

    .line 30
    invoke-static {p0, v7}, Lcom/facebook/common/util/SpannableStringFormatter;->getSubstitutionText(Landroid/content/res/Resources;Lcom/facebook/common/util/SpannableStringSubstitution;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v2, v4

    .line 26
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v4}, Lcom/facebook/common/util/SpannableStringFormatter;->getNumberedPlaceholder(I)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "placeholder":Ljava/lang/String;
    aput-object v5, v2, v4

    .line 34
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 37
    .end local v5    # "placeholder":Ljava/lang/String;
    .end local v7    # "substitution":Lcom/facebook/common/util/SpannableStringSubstitution;
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "formatWithPlaceholders":Ljava/lang/String;
    new-instance v0, Lcom/facebook/common/util/StyledStringBuilder;

    invoke-direct {v0, p0}, Lcom/facebook/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 40
    .local v0, "builder":Lcom/facebook/common/util/StyledStringBuilder;
    invoke-virtual {v0, v3}, Lcom/facebook/common/util/StyledStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/facebook/common/util/StyledStringBuilder;

    .line 41
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/common/util/SpannableStringSubstitution;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/common/util/SpannableStringSubstitution;

    .line 44
    .restart local v7    # "substitution":Lcom/facebook/common/util/SpannableStringSubstitution;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 45
    invoke-static {p0, v7}, Lcom/facebook/common/util/SpannableStringFormatter;->getSubstitutionText(Landroid/content/res/Resources;Lcom/facebook/common/util/SpannableStringSubstitution;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/facebook/common/util/SpannableStringSubstitution;->span:Ljava/lang/Object;

    iget v12, v7, Lcom/facebook/common/util/SpannableStringSubstitution;->spanFlags:I

    .line 43
    invoke-virtual {v0, v8, v10, v11, v12}, Lcom/facebook/common/util/StyledStringBuilder;->replaceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/common/util/StyledStringBuilder;

    goto :goto_2

    .line 49
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/common/util/SpannableStringSubstitution;>;"
    .end local v7    # "substitution":Lcom/facebook/common/util/SpannableStringSubstitution;
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/common/util/StyledStringBuilder;->toSpannableString()Landroid/text/SpannableString;

    move-result-object v8

    return-object v8
.end method

.method private static getNumberedPlaceholder(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[placeholder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubstitutionText(Landroid/content/res/Resources;Lcom/facebook/common/util/SpannableStringSubstitution;)Ljava/lang/Object;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "substitution"    # Lcom/facebook/common/util/SpannableStringSubstitution;

    .prologue
    .line 58
    iget-object v0, p1, Lcom/facebook/common/util/SpannableStringSubstitution;->substitutionText:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p1, Lcom/facebook/common/util/SpannableStringSubstitution;->substitutionText:Ljava/lang/Object;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/facebook/common/util/SpannableStringSubstitution;->substitutionTextResId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
