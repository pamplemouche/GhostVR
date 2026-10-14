.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/n;


# instance fields
.field private A:Z

.field private B:J

.field private C:I

.field private D:Ljava/lang/Runnable;

.field private E:Z

.field private F:Landroid/os/Handler;

.field private G:J

.field mLayoutLatest:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutUpdateAvailable:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutUpdating:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressBar:Landroid/support/v7/widget/SeslProgressBar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTvDeviceVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTvUpdateVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Landroid/content/Context;

.field private r:Landroid/app/NotificationManager;

.field private s:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->n:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->o:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    const-wide/16 v2, 0x4e20

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->B:J

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->D:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->E:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->G:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->G:J

    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->G:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->B:J

    return-wide v0
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method private c(I)V
    .locals 12

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->s:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x10

    move v9, p1

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->r:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->o()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->r:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->E:Z

    return p0
.end method

.method static synthetic k(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->t:I

    return p0
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->t:I

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mProgressBar:Landroid/support/v7/widget/SeslProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mProgressBar:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mTvDeviceVersion:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mTvUpdateVersion:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->u:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->m()V

    return-void
.end method

.method private m()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutLatest:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdateAvailable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdating:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutLatest:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdateAvailable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutLatest:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdateAvailable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdating:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private n()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/h;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/i;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->k()V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerFotaActivity]onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "[ControllerFotaActivity]EVENT_CODE_GATT_FIRMWARE_CONNECTION_ERROR"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->o()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerFotaActivity]onGattConnectionStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "newState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    :cond_1
    return-void
.end method

.method public a_(I)V
    .locals 0

    return-void
.end method

.method public a_(Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/app/bn;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->z:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    if-eqz v0, :cond_2

    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    const-string v2, "deviceAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->x:Ljava/lang/String;

    const-string v2, "deviceVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->x:Ljava/lang/String;

    const-string v2, "updateVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->y:Ljava/lang/String;

    const-string v2, "batteryValue"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    const-string v2, "checkUpdate"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->u:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010024

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClickButtonUpdate()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0057

    invoke-virtual {v0, v2}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    const v2, 0x7f0f0039

    invoke-virtual {v0, v2}, Landroid/support/v7/app/s;->b(I)Landroid/support/v7/app/s;

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/app/vrsetupwizard/ui/controller/g;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->D:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->A:Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->C:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->m()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "[ControllerFotaActivity]onCreate"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const p1, 0x7f0c0004

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    const p1, 0x7f0f0044

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->b(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "deviceAddress"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "checkUpdate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->u:I

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, ""

    const-string v2, "deviceVersion"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "updateVersion"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "batteryValue"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "checkFirmwareOnly"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->z:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerFotaActivity]deviceAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerFotaActivity]checkUpdate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerFotaActivity]deviceVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerFotaActivity]updateVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerFotaActivity]batteryValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->r:Landroid/app/NotificationManager;

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->s:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->l()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->m()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onDestroy()V

    const-string v0, "[ControllerFotaActivity]onDestroy"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->r:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[ControllerFotaActivity]onKeyDown()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->n()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->n()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onPause()V

    const-string v0, "[ControllerFotaActivity]onPause"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "[ControllerFotaActivity]onResume"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return-void
.end method
