.class public Lcom/oculus/horizon/rageshake/BugReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BugReportActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBugDescription:Lcom/google/android/material/textfield/TextInputLayout;

.field mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mReport:Lcom/oculus/horizon/rageshake/BugReport;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/BugReportActivity;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/rageshake/BugReportActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/BugReportActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/rageshake/BugReportActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/BugReportActivity;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReporter;->$ul_$xXXcom_oculus_horizon_rageshake_BugReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/BugReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/rageshake/BugReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/rageshake/BugReportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/rageshake/BugReportActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->sendBugReport()V

    return-void
.end method

.method private sendBugReport()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugDescription:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget v0, Lcom/oculus/horizon/R$string;->rage_shake_reporter_description_is_required:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Lcom/oculus/horizon/rageshake/BugReportBuilder;

    invoke-direct {v1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setFrom(Lcom/oculus/horizon/rageshake/BugReport;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setDescription(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->build()Lcom/oculus/horizon/rageshake/BugReport;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/BugReporter;->sendReport(Lcom/oculus/horizon/rageshake/BugReport;)V

    .line 85
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0, p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/BugReportActivity;)V

    .line 41
    sget v0, Lcom/oculus/horizon/R$layout;->bug_report_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->setContentView(I)V

    .line 43
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 44
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 45
    sget v1, Lcom/oculus/horizon/R$string;->rage_shake_reporter_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "report"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/rageshake/BugReport;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->bug_description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugDescription:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_hide_screenshot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    iget-object v1, v1, Lcom/oculus/horizon/rageshake/BugReport;->screenshotUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    sget v0, Lcom/oculus/horizon/R$id;->screenshot:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    sget v0, Lcom/oculus/horizon/R$id;->send_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/rageshake/BugReportActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/rageshake/BugReportActivity$1;-><init>(Lcom/oculus/horizon/rageshake/BugReportActivity;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/oculus/horizon/rageshake/BugReportActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load the screenshot"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mReport:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/BugReporter;->cleanUpReportFolder(Lcom/oculus/horizon/rageshake/BugReport;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportActivity;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    invoke-virtual {v0}, Lcom/oculus/horizon/rageshake/BugReporter;->cancelBugReport()V

    .line 92
    sget-object v0, Lcom/oculus/horizon/rageshake/BugReportActivity;->TAG:Ljava/lang/String;

    const-string v1, "Done with bug report."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReportActivity;->onBackPressed()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
