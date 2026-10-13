.class public abstract Lcom/oculus/android/exoplayer2/decoder/OutputBuffer;
.super Lcom/oculus/android/exoplayer2/decoder/Buffer;
.source "OutputBuffer.java"


# instance fields
.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
