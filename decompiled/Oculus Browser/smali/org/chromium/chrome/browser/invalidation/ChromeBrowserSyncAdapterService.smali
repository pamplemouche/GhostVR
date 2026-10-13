.class public Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static w:LTh0;

.field public static final x:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->x:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)LTh0;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->w:LTh0;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v1

    invoke-virtual {v1}, LHh0;->c()V

    .line 4
    new-instance v1, LTh0;

    invoke-direct {v1, p1}, LTh0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->w:LTh0;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p1, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->w:LTh0;

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/invalidation/ChromeBrowserSyncAdapterService;->a(Landroid/content/Context;)LTh0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
