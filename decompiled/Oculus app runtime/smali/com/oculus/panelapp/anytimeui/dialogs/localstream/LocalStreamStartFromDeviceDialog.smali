.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "LocalStreamStartFromDeviceDialog.java"


# static fields
.field private static final INLINE_ICON_HEIGHT_ABOVE_LINE_HEIGHT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->TAG:Ljava/lang/String;

    const-string p2, "LocalStreamStartFromDeviceDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addIconToChromecastInstructionTextView()V
    .locals 7

    .line 98
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_start_from_device_dialog_chromecast_instruction:I

    .line 99
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_start_from_device_dialog_chromecast_instruction:I

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon_placeholder"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 110
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->TAG:Ljava/lang/String;

    const-string v1, "LocalStreamStartFromDeviceDialog icon placeholder expected but not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_system_dialog_localstream:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    .line 123
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int v5, v5, v4

    .line 125
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v5, v6

    const/4 v6, 0x0

    .line 120
    invoke-virtual {v3, v6, v6, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v2, 0x10

    const/16 v5, 0x21

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private inflateNewDialog()V
    .locals 4

    .line 46
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_dialog_stub:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;

    .line 48
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->setPanelApp(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x200

    const/16 v3, 0x1d6

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 53
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private inflateOldDialog()V
    .locals 3

    .line 58
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_start_from_device_dialog_stub:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 61
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 77
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_start_from_device_dialog_start_description:I

    .line 78
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_start_from_device_dialog_start_description:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGuardianAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->addIconToChromecastInstructionTextView()V

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_start_from_device_dialog_chromecast_instruction:I

    .line 91
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;->useVrCastingUi(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->inflateNewDialog()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->inflateOldDialog()V

    :goto_0
    return-void
.end method
