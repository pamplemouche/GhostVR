.class public Lcom/oculus/horizon/sso/SsoManager$FeatureDisabledException;
.super Ljava/lang/Exception;
.source "SsoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/sso/SsoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureDisabledException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "getSessionForApp disabled by GK"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
