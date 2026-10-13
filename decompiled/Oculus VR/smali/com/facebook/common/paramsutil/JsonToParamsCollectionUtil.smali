.class public Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;
.super Ljava/lang/Object;
.source "JsonToParamsCollectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFromJson(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->elements()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 66
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Ljava/lang/Number;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->acquireMapThenAdd()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;->copyFromJson(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->acquireArrayThenAdd()Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;->copyFromJson(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    goto :goto_0

    .line 79
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported JSON type for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6
    return-void
.end method

.method public static copyFromJson(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 42
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;->copyFromJson(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 53
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p1, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireArrayThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;->copyFromJson(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    goto :goto_0

    .line 55
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported JSON type for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_6
    return-void
.end method
