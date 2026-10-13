.class public Lcom/oculus/horizon/roadblock/ui/MC$qe_oculus_horizon_nux_payment_roadblock;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/roadblock/ui/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_oculus_horizon_nux_payment_roadblock"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_oculus_horizon_nux_payment_roadblock:I

    sput v0, Lcom/oculus/horizon/roadblock/ui/MC$qe_oculus_horizon_nux_payment_roadblock;->__CONFIG__:I

    .line 34
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->qe_oculus_horizon_nux_payment_roadblock_enabled:J

    sput-wide v0, Lcom/oculus/horizon/roadblock/ui/MC$qe_oculus_horizon_nux_payment_roadblock;->enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
