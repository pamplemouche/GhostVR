.class public LUn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lti0;


# instance fields
.field public final w:Lorg/chromium/base/Callback;

.field public x:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LTn0;

    invoke-direct {v0, p0}, LTn0;-><init>(LUn0;)V

    iput-object v0, p0, LUn0;->w:Lorg/chromium/base/Callback;

    .line 3
    iput-object p1, p0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    sget-object p1, Ljo0;->a:Lmo0;

    .line 5
    invoke-virtual {p1, v0}, Lmo0;->a(Lorg/chromium/base/Callback;)Z

    .line 6
    iget-object p1, p0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->M()Lqi0;

    move-result-object p1

    check-cast p1, Lqg0;

    invoke-virtual {p1, p0}, Lqg0;->a(Lvi0;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Ljo0;->a:Lmo0;

    .line 2
    iget-object v1, p0, LUn0;->w:Lorg/chromium/base/Callback;

    invoke-virtual {v0, v1}, Lmo0;->b(Lorg/chromium/base/Callback;)V

    .line 3
    iget-object v0, p0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, LBg0;->M()Lqi0;

    move-result-object v0

    check-cast v0, Lqg0;

    invoke-virtual {v0, p0}, Lqg0;->b(Lvi0;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method
