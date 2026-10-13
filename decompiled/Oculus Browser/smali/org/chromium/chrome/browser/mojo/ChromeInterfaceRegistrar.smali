.class public Lorg/chromium/chrome/browser/mojo/ChromeInterfaceRegistrar;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static registerMojoInterfaces()V
    .locals 3

    .line 1
    new-instance v0, Lll0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lll0;-><init>(Ljl0;)V

    .line 2
    sget-object v2, LM01;->c:LM01;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, LM01;

    invoke-direct {v2}, LM01;-><init>()V

    sput-object v2, LM01;->c:LM01;

    .line 4
    :cond_0
    sget-object v2, LM01;->c:LM01;

    .line 5
    iget-object v2, v2, LM01;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lkl0;

    invoke-direct {v0, v1}, Lkl0;-><init>(Ljl0;)V

    .line 7
    sget-object v1, LM01;->d:LM01;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, LM01;

    invoke-direct {v1}, LM01;-><init>()V

    sput-object v1, LM01;->d:LM01;

    .line 9
    :cond_1
    sget-object v1, LM01;->d:LM01;

    .line 10
    iget-object v1, v1, LM01;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
