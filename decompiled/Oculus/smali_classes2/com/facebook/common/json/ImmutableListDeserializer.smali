.class public Lcom/facebook/common/json/ImmutableListDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "ImmutableListDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Lcom/google/common/collect/ImmutableList",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mContainedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mValueType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mContainedClass:Ljava/lang/Class;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 29
    iput-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mContainedClass:Ljava/lang/Class;

    .line 22
    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 23
    iput-object p1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mContainedClass:Ljava/lang/Class;

    .line 34
    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 35
    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 36
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/json/FbObjectMapper;

    .line 43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Failed to deserialize to a list - missing start_array token"

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mContainedClass:Ljava/lang/Class;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mContainedClass:Ljava/lang/Class;

    :goto_1
    check-cast v1, Ljava/lang/reflect/Type;

    .line 55
    invoke-virtual {v0, p2, v1}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 58
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 59
    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/facebook/common/json/FbJsonChecker;->nextTokenOrThrow(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_6

    .line 60
    iget-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/facebook/common/json/ImmutableListDeserializer;->mValueType:Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/json/ImmutableListDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
