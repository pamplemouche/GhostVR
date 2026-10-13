.class Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;[Lcom/oculus/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$Listener;Lcom/oculus/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$100(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$200(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$2;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method
