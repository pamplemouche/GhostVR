.class public LS50;
.super LQ40;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    .line 3
    iput-object p1, p0, LS50;->e:Ljava/lang/String;

    const/16 p1, 0x8

    .line 4
    invoke-static {p1}, LP40;->a(I)Z

    move-result p1

    iput-boolean p1, p0, LS50;->a:Z

    const/16 p1, 0x9

    .line 5
    invoke-static {p1}, LP40;->a(I)Z

    move-result p1

    iput-boolean p1, p0, LS50;->b:Z

    .line 6
    iget-object p1, p0, LS50;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, LS50;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, LS50;->c:Z

    .line 8
    iget-object p1, p0, LS50;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LS50;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-boolean v0, p0, LS50;->d:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, LS50;->c:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    check-cast p1, Lk50;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, LS50;->d:Z

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xe

    .line 7
    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LS50;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LS50;->c:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, LS50;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LS50;->d:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
