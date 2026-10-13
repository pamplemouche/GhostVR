.class public final Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;
.super Lcom/facebook/common/json/FbJsonField;
.source "FbJsonField.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/json/FbJsonField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableListJsonField"
.end annotation


# instance fields
.field private mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;"
        }
    .end annotation
.end field

.field private mSimpleInnerListType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;Lcom/fasterxml/jackson/core/type/TypeReference;)V
    .locals 0
    .param p2    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/fasterxml/jackson/core/type/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/json/FbJsonField;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 406
    iput-object p3, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mSimpleInnerListType:Ljava/lang/Class;

    .line 407
    iput-object p4, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;

    .line 408
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mSimpleInnerListType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;

    .line 416
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/common/json/AutoGenJsonHelper;->readImmutableListValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mSetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 421
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mSetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ImmutableListJsonField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 428
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
