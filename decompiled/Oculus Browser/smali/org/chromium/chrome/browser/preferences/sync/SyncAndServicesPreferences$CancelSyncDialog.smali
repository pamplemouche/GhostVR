.class public Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;
.super Ls2;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f140245

    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1301d7

    .line 2
    invoke-virtual {p1, v0}, LO8;->b(I)LO8;

    const v0, 0x7f1301d6

    .line 3
    invoke-virtual {p1, v0}, LO8;->a(I)LO8;

    new-instance v0, LDB0;

    invoke-direct {v0, p0}, LDB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;)V

    const v1, 0x7f13018c

    .line 4
    invoke-virtual {p1, v1, v0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    new-instance v0, LEB0;

    invoke-direct {v0, p0}, LEB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;)V

    const v1, 0x7f1301d5

    .line 5
    invoke-virtual {p1, v1, v0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 6
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method
