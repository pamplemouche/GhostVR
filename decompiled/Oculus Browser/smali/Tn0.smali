.class public final synthetic LTn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LUn0;


# direct methods
.method public constructor <init>(LUn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTn0;->a:LUn0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LTn0;->a:LUn0;

    check-cast p1, Llo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1
    iget p1, p1, Llo0;->a:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    throw v1

    .line 4
    :cond_2
    iget-object p1, v0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    throw v1

    .line 6
    :cond_4
    iget-object p1, v0, LUn0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const v0, 0x7f130358

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 10
    :cond_6
    throw v1
.end method
