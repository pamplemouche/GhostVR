.class public final Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;
.super Ljava/lang/Object;
.source "ExternalPlatformLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/ExternalPlatformLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppMediaCapabilities"
.end annotation


# instance fields
.field public mAllowLivestreaming:Z

.field public mAllowScreenRecording:Z

.field public mAllowVrCasting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
