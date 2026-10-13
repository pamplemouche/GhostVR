.class public final synthetic LEB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, LEB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;

    if-eqz p1, :cond_0

    const-string p2, "Signin_Signin_ConfirmCancelAdvancedSyncSettings"

    .line 1
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lz2;->D:Lz2;

    .line 3
    check-cast p1, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 4
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->a(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
