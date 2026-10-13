.class public Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
.super Ljava/lang/Object;
.source "ProfilePictureFileHelper.java"

# interfaces
.implements Lcom/oculus/auth/handler/LogoutHandler;


# static fields
.field private static final PROFILE_PICTURE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/oculus/executors/OculusThreadExecutor;

.field private final mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->PROFILE_PICTURE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/api/ApiRequestManager;Lcom/oculus/executors/OculusThreadExecutor;Lcom/oculus/horizon/profile/UserProfileHelper;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mExecutor:Lcom/oculus/executors/OculusThreadExecutor;

    .line 56
    iput-object p4, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->PROFILE_PICTURE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfilePictureControllerForMe(Lcom/facebook/drawee/view/DraweeView;Ljava/lang/String;)Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 153
    invoke-static {p1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureRequestForMe(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 155
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public static getProfilePictureRequestForMe(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 2

    .prologue
    .line 145
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 146
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setCacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getProfilePictureRequestForMe(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureRequestForMe(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beforeLogout()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startDeleteProfilePicture()V

    .line 168
    return-void
.end method

.method public getProfilePictureControllerForMe(Lcom/facebook/drawee/view/DraweeView;)Lcom/facebook/drawee/interfaces/DraweeController;
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureRequestForMe()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public getProfilePictureRequestForMe()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getProfilePictureUri()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->getProfilePictureRequestForMe(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public hasProfilePictureForMe()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getProfilePictureUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDeleteProfilePicture()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mExecutor:Lcom/oculus/executors/OculusThreadExecutor;

    new-instance v1, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$3;-><init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;)V

    invoke-virtual {v0, v1}, Lcom/oculus/executors/OculusThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public startSaveProfilePicture(Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mExecutor:Lcom/oculus/executors/OculusThreadExecutor;

    new-instance v1, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$1;-><init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, p2}, Lcom/oculus/executors/OculusThreadExecutor;->executeWithCallback(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 78
    return-void
.end method

.method public startUploadProfilePictureAndDeleteAfterwards(Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mContext:Landroid/content/Context;

    const-string v1, "oculus_profile_picture.jpg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v2, Lcom/oculus/horizon/api/camera/UploadProfilePictureRequest;

    invoke-direct {v2, v0}, Lcom/oculus/horizon/api/camera/UploadProfilePictureRequest;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper$2;-><init>(Lcom/oculus/horizon/camera/ProfilePictureFileHelper;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 105
    return-void
.end method
