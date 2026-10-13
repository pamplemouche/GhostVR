.class public Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "LocalMediaPreviewFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mCurrentVideoPos:I

.field private mFileName:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mIsVideo:Z

.field private mLocalMediaDeeplinkingHelper:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mPreviewUri:Landroid/net/Uri;

.field private mStartPlayingAfterResume:Z

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;->$ul_$xXXcom_oculus_horizon_libraryui_localmedia_LocalMediaDeeplinkingHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mLocalMediaDeeplinkingHelper:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mCurrentVideoPos:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mStartPlayingAfterResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->onShareImageClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->onViewInVRClicked()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "file_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    const-string v1, "preview_path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string v1, "is_video"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private onShareImageClicked()V
    .locals 3

    .prologue
    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    if-eqz v0, :cond_0

    const-string v0, "video/*"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$string;->common_share:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void

    .line 176
    :cond_0
    const-string v0, "image/*"

    goto :goto_0
.end method

.method private onViewInVRClicked()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mLocalMediaDeeplinkingHelper:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaDeeplinkingHelper;->openInVR(Landroid/net/Uri;Z)V

    .line 172
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_LOCAL_MEDIA_PREVIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V

    .line 72
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 73
    const-string v0, "file_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileName:Ljava/lang/String;

    .line 74
    const-string v0, "file_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileUri:Landroid/net/Uri;

    .line 75
    const-string v0, "preview_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mPreviewUri:Landroid/net/Uri;

    .line 76
    const-string v0, "is_video"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    .line 78
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "key_current_pos"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mCurrentVideoPos:I

    .line 82
    const-string v0, "key_start_playing_after_resume"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mStartPlayingAfterResume:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    sget v0, Lcom/oculus/horizon/R$layout;->library_local_media_preview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mStartPlayingAfterResume:Z

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mCurrentVideoPos:I

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 129
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 131
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$3;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mCurrentVideoPos:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 142
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mStartPlayingAfterResume:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 146
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 150
    const-string v0, "key_current_pos"

    iget v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mCurrentVideoPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v0, "key_start_playing_after_resume"

    iget-boolean v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mStartPlayingAfterResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->image_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->video_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    .line 98
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 99
    sget v0, Lcom/oculus/horizon/R$id;->video_preview_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 106
    :goto_0
    sget v0, Lcom/oculus/horizon/R$id;->share_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$1;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->view_in_vr_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$2;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->mPreviewUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_0
.end method
