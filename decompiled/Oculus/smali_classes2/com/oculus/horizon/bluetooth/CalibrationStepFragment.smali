.class public Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "CalibrationStepFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;
    }
.end annotation


# instance fields
.field private mCalibrationComplete:Z

.field private mCheckmark:Landroid/view/View;

.field private final mCompleteRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->onComplete()V

    return-void
.end method

.method private getListener()Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStep()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static newGyroStepFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->newInstance(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v2, "step"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method

.method public static newMagStepFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->newInstance(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private onComplete()V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getListener()Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getStep()I

    move-result v1

    .line 175
    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;->onMagStepComplete()V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;->onGyroStepComplete()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCalibrationComplete()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCheckmark:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCalibrationComplete:Z

    .line 166
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    sget v0, Lcom/oculus/horizon/R$layout;->bluetooth_calibration_step_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    .line 144
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 145
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCheckmark:Landroid/view/View;

    .line 146
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 138
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 126
    iget-boolean v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCalibrationComplete:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCompleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 131
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    sget v2, Lcom/oculus/horizon/R$id;->progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 88
    sget v2, Lcom/oculus/horizon/R$id;->checkmark:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mCheckmark:Landroid/view/View;

    .line 92
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getStep()I

    move-result v2

    .line 93
    packed-switch v2, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid step: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    sget v2, Lcom/oculus/horizon/R$raw;->bluetooth_calibration_mag:I

    .line 96
    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_calibration_step_mag_title:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_calibration_step_mag_description:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$2;-><init>(Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 115
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "android.resource://%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 116
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 120
    return-void

    .line 100
    :pswitch_1
    sget v2, Lcom/oculus/horizon/R$raw;->bluetooth_calibration_gyro:I

    .line 101
    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_calibration_step_gyro_title:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_calibration_step_gyro_description:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 103
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
