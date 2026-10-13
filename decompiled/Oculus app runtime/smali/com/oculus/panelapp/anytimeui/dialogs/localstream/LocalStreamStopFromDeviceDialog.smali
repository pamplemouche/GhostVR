.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "LocalStreamStopFromDeviceDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceNameText:Landroid/widget/TextView;

.field private mDeviceTypeImage:Landroid/widget/ImageView;

.field private mDeviceTypeText:Landroid/widget/TextView;

.field private mDeviceView:Landroid/view/View;

.field private mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->TAG:Ljava/lang/String;

    const-string p2, "LocalStreamStopFromDeviceDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->onDeviceUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->stopCasting()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->closeDialog()V

    return-void
.end method

.method private closeDialog()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private inflateNewDialog()V
    .locals 3

    .line 49
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_stop_dialog_stub:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 50
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_stop_device_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceView:Landroid/view/View;

    .line 51
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_device_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceNameText:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_device_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceTypeText:Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_item_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceTypeImage:Landroid/widget/ImageView;

    .line 55
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamStopFromDeviceDialog$cMedaLWBtcbMOPLePL-1bLS9Zmo;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamStopFromDeviceDialog$cMedaLWBtcbMOPLePL-1bLS9Zmo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_stop_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamStopFromDeviceDialog$554oDiEyd97nTjlfm_qd4Y8mpnY;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/-$$Lambda$LocalStreamStopFromDeviceDialog$554oDiEyd97nTjlfm_qd4Y8mpnY;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateOldDialog()V
    .locals 2

    .line 142
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_stop_from_device_dialog_stub_old:I

    .line 144
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 145
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method

.method private onDeviceUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->shouldShowDeviceDetails(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceNameText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceTypeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->getDeviceTypeText(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceTypeImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->getImageResourceForDevice(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private shouldShowDeviceDetails(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$3;->$SwitchMap$com$oculus$vrcast$VrCastController$VrShellCastDevice$State:[I

    iget-object p1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {p1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private stopCasting()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->useVrCastingUi(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->inflateNewDialog()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->inflateOldDialog()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$inflateNewDialog$1$LocalStreamStopFromDeviceDialog(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->closeDialog()V

    return-void
.end method

.method public synthetic lambda$inflateNewDialog$2$LocalStreamStopFromDeviceDialog(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->stopCasting()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onAttachedToWindow()V

    .line 62
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mDeviceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V

    .line 88
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;-><init>(Lcom/oculus/vrcast/VrCastController$VrCastCallback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->unbind()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->mVrCastController:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    :cond_0
    return-void
.end method
