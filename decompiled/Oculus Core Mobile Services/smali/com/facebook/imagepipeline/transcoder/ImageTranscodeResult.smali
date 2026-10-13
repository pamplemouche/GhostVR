.class public Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
.super Ljava/lang/Object;
.source "ImageTranscodeResult.java"


# instance fields
.field private final mTranscodeStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    .line 18
    return-void
.end method


# virtual methods
.method public getTranscodeStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "Status: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
