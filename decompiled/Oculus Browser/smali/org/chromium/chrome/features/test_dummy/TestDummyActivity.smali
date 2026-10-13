.class public Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;
.super LQ8;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to install module"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_0
    sget-object p1, LAR0;->a:LUT0;

    invoke-virtual {p1}, LUT0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBR0;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, LD2;->onResume()V

    .line 2
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-test-dummy-module"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    sget-object v0, LAR0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, LxR0;

    invoke-direct {v0, p0}, LxR0;-><init>(Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;)V

    .line 6
    sget-object v1, LAR0;->a:LUT0;

    invoke-virtual {v1, v0}, LUT0;->a(LZT0;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;->a(Z)V

    const/4 v0, 0x0

    throw v0
.end method
