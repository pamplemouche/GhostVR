.class Lcom/oculus/horizon/capture/LegacyCapture$5;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/LegacyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/LegacyCapture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/LegacyCapture;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioPlatformComponentHost()Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/capture/LegacyCapture$5$1;-><init>(Lcom/oculus/horizon/capture/LegacyCapture$5;)V

    return-object v0
.end method
