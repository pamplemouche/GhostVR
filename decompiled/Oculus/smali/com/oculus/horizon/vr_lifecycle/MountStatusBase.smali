.class abstract Lcom/oculus/horizon/vr_lifecycle/MountStatusBase;
.super Ljava/lang/Object;
.source "MountStatusBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract start(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
.end method

.method public abstract teardown()V
.end method
