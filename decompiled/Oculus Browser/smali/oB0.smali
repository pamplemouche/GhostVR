.class public final synthetic LoB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LoB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    .line 1
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    const-string v1, "https://www.google.com/settings/chrome/sync"

    .line 2
    invoke-static {v0, v1}, LGB0;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
