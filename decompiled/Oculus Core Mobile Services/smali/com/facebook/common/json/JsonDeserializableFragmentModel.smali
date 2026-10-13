.class public interface abstract Lcom/facebook/common/json/JsonDeserializableFragmentModel;
.super Ljava/lang/Object;
.source "JsonDeserializableFragmentModel.java"


# virtual methods
.method public abstract flattenFromJson(Lcom/fasterxml/jackson/core/JsonParser;Lcom/facebook/flatbuffers/FlatBufferBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract initFromMutableFlatBufferWithFieldTracking(Lcom/facebook/flatbuffers/MutableFlatBuffer;ILjava/lang/Object;)V
.end method
