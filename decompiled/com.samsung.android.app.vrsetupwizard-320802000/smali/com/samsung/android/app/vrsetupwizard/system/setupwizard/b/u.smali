.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;
.super Ljava/lang/Thread;


# instance fields
.field public a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    return-object p0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/n;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "[InstallTransaction][Error] Exception at singing chcek : "

    const-string v1, "[InstallTransaction]Install Transaction run()"

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "[InstallTransaction]APK Verification : Pass"

    const-string v3, "[InstallTransaction][Error] APK Verification : Fail"

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->a()Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->s()Ljava/lang/String;

    move-result-object v1

    const-string v4, "oculus"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/c/j;

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->b:Landroid/content/Context;

    const-string v5, "com.samsung.android.hmt.vrsvc"

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/app/vrsetupwizard/common/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[InstallTransaction][Error] Oculus APK is not in white list : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/v;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/v;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;->a(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->interrupt()V

    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;->a(Ljava/lang/String;)V

    return-void
.end method
