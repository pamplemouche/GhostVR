.class public Lcom/facebook/analytics2/logger/UploadProcessor$HttpResponseException;
.super Ljava/io/IOException;
.source "UploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResponseException"
.end annotation


# instance fields
.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    iput p1, p0, Lcom/facebook/analytics2/logger/UploadProcessor$HttpResponseException;->mStatusCode:I

    .line 108
    return-void
.end method
