.class public Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "IPDAdjustDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/MountedStateListener;
.implements Lcom/oculus/panelapp/anytimeui/VideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;,
        Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
    }
.end annotation


# static fields
.field private static final SKIP_TO_STATE_URI_PARAM:Ljava/lang/String; = "skip_to_state"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FADE_IN_ANIMATION_DURATION:I

.field private final FADE_OUT_ANIMATION_DURATION:I

.field private mAdjustTextLeft:Landroid/widget/TextView;

.field private mAdjustTextRight:Landroid/widget/TextView;

.field private mCalibrationImage:Landroid/widget/ImageView;

.field private mDialogView:Landroid/view/View;

.field private mInstructionsTextLeft:Landroid/widget/TextView;

.field private mInstructionsTextRight:Landroid/widget/TextView;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xc8

    .line 239
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->FADE_IN_ANIMATION_DURATION:I

    const/16 p1, 0x12c

    .line 240
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->FADE_OUT_ANIMATION_DURATION:I

    .line 36
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string p2, "IPDAdjustDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object p0
.end method

.method private enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V
    .locals 3

    .line 99
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPDAdjustDialog enterState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustSkipToState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 101
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$IPDAdjustDialog$IPDAdjustState:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 124
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled IPD adjust dialog state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "apk://com.oculus.vrshell/assets/quest_nux_fit_vertical.mp4"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionPlayVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "apk://com.oculus.vrshell/assets/quest_nux_fit_fit_and_horizontal.mp4"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionPlayVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mCalibrationImage:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ipd_vertical:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mInstructionsTextLeft:Landroid/widget/TextView;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ipd_adjust_dialog_vertical_instructions:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mInstructionsTextRight:Landroid/widget/TextView;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ipd_adjust_dialog_vertical_instructions:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mAdjustTextLeft:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mAdjustTextRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mDialogView:Landroid/view/View;

    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->IN:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->playFadeAnimation(Landroid/view/View;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mDialogView:Landroid/view/View;

    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->IN:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->playFadeAnimation(Landroid/view/View;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;Ljava/lang/Runnable;)V

    .line 127
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->setIPDAdjustState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private goToDoneState()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mDialogView:Landroid/view/View;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$2;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->playFadeAnimation(Landroid/view/View;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onVideoComplete()V
    .locals 4

    .line 149
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string v1, "IPDAdjustDialog onVideoComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustSkipToState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->goToDoneState()V

    return-void

    .line 156
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$IPDAdjustDialog$IPDAdjustState:[I

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 169
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled IPD adjust dialog state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :pswitch_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    invoke-direct {p0, v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->HORIZONTAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    invoke-direct {p0, v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playFadeAnimation(Landroid/view/View;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;Ljava/lang/Runnable;)V
    .locals 2

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 225
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    if-ne p2, v0, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xc8

    .line 226
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 230
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 4

    .line 71
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPDAdjustDialog configure with request URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v0

    .line 75
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "skip_to_state"

    .line 76
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 78
    invoke-static {p1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object p1

    .line 77
    :goto_0
    invoke-virtual {v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->setIPDAdjustSkipToState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;)V

    .line 81
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustSkipToState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    .line 84
    :cond_1
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    if-ne v0, p1, :cond_2

    .line 86
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->FIT_AND_HORIZONTAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 89
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$IPDAdjustDialog$IPDAdjustState:[I

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 95
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 41
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string v1, "IPDAdjustDialog initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 43
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mDialogView:Landroid/view/View;

    .line 44
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog_calibration_image:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mCalibrationImage:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog_instructions_text_left:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mInstructionsTextLeft:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog_instructions_text_right:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mInstructionsTextRight:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog_adjust_text_left:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mAdjustTextLeft:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ipd_adjust_dialog_adjust_text_right:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mAdjustTextRight:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetVolumeLayerEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetControllerVisibility(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->suppressToasts()V

    return-void

    .line 57
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->DONE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetVolumeLayerEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetControllerVisibility(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->unsuppressToasts()V

    .line 61
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 66
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->enterState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void
.end method

.method public onActionButton()Z
    .locals 5

    .line 176
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string v1, "IPDAdjustDialog onActionButton"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getIPDAdjustSkipToState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->goToDoneState()V

    return v2

    .line 183
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$IPDAdjustDialog$IPDAdjustState:[I

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 204
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled IPD adjust dialog state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->goToDoneState()V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->mDialogView:Landroid/view/View;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$1;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->playFadeAnimation(Landroid/view/View;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;Ljava/lang/Runnable;)V

    :goto_0
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onBackground()V
    .locals 2

    .line 137
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string v1, "IPDAdjustDialog onBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 132
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->TAG:Ljava/lang/String;

    const-string v1, "IPDAdjustDialog onForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoStatus(Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    if-ne p1, v0, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->onVideoComplete()V

    :cond_1
    return-void
.end method
