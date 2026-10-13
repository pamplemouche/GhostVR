.class public Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;
.super Lcom/facebook/common/json/FbJsonDeserializer;
.source "TreeFragmentModelBase64Deserializer.java"


# instance fields
.field private treeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/graphservice/interfaces/Tree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/common/json/FbJsonDeserializer;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;->treeClass:Ljava/lang/Class;

    .line 23
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
    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {v1}, Lcom/facebook/common/json/TreeEncodingUtils;->getTypeTag(Ljava/lang/String;)I

    move-result v2

    .line 35
    invoke-static {v1}, Lcom/facebook/common/json/TreeEncodingUtils;->stripTypeTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/facebook/graphservice/staticcontext/StaticGraphServiceFactory;->getTreeSerializer()Lcom/facebook/graphservice/interfaces/TreeSerializer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;->treeClass:Ljava/lang/Class;

    .line 39
    invoke-interface {v3, v1, v4, v2}, Lcom/facebook/graphservice/interfaces/TreeSerializer;->deserializeTreeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Lcom/facebook/graphservice/interfaces/Tree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-class v2, Ljava/io/IOException;

    invoke-static {v1, v2}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 42
    iget-object v2, p0, Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;->treeClass:Ljava/lang/Class;

    invoke-static {v2, p1, v1}, Lcom/facebook/common/json/AutoGenJsonHelper;->throwDeserializationFailure(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;)V

    goto :goto_0
.end method
