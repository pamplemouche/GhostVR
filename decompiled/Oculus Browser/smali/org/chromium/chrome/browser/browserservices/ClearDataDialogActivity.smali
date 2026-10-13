.class public Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;
.super LQ8;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "org.chromium.chrome.extra.app_uninstalled"

    .line 2
    invoke-static {v0, v2, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    invoke-static {}, LKY;->c()LR60;

    move-result-object v2

    check-cast v2, LY60;

    invoke-virtual {v2}, LY60;->i()Le20;

    move-result-object v2

    if-nez p1, :cond_2

    .line 4
    iget-object v3, v2, Le20;->b:LUg0;

    .line 5
    iget-boolean v3, v3, LUg0;->f:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "twa_dialog_number_of_dismissals_on_uninstall"

    goto :goto_0

    :cond_1
    const-string p1, "twa_dialog_number_of_dismissals_on_clear_data"

    .line 6
    :goto_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, v2, Le20;->a:LXR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v4, LYR;

    :try_start_1
    invoke-virtual {v4}, LYR;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcy0;

    iget-object v2, v2, Le20;->a:LXR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v2, LYR;

    :try_start_2
    invoke-virtual {v2}, LYR;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy0;

    .line 8
    invoke-virtual {v2, p1, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9
    iget-object v2, v4, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 10
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-static {v3, v0}, Le20;->a(Ljava/lang/Throwable;LqU;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 14
    invoke-static {p1, v0}, Le20;->a(Ljava/lang/Throwable;LqU;)V

    throw v1

    .line 15
    :cond_2
    :goto_1
    iget-object v1, v2, Le20;->b:LUg0;

    new-instance v3, Ld20;

    invoke-direct {v3, v2, p1, v0}, Ld20;-><init>(Le20;ZZ)V

    invoke-virtual {v1, v3}, LUg0;->a(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LQ8;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const v0, 0x10302d2

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "org.chromium.chrome.extra.app_name"

    .line 4
    invoke-static {v1, v2}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f130626

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130625

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1304f2

    new-instance v1, La20;

    invoke-direct {v1, p0}, La20;-><init>(Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130624

    new-instance v1, Lb20;

    invoke-direct {v1, p0}, Lb20;-><init>(Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lc20;

    invoke-direct {v0, p0}, Lc20;-><init>(Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
