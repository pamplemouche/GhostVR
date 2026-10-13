.class public Lcom/facebook/common/json/LinkedHashMapDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "LinkedHashMapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mKeyDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TK;>;"
        }
    .end annotation
.end field

.field private mKeyDeserializerResolved:Z

.field private final mKeyType:Ljava/lang/Class;

.field private mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mValueType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializerResolved:Z

    .line 26
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyType:Ljava/lang/Class;

    .line 27
    iget-object v2, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyType:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    const-class v2, Ljava/lang/Enum;

    iget-object v3, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyType:Ljava/lang/Class;

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    const-string v2, "Map keys must be a String or an enum."

    .line 27
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/json/LinkedHashMapDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/json/FbObjectMapper;

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v2

    .line 87
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_2

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Failed to deserialize to a map - missing start_object token"

    .line 46
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 49
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializerResolved:Z

    if-nez v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyType:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_3

    .line 51
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyType:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 53
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializerResolved:Z

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p2, v1}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 58
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/facebook/common/json/FbJsonChecker;->nextTokenOrThrow(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_9

    .line 59
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_5

    .line 63
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v4, :cond_7

    .line 69
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 77
    :cond_6
    iget-object v4, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v4, :cond_8

    .line 78
    invoke-virtual {v0}, Lcom/facebook/common/json/FbObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    iget-object v4, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mKeyDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v4, v3, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/facebook/common/json/LinkedHashMapDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    if-nez v1, :cond_6

    goto :goto_1

    .line 83
    :cond_8
    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    move-object v0, v2

    .line 87
    goto/16 :goto_0
.end method
