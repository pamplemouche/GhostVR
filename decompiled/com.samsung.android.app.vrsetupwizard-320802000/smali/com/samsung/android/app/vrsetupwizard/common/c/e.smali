.class public Lcom/samsung/android/app/vrsetupwizard/common/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e:Z

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b()Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b:Ljava/io/File;

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e:Z

    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c:Ljava/lang/String;

    return-object v0
.end method
