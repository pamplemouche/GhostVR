.class public Lcom/oculus/debug/MC$oculus_shared_core;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/debug/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_shared_core"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final is_trusted_user:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_shared_core:I

    sput v0, Lcom/oculus/debug/MC$oculus_shared_core;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_shared_core_is_trusted_user:J

    sput-wide v0, Lcom/oculus/debug/MC$oculus_shared_core;->is_trusted_user:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
