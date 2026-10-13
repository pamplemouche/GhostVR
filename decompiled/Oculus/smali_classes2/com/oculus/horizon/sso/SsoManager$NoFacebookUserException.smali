.class public Lcom/oculus/horizon/sso/SsoManager$NoFacebookUserException;
.super Ljava/lang/Exception;
.source "SsoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/sso/SsoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFacebookUserException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "User not logged in with Facebook"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
