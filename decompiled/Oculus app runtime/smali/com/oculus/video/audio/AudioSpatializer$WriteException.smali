.class public final Lcom/oculus/video/audio/AudioSpatializer$WriteException;
.super Ljava/lang/Exception;
.source "AudioSpatializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/audio/AudioSpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AudioSpatializer write failed"

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
