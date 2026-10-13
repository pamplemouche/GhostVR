.class public Lcom/oculus/horizon/libraryui/MC$qe_oculus_horizon_library_redesign;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_oculus_horizon_library_redesign"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final enabled:J

.field public static final local_media_enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_oculus_horizon_library_redesign:I

    sput v0, Lcom/oculus/horizon/libraryui/MC$qe_oculus_horizon_library_redesign;->__CONFIG__:I

    .line 74
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->qe_oculus_horizon_library_redesign_enabled:J

    sput-wide v0, Lcom/oculus/horizon/libraryui/MC$qe_oculus_horizon_library_redesign;->enabled:J

    .line 79
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->qe_oculus_horizon_library_redesign_local_media_enabled:J

    sput-wide v0, Lcom/oculus/horizon/libraryui/MC$qe_oculus_horizon_library_redesign;->local_media_enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
