.class public Lcom/facebook/common/json/FBJsonSelfDeserializer;
.super Lcom/facebook/common/json/FbJsonDeserializer;
.source "FBJsonSelfDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/common/json/FbJsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/json/FBJsonSelfDeserializer;->callDefaultConstructor()Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Lcom/facebook/common/json/FBJsonDeserializeSelf;

    invoke-interface {v0, p1, p2}, Lcom/facebook/common/json/FBJsonDeserializeSelf;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 19
    iget-object v1, p0, Lcom/facebook/common/json/FBJsonSelfDeserializer;->mClass:Ljava/lang/Class;

    invoke-static {v1, p1, v0}, Lcom/facebook/common/json/AutoGenJsonHelper;->throwDeserializationFailure(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;)V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not reached"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
