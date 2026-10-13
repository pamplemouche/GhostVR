.class public final synthetic LvB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LvB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LvB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 1
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    const-string v1, "SyncPreferences_ManageGoogleAccountClicked"

    .line 2
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    const-string v1, "https://myaccount.google.com/smartlink/home"

    .line 3
    invoke-static {v0, v1}, LGB0;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
