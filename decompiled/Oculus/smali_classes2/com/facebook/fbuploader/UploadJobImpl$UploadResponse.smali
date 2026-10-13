.class Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;
.super Ljava/lang/Object;
.source "UploadJobImpl.java"


# annotations
.annotation build Lcom/instagram/common/json/annotation/JsonType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/UploadJobImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadResponse"
.end annotation


# instance fields
.field handle:Ljava/lang/String;

.field mediaId:Ljava/lang/String;

.field status:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field uploadId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field xsharingNonces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->handle:Ljava/lang/String;

    .line 604
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->mediaId:Ljava/lang/String;

    .line 607
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->uploadId:Ljava/lang/String;

    .line 611
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->status:Ljava/lang/String;

    .line 615
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->xsharingNonces:Ljava/util/HashMap;

    return-void
.end method
