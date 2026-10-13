.class public abstract LYi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqj0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbb;

.field public final c:Lrb;

.field public final d:Lpj0;

.field public e:Ls2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbb;Lpj0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYi0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LYi0;->b:Lbb;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a()Lrb;

    move-result-object p1

    iput-object p1, p0, LYi0;->c:Lrb;

    .line 5
    iput-object p3, p0, LYi0;->d:Lpj0;

    return-void
.end method


# virtual methods
.method public abstract a(LH2;)Ls2;
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LYi0;->c:Lrb;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LYi0;->d:Lpj0;

    invoke-interface {v0}, Lpj0;->a()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 4
    check-cast v0, LD2;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, LYi0;->d:Lpj0;

    invoke-interface {v0}, Lpj0;->a()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, LD2;->D()LH2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, LYi0;->d:Lpj0;

    invoke-interface {v0}, Lpj0;->a()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, LYi0;->a(LH2;)Ls2;

    move-result-object v0

    iput-object v0, p0, LYi0;->e:Ls2;

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, LYi0;->d:Lpj0;

    invoke-interface {v0}, Lpj0;->a()V

    :cond_3
    return-void
.end method
