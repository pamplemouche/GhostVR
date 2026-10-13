.class public interface abstract Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;
.super Ljava/lang/Object;
.source "OsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/osupdaterapi/OsUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OtaUpdateProgressCallback"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(F)V
.end method
