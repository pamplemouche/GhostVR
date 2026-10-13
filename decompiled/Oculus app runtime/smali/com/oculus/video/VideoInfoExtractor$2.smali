.class Lcom/oculus/video/VideoInfoExtractor$2;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"

# interfaces
.implements Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoInfoExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoInfoExtractor;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoInfoExtractor;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/oculus/video/VideoInfoExtractor$2;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindVideoSeekTimestamp(J)V
    .locals 0

    return-void
.end method

.method public onMovieMetadataXml(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSphericalV1Xml(Ljava/lang/String;)V
    .locals 1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor$2;->this$0:Lcom/oculus/video/VideoInfoExtractor;

    invoke-static {v0}, Lcom/oculus/video/VideoInfoExtractor;->access$000(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/Video;

    move-result-object v0

    invoke-static {p1}, Lcom/oculus/video/projection/VideoProjection;->fromSphericalV1Xml(Ljava/lang/String;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/video/Video;->setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
