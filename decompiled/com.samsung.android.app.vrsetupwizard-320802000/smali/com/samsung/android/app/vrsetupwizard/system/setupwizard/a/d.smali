.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field private e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

.field private f:Z

.field private g:Z

.field private h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

.field private i:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g:Z

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    iput-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->k:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->l:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->j:Ljava/util/HashMap;

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a:I

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c:Landroid/net/Uri;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b:I

    iget p1, p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public a(Landroid/net/Uri;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->i:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->l:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b(Z)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->k:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/e;

    return-object v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b:I

    return-void
.end method

.method a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    return-void
.end method

.method public b(Z)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g:Z

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;-><init>()V

    :cond_0
    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I

    move-result p1

    return p1
.end method

.method d()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a:I

    return v0
.end method

.method e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->i:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->l:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f:Z

    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f:Z

    return-void
.end method

.method m()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    return-void
.end method
