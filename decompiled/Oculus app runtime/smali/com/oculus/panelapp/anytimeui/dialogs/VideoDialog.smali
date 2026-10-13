.class public Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "VideoDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/MountedStateListener;
.implements Lcom/oculus/panelapp/anytimeui/VideoStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mVideoUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->TAG:Ljava/lang/String;

    const-string v0, "VideoDialog dialog constructed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/shellpanel/R$styleable;->Common:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->Common_uri:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->mVideoUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionPlayVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onBackground()V
    .locals 2

    .line 41
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->TAG:Ljava/lang/String;

    const-string v1, "VideoDialog onBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionPauseVideo()V

    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 35
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->TAG:Ljava/lang/String;

    const-string v1, "VideoDialog onForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionResumeVideo()V

    return-void
.end method

.method public onVideoStatus(Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    if-ne p1, v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/VideoDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
