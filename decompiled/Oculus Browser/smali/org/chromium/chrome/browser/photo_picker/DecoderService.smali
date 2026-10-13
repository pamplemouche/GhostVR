.class public Lorg/chromium/chrome/browser/photo_picker/DecoderService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public w:Z

.field public final x:LBx0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lrx0;

    invoke-direct {v0, p0}, Lrx0;-><init>(Lorg/chromium/chrome/browser/photo_picker/DecoderService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/DecoderService;->x:LBx0;

    return-void
.end method

.method public static final synthetic a()V
    .locals 1

    const-string v0, "chrome"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/DecoderService;->x:LBx0;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-static {}, LwT;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, LwT;->a([Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, LZ01;->a:LFW;

    sget-object v1, Lqx0;->w:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->b(LFW;Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(I)V

    .line 6
    invoke-static {}, LJ/N;->M$6vRSQF()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/photo_picker/DecoderService;->w:Z

    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
