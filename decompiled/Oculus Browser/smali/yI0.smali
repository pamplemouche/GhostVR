.class public LyI0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:LzI0;


# direct methods
.method public constructor <init>(LzI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyI0;->a:LzI0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .line 1
    iget-object v0, p0, LyI0;->a:LzI0;

    .line 2
    iget-object v0, v0, LzI0;->a:LpI0;

    .line 3
    check-cast v0, LrI0;

    .line 4
    iget-object v0, v0, LrI0;->d:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, LyI0;->a:LzI0;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, LzI0;->b:LxI0;

    .line 7
    invoke-virtual {v0}, LzI0;->f()V

    return-void
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onChange should have happened and unregistered this listener."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
