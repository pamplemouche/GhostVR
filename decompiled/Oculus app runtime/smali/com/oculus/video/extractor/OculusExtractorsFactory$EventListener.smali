.class public interface abstract Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;
.super Ljava/lang/Object;
.source "OculusExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/OculusExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onFindVideoSeekTimestamp(J)V
.end method

.method public abstract onMovieMetadataXml(Ljava/lang/String;)V
.end method

.method public abstract onSphericalV1Xml(Ljava/lang/String;)V
.end method
