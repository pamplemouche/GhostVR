.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->f(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->g(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->h(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->a:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const-string v3, "ERRC"

    const/16 v4, 0x63

    const/4 v5, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v2, v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]Failed to connect QA Store. Contact to Dev team"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "[DownloadInstallActivity][Error] EVENT_ERROR_NOT_ENOUGH_STORAGE"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const v1, 0x7f0f007f

    goto/16 :goto_0

    :cond_2
    const-string v0, "[DownloadInstallActivity][Error] EVENT_ERROR : EVENT_ERROR_INSTALL_FAIL"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "install_error"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->k(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v2, v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v2, v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->r()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->i(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->r()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x10

    const-string v9, ""

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "[DownloadInstallActivity][Error] EVENT_ERROR_CANCELED"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cancel"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const v1, 0x7f0f005f

    goto :goto_0

    :cond_5
    const-string v0, "[DownloadInstallActivity][Error] EVENT_ERROR_OCCURRED"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "network_error"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    const v1, 0x7f0f00d5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->i(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    const-string v7, ""

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->j(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    :goto_2
    return-void
.end method
