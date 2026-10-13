.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUIPeopleButtonBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    const-string v0, "sessionless__oculus_report_without_userid_universe"

    const-string v1, "is_report_without_userid_enabled"

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isQEParamEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->people_detail_blockandreport:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_CHAT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->people_detail_chats:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->people_detail_profile:I

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 35
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getLocalUserInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/anytime_ui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->people_detail_blockandreport:I

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIPeopleButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    :goto_0
    return-void
.end method
