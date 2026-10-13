.class public abstract Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;
.super Landroid/widget/LinearLayout;
.source "TaskBarViewBase.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;
.implements Lcom/oculus/notifications/NotificationDataSetListener;


# static fields
.field protected static final TASK_BAR_STATE_HIDDEN:I = 0x1

.field protected static final TASK_BAR_STATE_MINIMIZED:I = 0x2

.field protected static final TASK_BAR_STATE_UNKNOWN:I = 0x0

.field protected static final TASK_BAR_STATE_VISIBLE:I = 0x3


# instance fields
.field protected mTaskBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->mTaskBarState:I

    return-void
.end method


# virtual methods
.method public abstract applyActiveState(Landroid/view/View;Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
.end method

.method public abstract launchNotifIntent()V
.end method

.method public abstract onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
.end method

.method public abstract onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
.end method

.method public abstract onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
.end method

.method public abstract pause()V
.end method

.method public abstract setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V
.end method

.method public abstract setNUXMode(Z)V
.end method

.method public abstract setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
.end method

.method public setTabletView(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;)V
    .locals 0

    return-void
.end method

.method public abstract setTaskBarState(I)V
.end method

.method public abstract updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateBrightness(I)V
.end method

.method public abstract updateCaptureAllowed(ZZ)V
.end method

.method public abstract updateControllerBattery(Ljava/lang/String;F)V
.end method

.method public abstract updateDialogComponent(Ljava/lang/String;)V
.end method

.method public abstract updateDoNotDisturbMode(Z)V
.end method

.method public abstract updateGuardianStatus(ZIZ)V
.end method

.method public abstract updateLiveStreamStatus(ZZ)V
.end method

.method public abstract updateLocalStreamState(Z)V
.end method

.method public abstract updateVideoCaptureState(Z)V
.end method
