.class public Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "HealthSafetyDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mStandaloneVRHeadset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->TAG:Ljava/lang/String;

    const-string v0, "HealthSafetyDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->mStandaloneVRHeadset:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 30
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_dialog_container_right_bottom:I

    .line 31
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 32
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_dialog_description_text:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_dialog_button:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 35
    iget-boolean v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->mStandaloneVRHeadset:Z

    if-eqz v3, :cond_0

    .line 37
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_dialog_callout:I

    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 39
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->health_safety_dialog_description_standalone:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 51
    :cond_0
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_dialog:I

    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$2;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->health_safety_dialog_description:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
