.class public Lcom/facebook/common/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/common/util/JSONUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/util/JSONUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 273
    .local v0, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    const-class v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 275
    :cond_0
    const-class v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/facebook/common/util/JSONUtil;->getString(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArray(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const-class v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 231
    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/JSONUtil;->getNodeOrNull(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static getArrayNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    const-class v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/JSONUtil;->getNodeOrEmpty(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object v0
.end method

.method public static getBoolean(Lcom/fasterxml/jackson/databind/JsonNode;)Z
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/JSONUtil;->getBoolean(Lcom/fasterxml/jackson/databind/JsonNode;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Lcom/fasterxml/jackson/databind/JsonNode;Z)Z
    .locals 4
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultVal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_1

    .line 191
    .end local p1    # "defaultVal":Z
    :cond_0
    :goto_0
    return p1

    .line 180
    .restart local p1    # "defaultVal":Z
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move p1, v1

    goto :goto_0

    .line 188
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    move p1, v2

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public static getDouble(Lcom/fasterxml/jackson/databind/JsonNode;)D
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/common/util/JSONUtil;->getDouble(Lcom/fasterxml/jackson/databind/JsonNode;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Lcom/fasterxml/jackson/databind/JsonNode;D)D
    .locals 3
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "defaultVal"    # D

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 144
    .end local p1    # "defaultVal":D
    :cond_0
    :goto_0
    return-wide p1

    .line 132
    .restart local p1    # "defaultVal":D
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public static getFloat(Lcom/fasterxml/jackson/databind/JsonNode;)F
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/JSONUtil;->getFloat(Lcom/fasterxml/jackson/databind/JsonNode;F)F

    move-result v0

    return v0
.end method

.method public static getFloat(Lcom/fasterxml/jackson/databind/JsonNode;F)F
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultVal"    # F

    .prologue
    .line 153
    if-nez p0, :cond_1

    .line 168
    .end local p1    # "defaultVal":F
    :cond_0
    :goto_0
    return p1

    .line 156
    .restart local p1    # "defaultVal":F
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    goto :goto_0
.end method

.method public static getImmutableStringList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .param p0, "jsonNode"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p1}, Lcom/facebook/common/util/JSONUtil;->getArrayNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 213
    .local v0, "arrayNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 214
    .local v1, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 215
    .local v2, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-static {v2}, Lcom/facebook/common/util/JSONUtil;->getString(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 218
    .end local v2    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method public static getInt(Lcom/fasterxml/jackson/databind/JsonNode;)I
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/JSONUtil;->getInt(Lcom/fasterxml/jackson/databind/JsonNode;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Lcom/fasterxml/jackson/databind/JsonNode;I)I
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultVal"    # I

    .prologue
    .line 105
    if-nez p0, :cond_1

    .line 120
    .end local p1    # "defaultVal":I
    :cond_0
    :goto_0
    return p1

    .line 108
    .restart local p1    # "defaultVal":I
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getLong(Lcom/fasterxml/jackson/databind/JsonNode;)J
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/common/util/JSONUtil;->getLong(Lcom/fasterxml/jackson/databind/JsonNode;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lcom/fasterxml/jackson/databind/JsonNode;J)J
    .locals 3
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultVal"    # J

    .prologue
    .line 81
    if-nez p0, :cond_1

    .line 96
    .end local p1    # "defaultVal":J
    :cond_0
    :goto_0
    return-wide p1

    .line 84
    .restart local p1    # "defaultVal":J
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method private static getNodeOrEmpty(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 1
    .param p0, "parent"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2}, Lcom/facebook/common/util/JSONUtil;->getNodeOrNull(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 255
    .local v0, "result":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "TT;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "TT;"
    :cond_0
    invoke-static {p2}, Lcom/facebook/common/util/JSONUtil;->empty(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNodeOrNull(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p0, "parent"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 261
    .local p2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 262
    .local v0, "arrayNodeOrNull":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "Node %s in not an %s in %s"

    .line 266
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v1, v2, p1, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v1

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNodeOrThrow(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "No key %s in %s"

    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public static getObjectNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    const-class v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/JSONUtil;->getNodeOrEmpty(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public static getOrThrow(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0, p1}, Lcom/facebook/common/util/JSONUtil;->getNodeOrThrow(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/JSONUtil;->getString(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultVal"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 72
    .end local p1    # "defaultVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 64
    .restart local p1    # "defaultVal":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getTriState(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/common/util/TriState;
    .locals 4
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 207
    :goto_0
    return-object v1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "value":Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-static {v1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v1

    goto :goto_0

    .line 204
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 205
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    invoke-static {v2}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v1

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1

    .line 207
    :cond_7
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0
.end method

.method public static getUri(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p0, p1}, Lcom/facebook/common/util/JSONUtil;->get(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static hasNonNullKey(Lcom/fasterxml/jackson/databind/JsonNode;)Z
    .locals 1
    .param p0, "jsonObject"    # Lcom/fasterxml/jackson/databind/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iterableToArrayNode(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 412
    .local v0, "arrayNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 413
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 415
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public static iterableToArrayNode(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Function",
            "<TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "toStringConverter":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 428
    .local v0, "arrayNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 431
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method

.method public static objectNodeToStringMap(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .param p0, "objectNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 378
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fieldNames()Ljava/util/Iterator;

    move-result-object v2

    .line 380
    .local v2, "jsonFieldsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 383
    .local v3, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    const-string v5, ""

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v5, Lcom/facebook/common/util/JSONUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to parse json list"

    invoke-static {v5, v6, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 395
    .end local v0    # "ex":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    invoke-static {v4}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method public static stringListToArrayNode(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "inputList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 436
    .local v0, "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 439
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static stringMapAsListToObjectNode(Ljava/util/List;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "inputMapAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 400
    .local v1, "result":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 401
    .local v2, "size":I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 403
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 402
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 406
    .end local v0    # "idx":I
    :cond_0
    return-object v1
.end method

.method public static stringMapToObjectNode(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 363
    .local v1, "result":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-eqz p0, :cond_0

    .line 364
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 368
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public static varargs stringsToArrayNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .param p0, "inputs"    # [Ljava/lang/String;

    .prologue
    .line 443
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 444
    .local v0, "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 445
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 313
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 316
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 317
    check-cast v4, Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 319
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 320
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 321
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 322
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 323
    check-cast v4, Ljava/lang/Double;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 324
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_7

    move-object v1, v4

    .line 325
    check-cast v1, Lorg/json/JSONArray;

    .line 326
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 327
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_6

    .line 329
    invoke-static {v1}, Lcom/facebook/common/util/JSONUtil;->toBundleArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 330
    :cond_6
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 331
    invoke-static {v1}, Lcom/facebook/common/util/JSONUtil;->toStringArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 333
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_7
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 334
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/common/util/JSONUtil;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 337
    .end local v2    # "key":Ljava/lang/String;
    :cond_8
    return-object v0
.end method

.method public static toBundleArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 342
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 343
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/util/JSONUtil;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return-object v0
.end method

.method public static toImmutableStringList(Lorg/json/JSONArray;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p0}, Lcom/facebook/common/util/JSONUtil;->toStringArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/JSONUtil;->toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "reflectionAllowed"    # Z

    .prologue
    .line 460
    if-nez p0, :cond_1

    .line 461
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v2

    .line 507
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 462
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 463
    new-instance v2, Lcom/fasterxml/jackson/databind/node/TextNode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 465
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/BooleanNode;->valueOf(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v2

    goto :goto_0

    .line 466
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, p0, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 467
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/FloatNode;->valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;

    move-result-object v2

    goto :goto_0

    .line 468
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p0, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 469
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/node/DoubleNode;->valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;

    move-result-object v2

    goto :goto_0

    .line 470
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ljava/lang/Short;

    if-eqz v3, :cond_6

    .line 471
    check-cast p0, Ljava/lang/Short;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/ShortNode;->valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;

    move-result-object v2

    goto :goto_0

    .line 472
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 473
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v2

    goto :goto_0

    .line 474
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, p0, Ljava/lang/Long;

    if-eqz v3, :cond_8

    .line 475
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/node/LongNode;->valueOf(J)Lcom/fasterxml/jackson/databind/node/LongNode;

    move-result-object v2

    goto :goto_0

    .line 476
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_9

    .line 477
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/DecimalNode;

    move-result-object v2

    goto :goto_0

    .line 478
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v3, p0, Ljava/math/BigInteger;

    if-eqz v3, :cond_a

    .line 479
    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->valueOf(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/BigIntegerNode;

    move-result-object v2

    goto :goto_0

    .line 482
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_b

    .line 483
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 484
    .local v2, "result":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 485
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/facebook/common/util/JSONUtil;->toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_1

    .line 488
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "result":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_c

    .line 489
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 490
    .local v2, "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "element":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/facebook/common/util/JSONUtil;->toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_2

    .line 494
    .end local v0    # "element":Ljava/lang/Object;
    .end local v2    # "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v3, p0, [Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 495
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 496
    .restart local v2    # "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 497
    .restart local v0    # "element":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/facebook/common/util/JSONUtil;->toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 502
    .end local v0    # "element":Ljava/lang/Object;
    .end local v2    # "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-static {v3, v4}, Lcom/facebook/common/util/ReflectionUtils;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 503
    new-instance v2, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-direct {v2, p0}, Lcom/fasterxml/jackson/databind/node/POJONode;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 506
    :cond_e
    if-eqz p1, :cond_f

    .line 507
    new-instance v3, Lcom/facebook/common/util/ReflectionUtils$FieldMap;

    invoke-direct {v3, p0}, Lcom/facebook/common/util/ReflectionUtils$FieldMap;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/facebook/common/util/JSONUtil;->toJson(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    goto/16 :goto_0

    .line 510
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static toStringArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-object v0
.end method
