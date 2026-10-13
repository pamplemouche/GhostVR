.class public final Lcom/oculus/video/audio/AudioSpatializer$InitializationException;
.super Ljava/lang/Exception;
.source "AudioSpatializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/audio/AudioSpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AudioSpatializer init failed"

    .line 24
    invoke-direct {p0, v0}, Lcom/oculus/video/audio/AudioSpatializer$InitializationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
