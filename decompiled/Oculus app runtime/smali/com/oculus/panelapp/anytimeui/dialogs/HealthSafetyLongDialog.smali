.class public Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "HealthSafetyLongDialog.java"


# static fields
.field private static final COUNTDOWN_START:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCountdown:I

.field private mCountdownTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    .line 23
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdown:I

    .line 24
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->TAG:Ljava/lang/String;

    const-string p2, "HealthSafetyLongDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdown:I

    return p0
.end method

.method static synthetic access$010(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdown:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdownTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->updateCountdownText()V

    return-void
.end method

.method private updateCountdownText()V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->health_safety_long_dialog_callout_counter:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdown:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdownTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 32
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_long_dialog:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->health_safety_long_dialog_callout:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->mCountdownTextView:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->updateCountdownText()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
