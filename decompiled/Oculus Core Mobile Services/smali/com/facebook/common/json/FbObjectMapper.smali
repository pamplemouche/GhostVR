.class public Lcom/facebook/common/json/FbObjectMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "FbObjectMapper.java"


# static fields
.field private static objectMapper:Lcom/facebook/common/json/FbObjectMapper;


# instance fields
.field private mHumanReadableFormatEnabled:Z

.field private final mJsonLogger:Lcom/facebook/common/json/JsonLogger;

.field private mShouldCacheJacksonSerializer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 49
    sput-object v4, Lcom/facebook/common/json/FbObjectMapper;->objectMapper:Lcom/facebook/common/json/FbObjectMapper;

    .line 74
    new-instance v1, Lcom/facebook/common/json/FbObjectMapper$1;

    invoke-direct {v1}, Lcom/facebook/common/json/FbObjectMapper$1;-><init>()V

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    sget-object v2, Lcom/facebook/common/json/FbObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    sget-object v3, Lcom/facebook/common/json/FbObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 115
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    sget-object v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v6, "GMT"

    .line 120
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 121
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v11

    move-object v6, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 124
    :try_start_0
    const-class v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-string v3, "DEFAULT_INTROSPECTOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const-class v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-string v2, "DEFAULT_BASE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getListOrMapDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 247
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    new-instance v0, Lcom/facebook/common/json/ArrayListDeserializer;

    invoke-direct {v0, p1}, Lcom/facebook/common/json/ArrayListDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 259
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const-class v1, Lcom/google/common/collect/ImmutableList;

    if-ne v0, v1, :cond_2

    .line 250
    new-instance v0, Lcom/facebook/common/json/ImmutableListDeserializer;

    invoke-direct {v0, p1}, Lcom/facebook/common/json/ImmutableListDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0

    .line 251
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/common/json/FbObjectMapper;->isValidMapKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    const-class v1, Ljava/util/Map;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/util/HashMap;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/util/LinkedHashMap;

    if-ne v0, v1, :cond_4

    .line 253
    :cond_3
    new-instance v0, Lcom/facebook/common/json/LinkedHashMapDeserializer;

    invoke-direct {v0, p1}, Lcom/facebook/common/json/LinkedHashMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0

    .line 254
    :cond_4
    const-class v1, Lcom/google/common/collect/ImmutableMap;

    if-ne v0, v1, :cond_5

    .line 255
    new-instance v0, Lcom/facebook/common/json/ImmutableMapDeserializer;

    invoke-direct {v0, p1}, Lcom/facebook/common/json/ImmutableMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0

    .line 259
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidMapKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 3
    .param p1    # Lcom/fasterxml/jackson/databind/JavaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 263
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 267
    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_2

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected _findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method protected _readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonParser;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->getAutoGenDeserializerFromCache(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 225
    :cond_0
    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0, p2}, Lcom/facebook/common/json/FbObjectMapper;->getListOrMapDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 228
    :cond_1
    if-nez v0, :cond_2

    .line 229
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/facebook/common/json/FbObjectMapper;->mJsonLogger:Lcom/facebook/common/json/JsonLogger;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/facebook/common/json/FbObjectMapper;->mJsonLogger:Lcom/facebook/common/json/JsonLogger;

    sget-object v2, Lcom/facebook/common/json/JsonLogger$Event;->DESERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/json/JsonLogger;->log(Lcom/facebook/common/json/JsonLogger$Event;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    :cond_2
    return-object v0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p2}, Lcom/facebook/common/json/GlobalAutoGenDeserializerCache;->getAutoGenDeserializerFromCache(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/common/json/FbObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 210
    invoke-super {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/facebook/common/json/FbObjectMapper;->mJsonLogger:Lcom/facebook/common/json/JsonLogger;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/facebook/common/json/FbObjectMapper;->mJsonLogger:Lcom/facebook/common/json/JsonLogger;

    sget-object v2, Lcom/facebook/common/json/JsonLogger$Event;->DESERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/json/JsonLogger;->log(Lcom/facebook/common/json/JsonLogger$Event;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    :cond_0
    return-object v0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 197
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 198
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/json/FbObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/json/FbObjectMapper;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method
