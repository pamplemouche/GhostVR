.class public Lcom/facebook/rti/mqtt/common/hardware/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# instance fields
.field public final batteryPercentage:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final isCharging:Z

.field public final isFull:Z


# direct methods
.method public constructor <init>(ZZLcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->isCharging:Z

    .line 15
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->isFull:Z

    .line 16
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->batteryPercentage:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 17
    return-void
.end method
