.class public final synthetic LEY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LFY;

.field public final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(LFY;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEY;->a:LFY;

    iput-object p2, p0, LEY;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LEY;->a:LFY;

    iget-object v1, p0, LEY;->b:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, LFY;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
