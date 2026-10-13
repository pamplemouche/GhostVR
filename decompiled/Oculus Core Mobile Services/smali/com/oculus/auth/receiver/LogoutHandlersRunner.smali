.class public Lcom/oculus/auth/receiver/LogoutHandlersRunner;
.super Ljava/lang/Object;
.source "LogoutHandlersRunner.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oculus/auth/receiver/LogoutHandlersRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/auth/receiver/LogoutHandlersRunner;->TAG:Ljava/lang/String;

    return-void
.end method
