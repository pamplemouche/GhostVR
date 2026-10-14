.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# instance fields
.field mTextViewBattery:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDeviceId:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Landroid/bluetooth/BluetoothDevice;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->n:Landroid/content/Context;

    return-object p0
.end method

.method private l()V
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->s:I

    aget v5, v1, v3

    if-gt v4, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewBattery:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v2, v2, v3

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewBattery:Landroid/widget/TextView;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1e
        0x37
        0x50
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x7f0f0031
        0x7f0f002e
        0x7f0f002f
        0x7f0f002d
        0x7f0f0030
    .end array-data

    :array_2
    .array-data 4
        0x7f060024
        0x7f060025
        0x7f060025
        0x7f060025
        0x7f060025
    .end array-data
.end method


# virtual methods
.method public onClickFota()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->s:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(I)Landroid/support/v7/app/s;

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "deviceAddress"

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "checkUpdate"

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "deviceVersion"

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "updateVersion"

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "batteryValue"

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->s:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->n:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onClickRemoveController()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->o:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/s;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0003

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->n:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "deviceAddress"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->k()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerDetailActivity]deviceAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->u:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->u:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->o:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->o:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->a(Ljava/lang/String;)V

    const-string v0, "deviceVersion"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->q:Ljava/lang/String;

    const-string v0, "updateVersion"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->r:Ljava/lang/String;

    const-string v0, "batteryValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->s:I

    const/4 v0, 0x0

    const-string v1, "checkUpdate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->p:I

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->l()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewDeviceId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->p:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewVersion:Landroid/widget/TextView;

    const v0, 0x7f0f0036

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewVersion:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "531"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
