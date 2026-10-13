.class public LuH0;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LvH0;


# direct methods
.method public constructor <init>(LvH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LuH0;->a:LvH0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, LuH0;->a:LvH0;

    .line 3
    iget-object p1, p1, LvH0;->x:LwH0;

    .line 4
    iget-boolean v0, p1, LwH0;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, LwH0;->b:Z

    .line 6
    iget-object p1, p1, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_2
    :goto_0
    return-void
.end method
