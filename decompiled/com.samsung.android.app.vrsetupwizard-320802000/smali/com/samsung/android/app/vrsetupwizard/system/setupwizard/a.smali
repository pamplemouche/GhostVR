.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

.field private e:I

.field private f:Z

.field private g:Z

.field private final h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;

.field private final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    const-string p1, "[DownloadInstallManager]"

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    invoke-direct {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;-><init>(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/w;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/u;->start()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e:I

    return p0
.end method

.method private final d()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startGettingOculusPackageInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method private final e()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startGettingSamsungPackageInfoForChinaEng"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mContext.resources.getSt\u2026us_vr_app_list_china_eng)"

    invoke-static {v1, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const-string v6, "item"

    invoke-static {v5, v6}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const-string v5, ";"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, La/g/h;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-object v8, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    move-object v7, v5

    move-object v9, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_0

    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    const-string v7, "mContext.packageManager.\u2026ckageInfo(packageName, 0)"

    invoke-static {v6, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(I)V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/h;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/p;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/o;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final f()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v3

    if-ge v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Complete downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    invoke-interface {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->b_()V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " downloading : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "mContext.filesDir"

    invoke-static {v4, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    new-instance v4, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;

    const v5, 0x186a0

    const/16 v6, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x1388

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;-><init>(IIFI)V

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Landroid/net/Uri;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Z)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;

    const/16 v2, 0xdc

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e()V

    return-void
.end method

.method public static final synthetic g(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d()V

    return-void
.end method

.method public static final synthetic h(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->f()V

    return-void
.end method

.method public static final synthetic i(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getPackageListFromServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(IZZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initDownloadInstallManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->f:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->g:Z

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    const-string p3, "com.samsung.android.app.vr.launcher"

    invoke-static {p1, p3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " old VR Launcher installed, remove"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;)V

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;

    const-string v2, ""

    invoke-direct {p1, v0, p3, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b()V

    :cond_0
    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "mContext.resources.getSt\u2026culus_vr_app_list_global)"

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La/a/b;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "mContext.resources.getSt\u2026oculus_vr_app_list_china)"

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La/a/b;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_2

    const-string v0, "com.samsung.android.hmt.vrsystem;Gear VR System;samsung;initial"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->e:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "mContext.resources.getSt\u2026us_vr_app_list_china_eng)"

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "item"

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, La/g/h;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    move-object v3, v0

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->f:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->g:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v4, "mContext.packageManager.\u2026ckageInfo(packageName, 0)"

    invoke-static {v3, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(I)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_7
    :goto_3
    const-string v3, "com.sec.android.app.samsungapps"

    invoke-static {v2, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c()I

    move-result v2

    const v3, 0x18763956

    if-le v2, v3, :cond_8

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->m(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public final a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V
    .locals 2

    const-string v0, "callBack"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addDownloadInstallCallback : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, La/a/h;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageItemDataArrayList"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->c:Ljava/util/ArrayList;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;

    check-cast v1, Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.permission.VRSETUPWIZARD_RECV_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->f()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/o;->a()V

    return-void
.end method

.method public final b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b;)V
    .locals 2

    const-string v0, "callBack"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removeDownloadInstallCallback : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {v0}, La/c/b/r;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, La/i;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p1, v0}, La/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a;->h:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/e;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
