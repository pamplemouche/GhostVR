.class public Lcom/facebook/common/json/FbSerializerProvider;
.super Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.source "FbSerializerProvider.java"


# static fields
.field private static final SERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/Class;

.field private static isInitDone:Z

.field private static mEnumSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field private static mFragmentModelTreeSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field private static mJsonSerializableSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field private static mMapSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field private static mTypeModelSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;


# instance fields
.field private mCollectionSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field private mHumanReadableFormatEnabled:Z

.field private final mJsonLogger:Lcom/facebook/common/json/JsonLogger;

.field private mShouldCacheJacksonSerializer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/common/json/FbSerializerProvider;

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->TAG:Ljava/lang/Class;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->SERIALIZER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/json/FbSerializerProvider;->isInitDone:Z

    .line 201
    new-instance v0, Lcom/facebook/common/json/FbSerializerProvider$2;

    invoke-direct {v0}, Lcom/facebook/common/json/FbSerializerProvider$2;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->mJsonSerializableSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 211
    new-instance v0, Lcom/facebook/common/json/FbSerializerProvider$3;

    invoke-direct {v0}, Lcom/facebook/common/json/FbSerializerProvider$3;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->mTypeModelSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 236
    new-instance v0, Lcom/facebook/common/json/FbSerializerProvider$4;

    invoke-direct {v0}, Lcom/facebook/common/json/FbSerializerProvider$4;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->mFragmentModelTreeSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 249
    new-instance v0, Lcom/facebook/common/json/FbSerializerProvider$5;

    invoke-direct {v0}, Lcom/facebook/common/json/FbSerializerProvider$5;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->mEnumSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 258
    new-instance v0, Lcom/facebook/common/json/FbSerializerProvider$6;

    invoke-direct {v0}, Lcom/facebook/common/json/FbSerializerProvider$6;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FbSerializerProvider;->mMapSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method
