.class public Lcom/facebook/common/json/TypeModelBase64Deserializer;
.super Lcom/facebook/common/json/FbJsonDeserializer;
.source "TypeModelBase64Deserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/common/json/FbJsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    move-object v0, v1

    .line 56
    :goto_0
    return-object v0

    .line 31
    :cond_0
    sget-object v2, Lcom/facebook/common/json/AutoGenJsonHelper;->FLATBUFFER_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    sget-object v2, Lcom/facebook/common/json/AutoGenJsonHelper;->FLATBUFFER_PREFIX:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/facebook/common/json/TreeEncodingUtils;->getTypeTag(Ljava/lang/String;)I

    move-result v2

    .line 35
    invoke-static {v0}, Lcom/facebook/common/json/TreeEncodingUtils;->stripTypeTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v0, p0, Lcom/facebook/common/json/TypeModelBase64Deserializer;->mClass:Ljava/lang/Class;

    .line 38
    invoke-static {v0, v2}, Lcom/facebook/flatbuffers/ModelConstructorHelper;->newTypeModelInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/flatbuffers/Flattenable;

    .line 40
    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 41
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->resolveRootFlattenable(Ljava/nio/ByteBuffer;Lcom/facebook/flatbuffers/Flattenable;Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)Lcom/facebook/flatbuffers/Flattenable;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    sget-object v2, Lcom/facebook/common/json/AutoGenJsonHelper;->TREE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 44
    sget-object v2, Lcom/facebook/common/json/AutoGenJsonHelper;->TREE_PREFIX:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/facebook/common/json/TreeEncodingUtils;->getTypeTag(Ljava/lang/String;)I

    move-result v2

    .line 47
    invoke-static {v0}, Lcom/facebook/common/json/TreeEncodingUtils;->stripTypeTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/facebook/graphservice/staticcontext/StaticGraphServiceFactory;->getTreeSerializer()Lcom/facebook/graphservice/interfaces/TreeSerializer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/json/TypeModelBase64Deserializer;->mClass:Ljava/lang/Class;

    .line 51
    invoke-interface {v3, v0, v4, v2}, Lcom/facebook/graphservice/interfaces/TreeSerializer;->deserializeTreeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Lcom/facebook/graphservice/interfaces/Tree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-class v2, Ljava/io/IOException;

    invoke-static {v0, v2}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 55
    iget-object v2, p0, Lcom/facebook/common/json/TypeModelBase64Deserializer;->mClass:Ljava/lang/Class;

    invoke-static {v2, p1, v0}, Lcom/facebook/common/json/AutoGenJsonHelper;->throwDeserializationFailure(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 56
    goto :goto_0
.end method
