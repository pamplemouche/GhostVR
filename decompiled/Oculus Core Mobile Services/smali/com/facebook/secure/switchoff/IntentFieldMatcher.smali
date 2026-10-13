.class public Lcom/facebook/secure/switchoff/IntentFieldMatcher;
.super Ljava/lang/Object;
.source "IntentFieldMatcher.java"


# instance fields
.field private final mIntentFieldPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->mIntentFieldPattern:Ljava/util/Map;

    .line 35
    return-void
.end method

.method private static matchCategories(Lorg/json/JSONArray;Ljava/util/Map$Entry;)Z
    .locals 4
    .param p0    # Lorg/json/JSONArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    move v1, v2

    .line 128
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private matchExtras(Lorg/json/JSONArray;Ljava/util/Map$Entry;)Z
    .locals 7
    .param p1    # Lorg/json/JSONArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 143
    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 144
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->mIntentFieldPattern:Ljava/util/Map;

    const-string v4, "extra_value_types"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v1, p0, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->mIntentFieldPattern:Ljava/util/Map;

    const-string v2, "extra_value_types"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    :cond_2
    move v2, v3

    .line 151
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 153
    const-string v4, "name"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "name"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    :goto_2
    const-string v6, "value_type"

    .line 155
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "value_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 159
    if-nez v1, :cond_5

    const-string v4, ""

    .line 161
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 164
    :goto_4
    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    .line 165
    const/4 v3, 0x1

    goto :goto_0

    .line 153
    :cond_3
    const-string v4, ""

    goto :goto_2

    .line 155
    :cond_4
    const-string v5, ""

    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    goto :goto_4

    .line 151
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/facebook/secure/switchoff/IntentFieldMatcher;
    .locals 5
    .param p0    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p0, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 102
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_1

    .line 106
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    .line 115
    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    new-instance v0, Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    invoke-direct {v0, v2}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 117
    goto :goto_0
.end method


# virtual methods
.method public match(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->mIntentFieldPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    const-string v5, "categories"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->matchCategories(Lorg/json/JSONArray;Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 82
    :goto_1
    return v0

    :cond_1
    move-object v1, v3

    .line 52
    goto :goto_0

    .line 56
    :cond_2
    const-string v5, "extra_names"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 60
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 61
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->matchExtras(Lorg/json/JSONArray;Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 62
    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 60
    goto :goto_2

    .line 64
    :cond_4
    const-string v5, "extra_value_types"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v0, v2

    .line 74
    goto :goto_1

    .line 72
    :cond_6
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    move v0, v2

    .line 79
    goto :goto_1

    .line 82
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method
