.class public Lcom/facebook/rti/common/thrift/MqttTopic;
.super Ljava/lang/Object;
.source "MqttTopic.java"


# static fields
.field private static final TOPIC_NAME_ID_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_TO_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/facebook/rti/common/thrift/MqttTopic$1;

    invoke-direct {v0}, Lcom/facebook/rti/common/thrift/MqttTopic$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->TOPIC_NAME_ID_MAPPING:Ljava/util/Map;

    .line 385
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 386
    sget-object v1, Lcom/facebook/rti/common/thrift/MqttTopic;->TOPIC_NAME_ID_MAPPING:Ljava/util/Map;

    sget-object v2, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 399
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-object p0

    .line 404
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    sget-object v1, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 410
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static encodeTopic(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->TOPIC_NAME_ID_MAPPING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
