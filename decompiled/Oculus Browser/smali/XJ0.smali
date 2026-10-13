.class public LXJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJ00;


# instance fields
.field public final synthetic a:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXJ0;->a:LkK0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LXJ0;->a:LkK0;

    .line 2
    iget-object v0, v0, LkK0;->A:LfL0;

    invoke-virtual {v0}, LfL0;->a()Lorg/chromium/chrome/browser/toolbar/MenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean p1, v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->A:Z

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->b()V

    .line 5
    :cond_0
    iget-object v0, p0, LXJ0;->a:LkK0;

    .line 6
    iget-object v1, v0, LkK0;->a0:LOc0;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget p1, v0, LkK0;->e0:I

    .line 8
    invoke-virtual {v1, p1}, LOc0;->b(I)I

    move-result p1

    .line 9
    iput p1, v0, LkK0;->e0:I

    goto :goto_0

    .line 10
    :cond_2
    iget p1, v0, LkK0;->e0:I

    .line 11
    invoke-virtual {v1, p1}, LOc0;->a(I)V

    :goto_0
    return-void
.end method
