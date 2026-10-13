.class public Lcom/oculus/horizon/notificationsFeed/MC$oculus_growth;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notificationsFeed/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_growth"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final default_app:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_growth:I

    sput v0, Lcom/oculus/horizon/notificationsFeed/MC$oculus_growth;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_growth_default_app:J

    sput-wide v0, Lcom/oculus/horizon/notificationsFeed/MC$oculus_growth;->default_app:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
