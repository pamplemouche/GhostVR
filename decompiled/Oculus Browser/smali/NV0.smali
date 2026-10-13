.class public LNV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LNV0;->x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    iput-boolean p2, p0, LNV0;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LNV0;->x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    .line 3
    iget-boolean v1, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->e:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, LNV0;->w:Z

    .line 5
    iput v1, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 6
    invoke-virtual {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, LNV0;->x:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(I)V

    :cond_1
    return-void
.end method
