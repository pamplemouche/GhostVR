.class public Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserRoadBlockSetPINActivity.java"


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

.field private mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)Lcom/oculus/horizon/widget/EditPIN;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->startConfirmPasswordActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)Lcom/oculus/horizon/widget/NumericKeyboard;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

    return-object v0
.end method

.method private startConfirmPasswordActivity()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "extra_pin"

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/EditPIN;->getPIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "extra_user_roadblocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const/16 v1, 0x1389

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x1389

    if-eq p1, v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->setResult(I)V

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V

    .line 40
    sget v0, Lcom/oculus/horizon/R$layout;->roadblock_user_set_pin_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->setContentView(I)V

    .line 42
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 43
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 45
    sget v1, Lcom/oculus/horizon/R$string;->common_create_oculus_pin:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->setTitle(I)V

    .line 46
    sget v1, Lcom/oculus/horizon/R$string;->common_create_oculus_pin:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->pin_row:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EditPIN;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/oculus/horizon/R$id;->numeric_keyboard:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/NumericKeyboard;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$2;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EditPIN;->setOnInputChangedListener(Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_SET_PIN:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 73
    return-void
.end method
