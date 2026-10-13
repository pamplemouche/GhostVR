.class public Lyk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpk0;


# instance fields
.field public final synthetic w:LDk0;


# direct methods
.method public constructor <init>(LDk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyk0;->w:LDk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyk0;->w:LDk0;

    .line 2
    invoke-virtual {v0}, LDk0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, LDk0;->a(I)I

    move-result p1

    const-string v0, "Media.Session.Pause"

    const/4 v1, 0x3

    .line 4
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    iget-object p1, p0, Lyk0;->w:LDk0;

    iget-object p1, p1, LDk0;->h:LP01;

    .line 6
    iget-object p1, p1, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-wide v0, p1, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 8
    invoke-static {v0, v1, p1}, LJ/N;->M5LC9gX$(JLjava/lang/Object;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 9
    iget-object v0, p0, Lyk0;->w:LDk0;

    iget-object v0, v0, LDk0;->h:LP01;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, v0, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    .line 11
    iget-wide v1, v0, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 12
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->MK7btVfc(JLjava/lang/Object;J)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyk0;->w:LDk0;

    .line 2
    invoke-virtual {v0}, LDk0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, LDk0;->a(I)I

    move-result p1

    const-string v0, "Media.Session.Stop"

    const/4 v1, 0x3

    .line 4
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    iget-object p1, p0, Lyk0;->w:LDk0;

    iget-object p1, p1, LDk0;->h:LP01;

    .line 6
    iget-object p1, p1, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    if-eqz p1, :cond_1

    .line 7
    iget-wide v0, p1, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 8
    invoke-static {v0, v1, p1}, LJ/N;->MW5s36cs(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object v0, p0, Lyk0;->w:LDk0;

    iget-object v0, v0, LDk0;->h:LP01;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    .line 3
    iget-wide v1, v0, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 4
    invoke-static {v1, v2, v0, p1}, LJ/N;->MAqRqyJa(JLjava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyk0;->w:LDk0;

    .line 2
    invoke-virtual {v0}, LDk0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, LDk0;->a(I)I

    move-result p1

    const-string v0, "Media.Session.Play"

    const/4 v1, 0x3

    .line 4
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    iget-object p1, p0, Lyk0;->w:LDk0;

    iget-object p1, p1, LDk0;->h:LP01;

    .line 6
    iget-object p1, p1, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-wide v0, p1, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 8
    invoke-static {v0, v1, p1}, LJ/N;->MlezJYnz(JLjava/lang/Object;)V

    return-void
.end method
