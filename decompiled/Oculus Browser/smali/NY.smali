.class public final synthetic LNY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeBackupWatcher;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeBackupWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNY;->a:Lorg/chromium/chrome/browser/ChromeBackupWatcher;

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, LNY;->a:Lorg/chromium/chrome/browser/ChromeBackupWatcher;

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->a(Ljava/lang/String;)V

    return-void
.end method
