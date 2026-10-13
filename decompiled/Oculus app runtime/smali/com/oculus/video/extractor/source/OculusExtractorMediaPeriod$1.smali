.class Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$1;
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

    .line 141
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$1;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$1;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$000(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)V

    return-void
.end method
