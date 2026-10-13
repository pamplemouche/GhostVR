.class public abstract Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.super Landroid/widget/LinearLayout;
.source "Dialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;
.implements Lcom/oculus/vrshell/panels/GenericInputListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private throwIfNotInitialized()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PanelApp is null, was the Dialog initialized?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->throwIfNotInitialized()V

    .line 48
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public final initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->TAG:Ljava/lang/String;

    const-string v1, "initialize() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    throw p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Dialog can only be initialized once!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActionButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHomeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->throwIfNotInitialized()V

    .line 78
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->throwIfNotInitialized()V

    .line 69
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 0

    return-void
.end method
