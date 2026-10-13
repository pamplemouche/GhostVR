.class public interface abstract Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;
.super Ljava/lang/Object;
.source "VRLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VRLifecycle"
.end annotation


# virtual methods
.method public abstract onHeadsetMounted()V
.end method

.method public abstract onHeadsetUnmounted()V
.end method

.method public abstract onVRSessionEnded()V
.end method

.method public abstract onVRSessionStarted()V
.end method
