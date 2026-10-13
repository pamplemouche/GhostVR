.class public final synthetic LEJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LGJ0;


# direct methods
.method public constructor <init>(LGJ0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEJ0;->w:LGJ0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LEJ0;->w:LGJ0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "MobileToolbarIdentityDiscTap"

    .line 1
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, LGJ0;->w:Landroid/content/Context;

    const-class v1, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 3
    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    throw v0
.end method
