.class public abstract Lorg/chromium/chrome/browser/AppHooks;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LkY;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/chrome/browser/AppHooks;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/AppHooks;->a:LkY;

    if-nez v0, :cond_0

    new-instance v0, LkY;

    invoke-direct {v0}, LkY;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/AppHooks;->a:LkY;

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/AppHooks;->a:LkY;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x2

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public getOfflinePagesCCTRequestDoneCallback()Lorg/chromium/base/Callback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
