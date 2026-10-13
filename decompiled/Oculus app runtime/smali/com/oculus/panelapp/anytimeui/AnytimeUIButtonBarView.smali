.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;
.source "AnytimeUIButtonBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 88
    instance-of v5, v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    check-cast v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    move v2, v1

    move-object v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;

    invoke-direct {p1, p0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;I)V

    return-object p1
.end method


# virtual methods
.method public applyActiveComponentRoute(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;

    move-result-object p1

    .line 45
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v0, :cond_0

    .line 46
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    :cond_0
    return-void
.end method

.method public applyBadgeRoute(Ljava/lang/String;Z)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;

    move-result-object p1

    .line 71
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadgeSticky(Z)V

    :cond_0
    return-void
.end method

.method public getActiveComponentRouteMatchLength(Ljava/lang/String;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getButtonForRoute(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;

    move-result-object p1

    iget p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mRouteMatchLength:I

    return p1
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 21
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;)V

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected navigate(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2c

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 108
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 111
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->navigate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetActiveComponent()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method

.method public resetBadges()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    instance-of v3, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v3, :cond_0

    .line 61
    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 62
    invoke-virtual {v2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadged(Z)V

    .line 63
    invoke-virtual {v2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setIsBadgeSticky(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    .line 133
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->applyActiveState(Landroid/view/View;Z)V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 137
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    .line 139
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object p1

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->applyActiveState(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
