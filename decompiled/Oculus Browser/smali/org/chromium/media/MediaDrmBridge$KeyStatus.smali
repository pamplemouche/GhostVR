.class public Lorg/chromium/media/MediaDrmBridge$KeyStatus;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public final b:I


# direct methods
.method public synthetic constructor <init>([BILD41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->a:[B

    .line 3
    iput p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->b:I

    return-void
.end method

.method private getKeyId()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->a:[B

    return-object v0
.end method

.method private getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->b:I

    return v0
.end method
