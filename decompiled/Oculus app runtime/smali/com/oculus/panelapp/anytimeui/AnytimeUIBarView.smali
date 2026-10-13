.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;
.super Landroid/widget/LinearLayout;
.source "AnytimeUIBarView.java"


# instance fields
.field protected mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public applyActiveComponentRoute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applyBadgeRoute(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public getActiveComponentRouteMatchLength(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-void
.end method

.method public resetActiveComponent()V
    .locals 0

    return-void
.end method

.method public resetBadges()V
    .locals 0

    return-void
.end method
