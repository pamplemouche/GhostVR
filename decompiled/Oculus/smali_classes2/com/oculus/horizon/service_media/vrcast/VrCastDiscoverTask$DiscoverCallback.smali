.class public interface abstract Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;
.super Ljava/lang/Object;
.source "VrCastDiscoverTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiscoverCallback"
.end annotation


# virtual methods
.method public abstract onDiscoverError()V
.end method

.method public abstract onDiscoverResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation
.end method
