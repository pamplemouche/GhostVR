.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUIMinimizedBarView.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;
    }
.end annotation


# static fields
.field private static final DIALOG_URI_STOP_STREAMING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->LOCAL_STREAM_STOP_FROM_DEVICE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 17
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->DIALOG_URI_STOP_STREAMING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->DIALOG_URI_STOP_STREAMING:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public frame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 28
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->minimized_local_stream_icon:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$1;)V

    invoke-static {p1, p0, v0, v1}, Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 0

    return-void
.end method
