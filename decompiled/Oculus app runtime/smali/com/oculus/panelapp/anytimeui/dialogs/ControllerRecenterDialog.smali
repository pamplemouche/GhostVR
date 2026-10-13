.class public Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "ControllerRecenterDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOptOut:Z

.field private final mStandaloneVRHeadset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mOptOut:Z

    .line 26
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->TAG:Ljava/lang/String;

    const-string v0, "ControllerRecenterDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mStandaloneVRHeadset:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mOptOut:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mOptOut:Z

    return p1
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 37
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->controller_recenter_dialog_description_text:I

    .line 38
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->controller_recenter_dialog_container:I

    .line 40
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    iget-boolean v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mStandaloneVRHeadset:Z

    if-eqz v3, :cond_0

    .line 43
    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->controller_recenter_dialog_background_standalone:I

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->controller_recenter_dialog_description_standalone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 47
    :cond_0
    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->controller_recenter_dialog_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->controller_recenter_dialog_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :goto_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->controller_recenter_dialog_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->controller_recenter_dialog_checkbox:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 65
    iget-boolean v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->mOptOut:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
