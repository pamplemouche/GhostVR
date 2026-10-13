.class public Lvl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lyl0;


# direct methods
.method public constructor <init>(Lyl0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvl0;->a:Lyl0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lvl0;->a:Lyl0;

    .line 2
    iget-object v0, v0, Lyl0;->b:Lzl0;

    .line 3
    check-cast v0, LuY;

    .line 4
    iget-object v0, v0, LuY;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lxl0;

    const v1, 0x7f130414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lxl0;-><init>(Ljava/lang/Integer;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https"

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 10
    new-instance v0, Lxl0;

    const v1, 0x7f130413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lxl0;-><init>(Ljava/lang/Integer;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance v1, Lxl0;

    invoke-direct {v1, v0}, Lxl0;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method
