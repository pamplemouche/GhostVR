.class public final Lcom/facebook/common/json/FbJsonField$ListJsonField;
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
    name = "ListJsonField"
.end annotation


# instance fields
.field private mDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

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
    .param p1    # Ljava/lang/reflect/Field;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/json/FbJsonField;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 347
    iput-object p3, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSimpleInnerListType:Ljava/lang/Class;

    .line 348
    iput-object p4, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;

    .line 349
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
    .line 358
    :try_start_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 359
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    .line 379
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 380
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_1
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSimpleInnerListType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 364
    new-instance v0, Lcom/facebook/common/json/ArrayListDeserializer;

    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mSimpleInnerListType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/facebook/common/json/ArrayListDeserializer;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 375
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/json/FbObjectMapper;

    .line 368
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mGenericInnerListType:Lcom/fasterxml/jackson/core/type/TypeReference;

    .line 369
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/facebook/common/json/ArrayListDeserializer;

    invoke-direct {v1, v0}, Lcom/facebook/common/json/ArrayListDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    iput-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 387
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 372
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to set simple or generic inner list type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    iget-object v1, p0, Lcom/facebook/common/json/FbJsonField$ListJsonField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
