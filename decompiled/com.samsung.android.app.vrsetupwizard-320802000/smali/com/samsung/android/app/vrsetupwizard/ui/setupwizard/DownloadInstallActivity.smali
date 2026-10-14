.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

.field private D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

.field private E:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

.field private m:Landroid/content/Context;

.field mButtonCancel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mButtonInstall:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mContentLinearLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mDescriptionTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mDownloadProgressIndicator:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutAppList:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutDescriptionLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutInstallButton:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutProgress:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mScrollViewLayout:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCancel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCurrentStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDownloadInstallStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

.field private r:Landroid/support/v7/app/az;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/app/NotificationManager;

.field private x:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->o:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->t:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->v:Z

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->E:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    return-object p0
.end method

.method private b(J)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z:J

    add-long v1, v1, p1

    iget-object v3, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewCurrentStatus:Landroid/widget/TextView;

    const v4, 0x7f0f0060

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.1f"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    long-to-double v8, v1

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/%.1f"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v12, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewDownloadInstallStatus:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v5, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x64

    mul-long v1, v1, v7

    div-long/2addr v1, v5

    long-to-int v2, v1

    move v14, v2

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    iget-object v1, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v1, v14}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget-object v10, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->x:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w:Landroid/app/NotificationManager;

    const/16 v3, 0x63

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->v:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->x:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic k(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method private n()V
    .locals 5

    const-string v0, "[DownloadInstallActivity]initialize()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "first_setup_done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->t:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v2, "vrsetupwizard_run_reason"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f005c

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->k(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f005b

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->x:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w:Landroid/app/NotificationManager;

    return-void
.end method

.method private o()V
    .locals 4

    const-string v0, "[DownloadInstallActivity]resetData()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewDownloadInstallStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/d;->a(Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z:J

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->A:I

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    return-void
.end method

.method private p()V
    .registers 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->c_()V

    return-void
.end method


.method private q()V
    .locals 4

    const-string v0, "[DownloadInstallActivity]startVRSetupWizardProcess()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "default_scenario"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->b(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x101

    if-eq v0, v2, :cond_4

    const/16 v2, 0x102

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/16 v2, 0x1cc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r()V

    return-void

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadInstallActivity] getMCC failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", run MCCTransaction"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b()V

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r()V

    return-void
.end method

.method private r()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->x()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    iget-boolean v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->t:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(IZZ)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a()V

    return-void
.end method

.method private s()V
    .locals 6

    const-string v0, "[DownloadInstallActivity]Show Data using Dialog popup"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/app/s;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f10026e

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->f(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x104000a

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->l(Landroid/content/Context;)Z

    move-result v1

    const v4, 0x7f0f007d

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Wi-Fi"

    const-string v5, "WLAN"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Alert for using Data Network"

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->d(Ljava/lang/String;)V

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f0013

    goto :goto_1

    :cond_2
    const v1, 0x7f0f0012

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    goto :goto_2

    :cond_3
    const-string v1, "Alert for using Roaming Data Network"

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->d(Ljava/lang/String;)V

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    const v1, 0x7f0f0077

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    const v1, 0x7f0f0022

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/i;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    :goto_2
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/j;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    :goto_3
    invoke-virtual {v0, v3}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    return-void
.end method

.method private t()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->v()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private u()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private x()V
    .locals 3

    const-string v0, "[DownloadInstallActivity]startUpdateCheckProgress()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/support/v7/app/az;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->show()V

    :cond_1
    return-void
.end method

.method private y()V
    .locals 1

    const-string v0, "[DownloadInstallActivity]stopUpdateCheckProgress()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->dismiss()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewCancel:Landroid/widget/TextView;

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewCurrentStatus:Landroid/widget/TextView;

    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->A:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewDownloadInstallStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->x:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w:Landroid/app/NotificationManager;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->o:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->b(J)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    const-string p1, "[DownloadInstallActivity]onFinishDownloadOnePackage"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z:J

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "[DownloadInstallActivity]onFinishPackageInfoSet"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->v:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadInstallActivity][Info_PD]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->A:I

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->A:I

    if-nez p1, :cond_2

    const-string p1, "[DownloadInstallActivity]No apps for install"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->c_()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/d;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m()V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadInstallActivity]Storage Check : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y:J

    const-wide/16 v6, 0x5

    mul-long v2, v2, v6

    div-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_3

    const/16 p1, 0xfa

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y()V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->o:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->t()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u()V

    :goto_1
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadInstallActivity]onFinishPackageInstall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->q:Lcom/samsung/android/app/vrsetupwizard/common/b/d;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/d;->a(Ljava/util/ArrayList;)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z()V

    :cond_2
    return-void
.end method

.method public b_()V
    .locals 1

    const-string v0, "[DownloadInstallActivity]onFinishDownloadAllPackages"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->z()V

    return-void
.end method

.method public b_(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadInstallActivity]onFinishMccTransaction() mcc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x1cc

    if-ne p1, v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->r()V

    return-void
.end method

.method public c_()V
    .locals 5

    const-string v0, "[DownloadInstallActivity]onFinishInstallAllPackages"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;I)V

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    const/high16 v1, 0x20000000

    const-string v2, "[DownloadInstallActivity]"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->finish()V

    return-void
.end method

.method public m()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mContentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    if-le v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    if-ge v2, v5, :cond_2

    move v2, v5

    :cond_2
    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getWidth()I

    move-result v2

    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-interface {v0, v5, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v6, v2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadInstallActivity]sHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mScrollViewLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-le v6, v1, :cond_4

    const-string v2, "[DownloadInstallActivity]Adjust Scrollview Height to maximum"

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "[DownloadInstallActivity]Adjust Scrollview Height to following contents\' height"

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v1, -0x2

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mScrollViewLayout:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mScrollViewLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "[DownloadInstallActivity]Sing in success"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c()V

    goto :goto_0

    :cond_0
    const-string p1, "[DownloadInstallActivity]Sign in failed "

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const/4 p2, 0x0

    const-string p3, "To connect QA server, you must sign in with Samsung Account"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickCancel()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "506"

    const-string v1, "0028"

    goto :goto_0

    :cond_0
    const-string v0, "503"

    const-string v1, "0026"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DownloadInstallActivity][Action] CANCEL Button Clicked"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b()V

    return-void
.end method

.method public onClickInstall()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "[DownloadInstallActivity][Action] INSTALL Button Clicked"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "506"

    const-string v1, "0027"

    goto :goto_0

    :cond_0
    const-string v0, "503"

    const-string v1, "0025"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->o:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->o()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->t()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006f

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const-string v0, "[SetupWizard] DownloadInstallActivity onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->b(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "[DownloadInstallActivity]DownloadInstallActivity for Update"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "is_using_data_network"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u:Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    if-ne p1, v1, :cond_2

    const-string p1, "[DownloadInstallActivity]QA mode"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->v:Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->n()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->setExpanded(Z)V

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-direct {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->E:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->D:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "[DownloadInstallActivity]onDestroy"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->s:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->y()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->w:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->C:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->B:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->finishAndRemoveTask()V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->m:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "is_using_data_network"

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->finish()V

    const p1, 0x7f010021

    const v0, 0x7f010024

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->moveTaskToBack(Z)Z

    :goto_1
    return p2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "506"

    goto :goto_0

    :cond_0
    const-string v0, "503"

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
