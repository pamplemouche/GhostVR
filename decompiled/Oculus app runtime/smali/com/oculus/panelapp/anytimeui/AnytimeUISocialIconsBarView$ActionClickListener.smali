.class Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;
.super Ljava/lang/Object;
.source "AnytimeUISocialIconsBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 511
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 512
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->profile_image_view_action_uri:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 514
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 515
    check-cast p1, Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "social_icon_click"

    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
