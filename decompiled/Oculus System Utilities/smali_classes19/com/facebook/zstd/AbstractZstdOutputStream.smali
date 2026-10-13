.class public abstract Lcom/facebook/zstd/AbstractZstdOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AbstractZstdOutputStream.java"


# static fields
.field public static final DEFAULT_COMPRESSION_LEVEL:I = 0xd


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "preset"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract finish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
