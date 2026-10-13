.class public Lcom/oculus/horizon/settings/MC$qe_oculus_horizon_react_privacy_settings;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_oculus_horizon_react_privacy_settings"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final show_react:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_oculus_horizon_react_privacy_settings:I

    sput v0, Lcom/oculus/horizon/settings/MC$qe_oculus_horizon_react_privacy_settings;->__CONFIG__:I

    .line 135
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_oculus_horizon_react_privacy_settings_show_react:J

    sput-wide v0, Lcom/oculus/horizon/settings/MC$qe_oculus_horizon_react_privacy_settings;->show_react:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
