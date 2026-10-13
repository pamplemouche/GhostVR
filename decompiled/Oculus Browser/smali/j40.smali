.class public Lj40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/base/Callback;

.field public final synthetic b:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj40;->b:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    iput-object p2, p0, Lj40;->a:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lj40;->b:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lj40;->a:Lorg/chromium/base/Callback;

    .line 5
    array-length v2, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "share"

    const-string v1, "Share failed -- Received image contains no data."

    .line 6
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, LQD0;

    invoke-direct {v2, v0, p1, v1}, LQD0;-><init>(Landroid/app/Activity;[BLorg/chromium/base/Callback;)V

    sget-object p1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    invoke-virtual {v2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return-void
.end method
