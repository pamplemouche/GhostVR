.class abstract Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;
.super Lcom/fasterxml/jackson/datatype/guava/deser/GuavaMapDeserializer;
.source "GuavaImmutableMapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lcom/fasterxml/jackson/datatype/guava/deser/GuavaMapDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p2, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p3, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;, "Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer<TT;>;"
    .local p4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected _deserializeEntries(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/google/common/collect/ImmutableMap;
    .locals 11
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;, "Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer<TT;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 29
    .local v3, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    iget-object v8, p0, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 30
    .local v8, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;->_typeDeserializerForValue:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 32
    .local v6, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;->createBuilder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 33
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "fieldName":Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v2, v1

    .line 38
    .local v2, "key":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 41
    .local v5, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v9, :cond_1

    .line 42
    const/4 v7, 0x0

    .line 48
    :goto_2
    invoke-virtual {v0, v2, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 36
    .end local v2    # "key":Ljava/lang/Object;
    .end local v5    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_0
    invoke-virtual {v3, v1, p2}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 43
    .restart local v2    # "key":Ljava/lang/Object;
    .restart local v5    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    if-nez v6, :cond_2

    .line 44
    invoke-virtual {v8, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_2

    .line 46
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v8, p1, p2, v6}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 53
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v5    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 54
    .local v4, "map":Lcom/google/common/collect/ImmutableMap;, "TT;"
    return-object v4
.end method

.method protected bridge synthetic _deserializeEntries(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;, "Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableMapDeserializer;->_deserializeEntries(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createBuilder()Lcom/google/common/collect/ImmutableMap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
