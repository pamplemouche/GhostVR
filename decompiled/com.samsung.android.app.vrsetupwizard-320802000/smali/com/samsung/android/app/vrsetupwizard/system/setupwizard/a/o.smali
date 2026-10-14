.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a()V

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "add(...) called on a released ThinDownloadManager."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DownloadRequest cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    const-string v0, "cancelAll() called on a released ThinDownloadManager."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->b()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
