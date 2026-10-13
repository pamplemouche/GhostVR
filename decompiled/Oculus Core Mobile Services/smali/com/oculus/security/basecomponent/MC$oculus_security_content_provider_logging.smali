.class public Lcom/oculus/security/basecomponent/MC$oculus_security_content_provider_logging;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/security/basecomponent/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_security_content_provider_logging"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_security_content_provider_logging:I

    sput v0, Lcom/oculus/security/basecomponent/MC$oculus_security_content_provider_logging;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_security_content_provider_logging_enabled:J

    sput-wide v0, Lcom/oculus/security/basecomponent/MC$oculus_security_content_provider_logging;->enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
