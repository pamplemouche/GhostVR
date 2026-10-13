.class public Lcom/facebook/secure/intentparser/IntentParser;
.super Ljava/lang/Object;
.source "IntentParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/intentparser/IntentParser$Api16IUtils;,
        Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;,
        Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNonHttpHttpsScheme(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    if-eqz p0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parseExtras(Landroid/os/Bundle;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lorg/json/JSONArray;
    .locals 14
    .param p1    # Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 392
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 394
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$000(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v9, v6

    .line 395
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$100(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v6

    .line 396
    :goto_1
    if-eqz p1, :cond_3

    .line 397
    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 399
    :goto_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 402
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 403
    if-nez v13, :cond_4

    const-string v1, ""

    move-object v5, v1

    .line 405
    :goto_4
    const-string v1, "name"

    invoke-virtual {v12, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string/jumbo v1, "value_type"

    invoke-virtual {v12, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    if-eqz v9, :cond_6

    .line 410
    const-string/jumbo v1, "value"

    if-nez v13, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v12, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    :cond_0
    :goto_6
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_1
    move v9, v4

    .line 394
    goto :goto_0

    :cond_2
    move v8, v4

    .line 395
    goto :goto_1

    :cond_3
    move v3, v4

    .line 397
    goto :goto_2

    .line 404
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_4

    .line 410
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 411
    :cond_6
    if-eqz v8, :cond_0

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-lez v3, :cond_0

    move v7, v4

    .line 412
    :goto_7
    if-ge v7, v3, :cond_0

    .line 413
    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 416
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_8

    .line 412
    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_7

    .line 421
    :cond_8
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 426
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 427
    if-nez v13, :cond_9

    const-string v2, ""

    .line 428
    :goto_8
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 435
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 436
    if-lez v2, :cond_b

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v6

    .line 438
    :goto_9
    if-ge v0, v2, :cond_a

    .line 439
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 428
    :cond_9
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 442
    :cond_a
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string/jumbo v0, "value"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 445
    :cond_b
    const-string/jumbo v0, "value"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 455
    :cond_c
    return-object v10
.end method

.method public static parseIntent(Landroid/content/Intent;)Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {p0, v0, v0}, Lcom/facebook/secure/intentparser/IntentParser;->parseIntent(Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;

    move-result-object v0

    return-object v0
.end method

.method public static parseIntent(Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
    .locals 6
    .param p0    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    .line 176
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const-string v0, "action"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v0, "package"

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v0, p1}, Lcom/facebook/secure/intentparser/IntentParser;->parseUriComponent(Landroid/net/Uri;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_1

    .line 189
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    .line 194
    invoke-static {p0}, Lcom/facebook/secure/intentparser/IntentParser$Api16IUtils;->getClipData(Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v3

    .line 195
    if-eqz v3, :cond_4

    .line 196
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 197
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 198
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 199
    if-eqz v5, :cond_2

    .line 200
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 201
    if-eqz v5, :cond_2

    .line 202
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v5, p1}, Lcom/facebook/secure/intentparser/IntentParser;->parseUriComponent(Landroid/net/Uri;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_3
    const-string v0, "clip_data"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 218
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 219
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 222
    :cond_5
    const-string v0, "categories"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_6
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    const-string v3, "component_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_7
    invoke-virtual {p0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    const-string/jumbo v3, "source_bounds"

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 238
    const-string v3, "extra_names"

    invoke-static {v0, p2}, Lcom/facebook/secure/intentparser/IntentParser;->parseExtras(Landroid/os/Bundle;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_a

    .line 246
    invoke-static {v0, p1, p2}, Lcom/facebook/secure/intentparser/IntentParser;->parseIntent(Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_a

    .line 248
    iget-object v0, v0, Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;->mIntentContent:Lorg/json/JSONObject;

    .line 249
    if-eqz v0, :cond_a

    .line 250
    const-string/jumbo v3, "selector"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :cond_a
    new-instance v0, Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static parseUriComponent(Landroid/net/Uri;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Lorg/json/JSONObject;
    .locals 6
    .param p1    # Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->isParsePathForNonFbUri()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 289
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->preserveEncoding()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 293
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 294
    const-string/jumbo v1, "scheme"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v5, "authority"

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-static {v4}, Lcom/facebook/secure/intentparser/IntentParser;->isNonHttpHttpsScheme(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    const-string v1, "path"

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/secure/intentparser/IntentParser;->parseUriQueryParameters(Landroid/net/Uri;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2

    .line 303
    const-string/jumbo v1, "query"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_2
    return-object v3

    :cond_3
    move v2, v1

    .line 288
    goto :goto_0

    :cond_4
    move v0, v1

    .line 289
    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 297
    :cond_6
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static parseUriQueryParameters(Landroid/net/Uri;Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/lang/String;
    .locals 9
    .param p1    # Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 312
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 318
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$000(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 319
    goto :goto_0

    .line 324
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$100(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    move v3, v4

    .line 337
    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 339
    const/16 v1, 0x26

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz v3, :cond_3

    move v6, v5

    .line 349
    :goto_4
    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 350
    invoke-static {p1}, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 353
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_7

    .line 349
    :cond_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    .line 325
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 327
    goto :goto_1

    :cond_6
    move v3, v5

    .line 334
    goto :goto_2

    .line 358
    :cond_7
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_5

    .line 362
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 369
    const/16 v0, 0x3d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 371
    if-lez v2, :cond_9

    move v0, v4

    .line 372
    :goto_5
    if-ge v0, v2, :cond_8

    .line 373
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/16 v6, 0x3b

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 376
    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 378
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 386
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
