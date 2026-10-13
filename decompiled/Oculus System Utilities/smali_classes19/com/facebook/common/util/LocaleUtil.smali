.class public Lcom/facebook/common/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/LocaleUtil;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "localizedToDefaultLocale"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "displayName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "localeCode":Ljava/lang/String;
    const-string v4, "fb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v2, "FB Hash"

    .line 98
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 75
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "localeCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 81
    .restart local v3    # "localeCode":Ljava/lang/String;
    :cond_2
    const-string v4, "qz"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    new-instance v0, Ljava/util/Locale;

    const-string v4, "my"

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "burmeseLocale":Ljava/util/Locale;
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "burmeseLocaleName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\u1019\u103c\u1014\u103a\u1019\u102c"

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    :cond_3
    const-string v2, "\u103b\u1019\u1014\u1039\u1019\u102c"

    .line 93
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Zawgyi)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    goto :goto_1

    .line 91
    :cond_4
    const-string v2, "\u1017\u1019\u102c"

    goto :goto_2

    .line 94
    .end local v0    # "burmeseLocale":Ljava/util/Locale;
    .end local v1    # "burmeseLocaleName":Ljava/lang/String;
    :cond_5
    const-string v4, "mp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const-string v2, "\uabc3\uabc5\uabe4\uabc4\uabe8\uabd4\uabe4"

    goto :goto_1
.end method

.method public static getISO3CountryIfAvailable(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static languageStringToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "languageString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 22
    const/16 v4, 0x5f

    invoke-static {p0, v4}, Lcom/facebook/common/string/StringUtil;->splitString(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    .line 23
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 25
    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/facebook/common/string/StringUtil;->splitString(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    .line 27
    :cond_0
    const-string v4, ""

    invoke-static {v2, v4}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    .local v1, "languageCode":Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v5, v4}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "country":Ljava/lang/String;
    const/4 v4, 0x2

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
