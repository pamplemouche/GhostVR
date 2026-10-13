.class public final Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;
.super Ljava/lang/Object;
.source "GlobalAutoGenDeserializerCache.java"


# static fields
.field private static final AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private static final nullDeserializer:Lcom/facebook/common/json/FbJsonDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 27
    new-instance v0, Lcom/facebook/common/json/FbJsonDeserializer;

    invoke-direct {v0}, Lcom/facebook/common/json/FbJsonDeserializer;-><init>()V

    sput-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->nullDeserializer:Lcom/facebook/common/json/FbJsonDeserializer;

    .line 34
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    const-class v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 35
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/Long;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Float;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/Float;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Double;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Landroid/net/Uri;

    new-instance v2, Lcom/facebook/common/json/UriDeserializer;

    invoke-direct {v2}, Lcom/facebook/common/json/UriDeserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findByNamingConvention(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 120
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 82
    const-class v0, Lcom/facebook/graphql/modelutil/TypeModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v1, Lcom/facebook/common/json/TypeModelBase64Deserializer;

    invoke-direct {v1}, Lcom/facebook/common/json/TypeModelBase64Deserializer;-><init>()V

    .line 94
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 95
    check-cast v0, Lcom/facebook/common/json/FbJsonDeserializer;

    invoke-virtual {v0, p0}, Lcom/facebook/common/json/FbJsonDeserializer;->init(Ljava/lang/Class;)V

    .line 107
    :goto_1
    return-object v1

    .line 84
    :cond_1
    const-class v0, Lcom/facebook/graphql/modelutil/GraphQLModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/facebook/graphql/modelutil/FragmentModel;

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    new-instance v1, Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;

    invoke-direct {v1, p0}, Lcom/facebook/common/json/TreeFragmentModelBase64Deserializer;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 89
    :cond_2
    const-class v0, Lcom/facebook/common/json/JsonDeserializableFragmentModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    new-instance v1, Lcom/facebook/common/json/FragmentModelDeserializer;

    invoke-direct {v1}, Lcom/facebook/common/json/FragmentModelDeserializer;-><init>()V

    goto :goto_0

    .line 91
    :cond_3
    const-class v0, Lcom/facebook/common/json/FBJsonDeserializeSelf;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/facebook/common/json/FBJsonSelfDeserializer;

    invoke-direct {v1}, Lcom/facebook/common/json/FBJsonSelfDeserializer;-><init>()V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deserializer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->findByNamingConvention(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 102
    if-nez v0, :cond_5

    .line 103
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$Deserializer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->findByNamingConvention(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    :cond_5
    move-object v1, v0

    .line 107
    goto :goto_1
.end method

.method public static getAutoGenDeserializerFromCache(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 61
    sget-object v1, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->nullDeserializer:Lcom/facebook/common/json/FbJsonDeserializer;

    if-ne v0, v1, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->AUTO_GEN_DESERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    move-object v0, v1

    :goto_1
    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->nullDeserializer:Lcom/facebook/common/json/FbJsonDeserializer;

    goto :goto_1
.end method
