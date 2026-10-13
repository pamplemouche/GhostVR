.class public Lcom/facebook/rti/mqtt/protocol/ConnectResult;
.super Ljava/lang/Object;
.source "ConnectResult.java"


# instance fields
.field public final mConAckReturnCode:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final mException:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public final mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            ">;"
        }
    .end annotation
.end field

.field public final mMqttDeviceIdSecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;",
            ">;"
        }
    .end annotation
.end field

.field public final mReason:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;"
        }
    .end annotation
.end field

.field public final mSucceeded:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)V
    .locals 7

    .prologue
    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    .line 25
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    .line 26
    invoke-virtual {p1, v0}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    .line 29
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    :goto_1
    move-object v0, p0

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 32
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    goto :goto_1
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 7

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 40
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    .line 41
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V
    .locals 7

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    .line 49
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 50
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    .line 51
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    .line 58
    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    .line 59
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    .line 61
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z

    .line 72
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mReason:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 73
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mException:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 74
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mConAckReturnCode:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 75
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 76
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mMqttDeviceIdSecretPair:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 77
    return-void
.end method
