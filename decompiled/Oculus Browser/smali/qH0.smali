.class public final LqH0;
.super LSG0;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final y:Ljava/lang/Class;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LqH0;

    sput-object v0, LqH0;->y:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p1, p0, LqH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LqH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCloseContents(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, LqH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LqH0;->x:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, LqH0;->x:Landroid/content/Intent;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    iget-object v0, p0, LqH0;->x:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
