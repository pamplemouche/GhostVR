.class public Lcom/facebook/fbuploader/Content$DigestInfo;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestInfo"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mDigest:[B

.field private final mDigestTimeMs:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/fbuploader/Content$DigestInfo;->mDigest:[B

    .line 41
    iput-wide p2, p0, Lcom/facebook/fbuploader/Content$DigestInfo;->mDigestTimeMs:J

    .line 42
    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/fbuploader/Content$DigestInfo;->mDigest:[B

    return-object v0
.end method

.method public getDigestTimeMs()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/facebook/fbuploader/Content$DigestInfo;->mDigestTimeMs:J

    return-wide v0
.end method
