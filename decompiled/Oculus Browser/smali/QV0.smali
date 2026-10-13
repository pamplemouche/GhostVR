.class public LQV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:Ljava/lang/Runnable;

.field public final synthetic y:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQV0;->y:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    iput-boolean p2, p0, LQV0;->w:Z

    iput-object p3, p0, LQV0;->x:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LQV0;->y:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->d:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, LlW0;->a()V

    .line 4
    iget-boolean v0, p0, LQV0;->w:Z

    .line 5
    invoke-static {v0}, LJ/N;->MwoPtAzD(Z)V

    .line 6
    iget-object v0, p0, LQV0;->y:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->d:Z

    .line 8
    :cond_0
    iget-object v0, p0, LQV0;->x:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
