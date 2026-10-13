.class public Lcom/facebook/analytics2/logger/PrivacyControlledUploader;
.super Ljava/lang/Object;
.source "PrivacyControlledUploader.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/Uploader;


# static fields
.field private static final sIOException:Ljava/io/IOException;


# instance fields
.field private mPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

.field private mUploader:Lcom/facebook/analytics2/logger/Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Upload is skipped due to privacy control."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->sIOException:Ljava/io/IOException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/PrivacyPolicy;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    .line 22
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

    return-void
.end method


# virtual methods
.method public setPrivacyPolicy(Lcom/facebook/analytics2/logger/PrivacyPolicy;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

    return-void
.end method

.method public setUploader(Lcom/facebook/analytics2/logger/Uploader;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    return-void
.end method

.method public upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/PrivacyPolicy;->allowUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    invoke-interface {v0, p1, p2}, Lcom/facebook/analytics2/logger/Uploader;->upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->sIOException:Ljava/io/IOException;

    invoke-interface {p2, p1}, Lcom/facebook/analytics2/logger/UploaderCallback;->onFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
