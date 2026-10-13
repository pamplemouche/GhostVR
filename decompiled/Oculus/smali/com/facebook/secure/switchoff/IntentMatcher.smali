.class public Lcom/facebook/secure/switchoff/IntentMatcher;
.super Ljava/lang/Object;
.source "IntentMatcher.java"


# instance fields
.field private final mCallerInfoMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEndpointClassNamePattern:Ljava/util/regex/Pattern;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIntentFieldMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUriMatcher:Lcom/facebook/secure/switchoff/UriMatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/switchoff/IntentFieldMatcher;Lcom/facebook/secure/switchoff/UriMatcher;Lcom/facebook/secure/switchoff/IntentFieldMatcher;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/secure/switchoff/IntentFieldMatcher;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/secure/switchoff/UriMatcher;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/secure/switchoff/IntentFieldMatcher;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    iput-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mEndpointClassNamePattern:Ljava/util/regex/Pattern;

    .line 45
    iput-object p4, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mIntentFieldMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    .line 46
    iput-object p2, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mCallerInfoMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    .line 47
    iput-object p3, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mUriMatcher:Lcom/facebook/secure/switchoff/UriMatcher;

    .line 48
    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0
.end method

.method public static matches(Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;[Lcom/facebook/secure/switchoff/IntentMatcher;)Z
    .locals 4
    .param p2    # Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Lcom/facebook/secure/switchoff/IntentMatcher;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p3, :cond_0

    array-length v1, p3

    if-gtz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    array-length v2, p3

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p3, v1

    .line 103
    invoke-virtual {v3, p0, p1, p2}, Lcom/facebook/secure/switchoff/IntentMatcher;->matches(Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private matchesEndpointName(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mEndpointClassNamePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mEndpointClassNamePattern:Ljava/util/regex/Pattern;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

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

.method private matchesIntentField(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mIntentFieldMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mIntentFieldMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    invoke-virtual {v0, p1}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->match(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0
.end method

.method private matchesUriComponent(Ljava/util/List;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mUriMatcher:Lcom/facebook/secure/switchoff/UriMatcher;

    if-nez v0, :cond_0

    move v0, v1

    .line 182
    :goto_0
    return v0

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 178
    iget-object v4, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mUriMatcher:Lcom/facebook/secure/switchoff/UriMatcher;

    invoke-virtual {v4, v0}, Lcom/facebook/secure/switchoff/UriMatcher;->match(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 179
    goto :goto_0

    :cond_4
    move v0, v2

    .line 182
    goto :goto_0
.end method

.method public static parseConfig(Ljava/lang/String;)[Lcom/facebook/secure/switchoff/IntentMatcher;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 58
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 59
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 60
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/secure/switchoff/IntentMatcher;

    move v5, v6

    .line 61
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 62
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 63
    new-instance v9, Lcom/facebook/secure/switchoff/IntentMatcher;

    const-string v1, "endpoint_name"

    .line 65
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "caller_info"

    .line 66
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "caller_info"

    .line 67
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->parse(Lorg/json/JSONObject;)Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    move-result-object v1

    move-object v4, v1

    :goto_1
    const-string/jumbo v1, "uri_component"

    .line 69
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uri_component"

    .line 70
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/secure/switchoff/UriMatcher;->parse(Lorg/json/JSONObject;)Lcom/facebook/secure/switchoff/UriMatcher;

    move-result-object v1

    move-object v3, v1

    :goto_2
    const-string v1, "intent_field"

    .line 72
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent_field"

    .line 73
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->parse(Lorg/json/JSONObject;)Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    move-result-object v1

    :goto_3
    invoke-direct {v9, v10, v4, v3, v1}, Lcom/facebook/secure/switchoff/IntentMatcher;-><init>(Ljava/lang/String;Lcom/facebook/secure/switchoff/IntentFieldMatcher;Lcom/facebook/secure/switchoff/UriMatcher;Lcom/facebook/secure/switchoff/IntentFieldMatcher;)V

    aput-object v9, v0, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 67
    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 70
    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 73
    goto :goto_3

    .line 79
    :catch_0
    move-exception v0

    .line 82
    :cond_3
    new-array v0, v6, [Lcom/facebook/secure/switchoff/IntentMatcher;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z
    .locals 4
    .param p3    # Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/facebook/secure/switchoff/IntentMatcher;->matchesEndpointName(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mCallerInfoMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    if-eqz v3, :cond_2

    .line 129
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/facebook/secure/switchoff/IntentMatcher;->mCallerInfoMatcher:Lcom/facebook/secure/switchoff/IntentFieldMatcher;

    invoke-virtual {v2}, Lcom/facebook/secure/trustedapp/AppIdentity;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/facebook/secure/switchoff/IntentFieldMatcher;->match(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    :cond_2
    if-nez p3, :cond_3

    .line 137
    invoke-static {p2}, Lcom/facebook/secure/intentparser/IntentParser;->parseIntent(Landroid/content/Intent;)Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;

    move-result-object p3

    .line 140
    :cond_3
    if-nez p3, :cond_4

    move-object v2, v1

    :goto_1
    invoke-direct {p0, v2}, Lcom/facebook/secure/switchoff/IntentMatcher;->matchesUriComponent(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    if-nez p3, :cond_5

    :goto_2
    invoke-direct {p0, v1}, Lcom/facebook/secure/switchoff/IntentMatcher;->matchesIntentField(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p3, Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;->mUris:Ljava/util/List;

    goto :goto_1

    .line 145
    :cond_5
    iget-object v1, p3, Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;->mIntentContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method
