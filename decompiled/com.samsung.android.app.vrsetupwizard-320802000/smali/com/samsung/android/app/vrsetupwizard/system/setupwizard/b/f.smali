.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c:Landroid/content/Context;

    const-string p1, "[CheckOculusPackages]"

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, La/c/b/j;->a()V

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, La/c/b/j;->a()V

    :cond_4
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v6, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    const-string v7, "mb"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v12, 0x0

    invoke-static {v4, v7, v12, v8, v5}, La/g/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    const-wide/16 v13, 0x0

    const/high16 v15, 0x44800000    # 1024.0f

    if-eqz v7, :cond_5

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "mb"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v4, v4, v15

    :goto_2
    mul-float v4, v4, v15

    float-to-long v6, v4

    goto :goto_3

    :cond_5
    const-string v7, "kb"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v4, v7, v12, v8, v5}, La/g/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "kb"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_2

    :cond_6
    move-wide v6, v13

    :goto_3
    cmp-long v4, v6, v13

    if-gtz v4, :cond_7

    return-object v5

    :cond_7
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(J)V

    invoke-virtual {v2, v12}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    iget-object v3, v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "2"

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.oculus.systemdriver"

    invoke-static {v3, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "1"

    const/4 v7, 0x5

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->c:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Utils.getPackageVersion(\u2026STEM_DRIVER_PACKAGE_NAME)"

    invoke-static {v3, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v5, 0x620fbc0

    if-ge v3, v5, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Need to update, Oculus System Driver"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PackageInfo: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v1, La/i;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, La/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-object p2
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;)V
    .locals 1

    const-string v0, "receiverListener"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/g;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageItemDataList"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/at;

    invoke-direct {v0}, Lb/at;-><init>()V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)V

    check-cast v1, Lb/al;

    invoke-virtual {v0, v1}, Lb/at;->a(Lb/al;)Lb/at;

    new-instance v1, Ld/ay;

    invoke-direct {v1}, Ld/ay;-><init>()V

    const-string v2, "https://www2.oculus.com/"

    invoke-virtual {v1, v2}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v1

    invoke-virtual {v0}, Lb/at;->a()Lb/ar;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld/ay;->a(Lb/ar;)Ld/ay;

    move-result-object v0

    invoke-static {}, Ld/a/a/a;->a()Ld/a/a/a;

    move-result-object v1

    check-cast v1, Ld/l;

    invoke-virtual {v0, v1}, Ld/ay;->a(Ld/l;)Ld/ay;

    move-result-object v0

    invoke-virtual {v0}, Ld/ay;->a()Ld/aw;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    invoke-virtual {v0, v1}, Ld/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    const-string v1, "api"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;->a()Ld/g;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;Ljava/util/ArrayList;)V

    check-cast v1, Ld/j;

    invoke-interface {v0, v1}, Ld/g;->a(Ld/j;)V

    return-void
.end method
