.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;
.super Landroid/widget/LinearLayout;
.source "LocalStreamDialog.java"


# static fields
.field public static final PHONE_CAST_ITEM_ID:Ljava/lang/String; = "phone_cast_id"


# instance fields
.field private mAdapter:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mStartButton:Landroid/view/View;

.field private mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    return-object p0
.end method

.method private closeDialog()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private onStartClicked()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mAdapter:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->getSelectedItem()Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->getExtraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_cast_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->onPhoneCastClicked()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->getExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->startCastToDevice(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 49
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_device_list:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 50
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    .line 52
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$NflHXHh3IrF49A4MlqVjyjBQ-sk;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$NflHXHh3IrF49A4MlqVjyjBQ-sk;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;-><init>(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;)V

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mAdapter:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    .line 53
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mAdapter:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_close_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$Df7afGKJk2reUdjarnXErj_MdHI;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$Df7afGKJk2reUdjarnXErj_MdHI;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_start_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mStartButton:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mStartButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$zFDIThqmwW_Xuo8boKbs61DhmlM;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamDialog$zFDIThqmwW_Xuo8boKbs61DhmlM;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initialize$5$LocalStreamDialog(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mStartButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initialize$6$LocalStreamDialog(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->onHideClicked()V

    return-void
.end method

.method public synthetic lambda$initialize$7$LocalStreamDialog(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->onStartClicked()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 64
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)V

    .line 104
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;-><init>(Lcom/oculus/vrcast/VrCastController$VrCastCallback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->unbind()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->initialize()V

    return-void
.end method

.method public onHideClicked()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->closeDialog()V

    return-void
.end method

.method public onPhoneCastClicked()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public setPanelApp(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-void
.end method

.method public startCastToDevice(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->startCast(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->closeDialog()V

    return-void
.end method

.method public updateDevicesList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_phonecast:I

    .line 152
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_dialog_device_type_phone:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "phone_cast_id"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 156
    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    .line 158
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->getImageResourceForDevice(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)I

    move-result v3

    iget-object v4, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->getDeviceTypeText(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->mAdapter:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->setListItems(Ljava/util/List;)V

    return-void
.end method
