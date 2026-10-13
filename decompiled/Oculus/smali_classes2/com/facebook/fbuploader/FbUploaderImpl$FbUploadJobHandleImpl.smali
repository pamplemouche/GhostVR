.class final Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;
.super Ljava/lang/Object;
.source "FbUploaderImpl.java"

# interfaces
.implements Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/FbUploaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FbUploadJobHandleImpl"
.end annotation


# instance fields
.field private mComplete:Z

.field private mFailure:Lcom/facebook/fbuploader/UploadFailureException;

.field private mJob:Lcom/facebook/fbuploader/UploadJob;

.field private mResult:Lcom/facebook/fbuploader/UploadResult;


# direct methods
.method private constructor <init>(Lcom/facebook/fbuploader/UploadJob;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mJob:Lcom/facebook/fbuploader/UploadJob;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mComplete:Z

    .line 29
    iput-object v1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mResult:Lcom/facebook/fbuploader/UploadResult;

    .line 30
    iput-object v1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mFailure:Lcom/facebook/fbuploader/UploadFailureException;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/fbuploader/UploadJob;Lcom/facebook/fbuploader/FbUploaderImpl$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;-><init>(Lcom/facebook/fbuploader/UploadJob;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;)Lcom/facebook/fbuploader/UploadJob;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mJob:Lcom/facebook/fbuploader/UploadJob;

    return-object v0
.end method

.method static synthetic access$602(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadFailureException;)Lcom/facebook/fbuploader/UploadFailureException;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mFailure:Lcom/facebook/fbuploader/UploadFailureException;

    return-object p1
.end method

.method static synthetic access$802(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadResult;)Lcom/facebook/fbuploader/UploadResult;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->mResult:Lcom/facebook/fbuploader/UploadResult;

    return-object p1
.end method
