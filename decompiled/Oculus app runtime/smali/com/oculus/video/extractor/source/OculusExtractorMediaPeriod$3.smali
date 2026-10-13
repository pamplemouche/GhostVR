.class Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

.field final synthetic val$error:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;Ljava/io/IOException;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;->val$error:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$500(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$3;->val$error:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method
