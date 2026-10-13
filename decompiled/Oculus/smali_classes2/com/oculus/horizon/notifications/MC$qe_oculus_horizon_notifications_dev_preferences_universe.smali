.class public Lcom/oculus/horizon/notifications/MC$qe_oculus_horizon_notifications_dev_preferences_universe;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notifications/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_oculus_horizon_notifications_dev_preferences_universe"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final is_enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_oculus_horizon_notifications_dev_preferences_universe:I

    sput v0, Lcom/oculus/horizon/notifications/MC$qe_oculus_horizon_notifications_dev_preferences_universe;->__CONFIG__:I

    .line 69
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->qe_oculus_horizon_notifications_dev_preferences_universe_is_enabled:J

    sput-wide v0, Lcom/oculus/horizon/notifications/MC$qe_oculus_horizon_notifications_dev_preferences_universe;->is_enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
