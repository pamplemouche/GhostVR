.class public final synthetic LSE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSE0;->a:LjF0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LSE0;->a:LjF0;

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, p1, v1}, Lz2;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lz2;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method
