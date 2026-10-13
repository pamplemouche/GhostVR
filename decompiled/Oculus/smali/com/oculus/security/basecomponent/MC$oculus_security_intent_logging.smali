.class public Lcom/oculus/security/basecomponent/MC$oculus_security_intent_logging;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/security/basecomponent/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_security_intent_logging"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final horizon_enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_security_intent_logging:I

    sput v0, Lcom/oculus/security/basecomponent/MC$oculus_security_intent_logging;->__CONFIG__:I

    .line 34
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_security_intent_logging_horizon_enabled:J

    sput-wide v0, Lcom/oculus/security/basecomponent/MC$oculus_security_intent_logging;->horizon_enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
