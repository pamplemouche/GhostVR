.class public Lcom/oculus/horizon/rageshake/RageShakeFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RageShakeFragment.java"


# instance fields
.field mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOkButtonClicked:Z


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/RageShakeFragment;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/RageShakeFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/RageShakeFragment;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReporter;->$ul_$xXXcom_oculus_horizon_rageshake_BugReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/BugReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mOkButtonClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/rageshake/RageShakeFragment;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->initiateBugReport()V

    return-void
.end method

.method static synthetic access$102(Lcom/oculus/horizon/rageshake/RageShakeFragment;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mOkButtonClicked:Z

    return p1
.end method

.method private initiateBugReport()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->setLoading(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    new-instance v2, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;-><init>(Lcom/oculus/horizon/rageshake/RageShakeFragment;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/rageshake/BugReporter;->createReport(Landroid/app/Activity;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 90
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "rage_shake_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomAlertDialog;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/RageShakeFragment;)V

    .line 31
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/oculus/horizon/rageshake/RageShakeFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment$1;-><init>(Lcom/oculus/horizon/rageshake/RageShakeFragment;)V

    .line 49
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/oculus/horizon/R$string;->rage_shake_asking_for_bug_report_title:I

    .line 50
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->rage_shake_asking_for_bug_report_description:I

    .line 51
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mOkButtonClicked:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    invoke-virtual {v0}, Lcom/oculus/horizon/rageshake/BugReporter;->cancelBugReport()V

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 99
    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setLoading(Z)V

    .line 67
    :cond_0
    return-void
.end method
