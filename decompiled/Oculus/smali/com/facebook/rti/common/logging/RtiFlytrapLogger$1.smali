.class final Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;
.super Ljava/util/HashSet;
.source "RtiFlytrapLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 20
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/facebook/rti/common/thrift/MqttTopic;->VALUES_TO_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
