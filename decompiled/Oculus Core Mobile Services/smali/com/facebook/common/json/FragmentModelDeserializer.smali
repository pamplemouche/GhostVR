.class public Lcom/facebook/common/json/FragmentModelDeserializer;
.super Lcom/facebook/common/json/FbJsonDeserializer;
.source "FragmentModelDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/common/json/FbJsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/json/FragmentModelDeserializer;->callDefaultConstructor()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/json/JsonDeserializableFragmentModel;

    .line 22
    new-instance v1, Lcom/facebook/flatbuffers/FlatBufferBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lcom/facebook/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 25
    invoke-interface {v0, p1, v1}, Lcom/facebook/common/json/JsonDeserializableFragmentModel;->flattenFromJson(Lcom/fasterxml/jackson/core/JsonParser;Lcom/facebook/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 30
    invoke-virtual {v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    new-instance v2, Lcom/facebook/flatbuffers/MutableFlatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/facebook/flatbuffers/MutableFlatBuffer;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)V

    .line 34
    const/4 v1, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->addTag(ILjava/lang/Object;)V

    .line 35
    const-string v1, "FragmentModelDeserializer.deserialize"

    invoke-virtual {v2, v1}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->markDebugSource(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->getBaseBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/flatbuffers/FlatBuffer;->getRootObjectPosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 38
    invoke-interface {v0, v2, v1, p1}, Lcom/facebook/common/json/JsonDeserializableFragmentModel;->initFromMutableFlatBufferWithFieldTracking(Lcom/facebook/flatbuffers/MutableFlatBuffer;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 43
    iget-object v1, p0, Lcom/facebook/common/json/FragmentModelDeserializer;->mClass:Ljava/lang/Class;

    invoke-static {v1, p1, v0}, Lcom/facebook/common/json/AutoGenJsonHelper;->throwDeserializationFailure(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;)V

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not reached"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
