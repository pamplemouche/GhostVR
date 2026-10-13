.class public Lcom/oculus/panelapp/debug/VrCastTab;
.super Landroid/widget/RelativeLayout;
.source "VrCastTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# static fields
.field private static final TAG:Ljava/lang/String; = "VrCastTab"


# instance fields
.field private mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/debug/VrCastTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/VrCastTab;)Lcom/oculus/panelapp/debug/VrCastManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 3

    .line 43
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_VRCAST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    sget-object p1, Lcom/oculus/panelapp/debug/VrCastTab;->TAG:Ljava/lang/String;

    const-string p2, "VrCast is not enabled for current user"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastTab;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 49
    sget-object p1, Lcom/oculus/panelapp/debug/VrCastTab;->TAG:Ljava/lang/String;

    const-string p2, "Only standalone device supports VrCast."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_1
    sget p1, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    .line 54
    sget-object p1, Lcom/oculus/panelapp/debug/VrCastTab;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current OS SDK version ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "support VrCast. VrCast requires minimal OS SDK version ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/VrCastTab;->setVisibility(I)V

    .line 66
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_vrcast:I

    const-string v0, "vrcast"

    const-string v1, "VRCast"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_refresh_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/VrCastTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 69
    new-instance p2, Lcom/oculus/panelapp/debug/VrCastTab$1;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/VrCastTab$1;-><init>(Lcom/oculus/panelapp/debug/VrCastTab;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_teardown_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/VrCastTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 78
    new-instance p2, Lcom/oculus/panelapp/debug/VrCastTab$2;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/VrCastTab$2;-><init>(Lcom/oculus/panelapp/debug/VrCastTab;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance p1, Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastTab;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/panelapp/debug/VrCastManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    .line 87
    new-instance p1, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastTab;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object p2, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->setManager(Lcom/oculus/panelapp/debug/VrCastManager;)V

    .line 89
    iget-object p2, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/debug/VrCastManager;->setDeviceAdapter(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;)V

    .line 90
    new-instance p2, Lcom/oculus/panelapp/debug/VrCastConnectView;

    .line 91
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastTab;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    sget v2, Lcom/oculus/panelapp/debug/R$id;->vrcast_connect_view:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/debug/VrCastTab;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/oculus/panelapp/debug/VrCastConnectView;-><init>(Landroid/content/Context;Lcom/oculus/panelapp/debug/VrCastManager;Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/debug/VrCastManager;->setConnectView(Lcom/oculus/panelapp/debug/VrCastConnectView;)V

    .line 94
    sget p2, Lcom/oculus/panelapp/debug/R$id;->vrcast_list:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/VrCastTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 95
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 37
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastTab;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow() called: Unbind VrCastService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastTab;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/VrCastManager;->unbindVrCastService()V

    return-void
.end method
