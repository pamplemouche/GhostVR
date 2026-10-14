.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/n;


# instance fields
.field mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutVRControllerInfo:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mSelectedControllerTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/support/v7/app/az;

.field private r:Landroid/content/Context;

.field private s:Z

.field private t:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    const-string v0, "[ManageControllerActivity]"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->s:Z

    return-void
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/a;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutVRControllerInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mSelectedControllerTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->t:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "529"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutVRControllerInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "530"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->t:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->m()V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->s:Z

    const/high16 v0, 0x24000000

    const-string v1, "batteryValue"

    const-string v2, "updateVersion"

    const-string v3, "deviceVersion"

    const-string v4, "checkUpdate"

    const-string v5, "deviceAddress"

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "checkFirmwareOnly"

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->s:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/s;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/s;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

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

.method protected b(I)V
    .locals 4

    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->t:Landroid/view/Menu;

    const v1, 0x7f080110

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->g()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    const v1, 0x7f0800ff

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(I)V

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/az;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->show()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->q:Landroid/support/v7/app/az;

    invoke-virtual {v0}, Landroid/support/v7/app/az;->dismiss()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/t;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/t;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->b()Landroid/support/v7/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/r;->show()V

    return-void
.end method

.method public onClickPairNewController()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "[ManageControllerActivity]onClickPairNewController"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const-string v1, "0014"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const-string v0, "529"

    goto :goto_0

    :cond_0
    const-string v0, "530"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ManageControllerActivity]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onClickSelectedController()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "[ManageControllerActivity]onClickSelectedController"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const-string v0, "529"

    const-string v1, "0013"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->s:Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->l()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0065

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    const p1, 0x7f0f0048

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->b(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mac_address"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ManageControllerActivity]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09003d

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "529"

    const-string v0, "0015"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->s:Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->l()V

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "[ManageControllerActivity]onResume"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->o()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->setContentView(Landroid/view/View;)V

    return-void
.end method
