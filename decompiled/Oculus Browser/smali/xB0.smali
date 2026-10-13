.class public final synthetic LxB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LxB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LxB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    if-eqz p1, :cond_0

    const-string v0, "Signin_Signin_CancelAdvancedSyncSettings"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(I)V

    .line 3
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
