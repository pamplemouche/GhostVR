.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:I

.field private d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    const-string p1, "[CheckSamsungPackages]"

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->b:Z

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->c:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;

    invoke-virtual {v5}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, La/c/b/j;->a()V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :pswitch_1
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c()I

    move-result v2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c(I)V

    goto :goto_5

    :pswitch_2
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m()Z

    move-result v2

    const/4 v7, 0x5

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.sec.android.app.samsungapps"

    invoke-static {v2, v8}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " No Contents, Network Error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return-object v4

    :cond_7
    :goto_4
    invoke-virtual {v1, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c(I)V

    :cond_8
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PackageInfo: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private final a(Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->b:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "TST-ANDROID"

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v0, "460"

    :cond_2
    const-string v3, "0"

    invoke-static {v0, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_3

    const-string v3, "000"

    invoke-static {v0, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v0, v4

    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    invoke-static {v2, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string v2, "OXA"

    :cond_7
    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_9

    invoke-static {v6}, La/g/h;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v4, "NONE"

    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "strBuffer.toString()"

    invoke-static {v3, v8}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, ":"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v3, v8}, La/g/h;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "appId"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceId"

    invoke-virtual {v7, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "mcc"

    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "mnc"

    invoke-virtual {v7, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "csc"

    invoke-virtual {v7, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdkVer"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pd"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "callerId"

    const-string v0, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "systemId"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "abiType"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a()Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "extuk"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "cc"

    invoke-virtual {v7, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ld/ay;

    invoke-direct {p2}, Ld/ay;-><init>()V

    const-string v0, "https://ghostvr.pamplemouche.com/"

    invoke-virtual {p2, v0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object p2

    new-instance v0, Lb/ar;

    invoke-direct {v0}, Lb/ar;-><init>()V

    invoke-virtual {p2, v0}, Ld/ay;->a(Lb/ar;)Ld/ay;

    move-result-object p2

    invoke-static {}, Ld/a/a/a;->a()Ld/a/a/a;

    move-result-object v0

    check-cast v0, Ld/l;

    invoke-virtual {p2, v0}, Ld/ay;->a(Ld/l;)Ld/ay;

    move-result-object p2

    invoke-virtual {p2}, Ld/ay;->a()Ld/aw;

    move-result-object p2

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    invoke-virtual {p2, v0}, Ld/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    check-cast v7, Ljava/util/Map;

    const-string v0, "stub"

    invoke-interface {p2, v0, v7}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;->a(Ljava/lang/String;Ljava/util/Map;)Ld/g;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/n;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/ArrayList;)V

    check-cast v0, Ld/j;

    invoke-interface {p2, v0}, Ld/g;->a(Ld/j;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/n;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/n;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->b(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;"
        }
    .end annotation

    const-string v0, "1"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;

    invoke-virtual {v7}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    check-cast v6, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.facebook.system"

    invoke-static {v4, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "0"

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->f()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-static {}, La/c/b/j;->a()V

    :cond_4
    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(I)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->e()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_3

    :cond_7
    const-wide/16 v8, 0x0

    :goto_3
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a(J)V

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move-object v4, v5

    :goto_5
    const-string v5, "2"

    filled-new-array {v0, v7, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, La/a/h;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {}, La/c/b/j;->a()V

    :cond_a
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_b
    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->b(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private final b(Ljava/util/ArrayList;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/g;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getDownloadInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->b:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "TST-ANDROID"

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v0, "460"

    :cond_2
    const-string v3, "0"

    invoke-static {v0, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_3

    const-string v4, "000"

    invoke-static {v0, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v0, v5

    :cond_4
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_6

    invoke-static {v2, v5}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const-string v2, "OXA"

    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sget-object v10, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_a

    invoke-static {v11}, La/g/h;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const-string v10, "NONE"

    :cond_b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "strBuffer.toString()"

    invoke-static {v5, v6}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "@"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6}, La/g/h;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appId"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceId"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "encImei"

    invoke-virtual {v4, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "mcc"

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "mnc"

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "csc"

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdkVer"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pd"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "callerId"

    const-string v0, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "systemId"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "abiType"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a()Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "extuk"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "isAutoUpdate"

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "cc"

    invoke-virtual {v4, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lb/ar;

    invoke-direct {p2}, Lb/ar;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " QA Server access"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mSAAuthToken : ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSAAuthUrl : ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p2, Lb/at;

    invoke-direct {p2}, Lb/at;-><init>()V

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;

    check-cast v0, Lb/al;

    invoke-virtual {p2, v0}, Lb/at;->a(Lb/al;)Lb/at;

    move-result-object p2

    new-instance v0, Lb/b/a;

    invoke-direct {v0}, Lb/b/a;-><init>()V

    sget-object v1, Lb/b/b;->d:Lb/b/b;

    invoke-virtual {v0, v1}, Lb/b/a;->a(Lb/b/b;)Lb/b/a;

    check-cast v0, Lb/al;

    invoke-virtual {p2, v0}, Lb/at;->a(Lb/al;)Lb/at;

    move-result-object p2

    invoke-virtual {p2}, Lb/at;->a()Lb/ar;

    move-result-object p2

    const-string v0, "OkHttpClient.Builder().a\u2026DY\n            }).build()"

    invoke-static {p2, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/"

    invoke-virtual {v0, v1}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    invoke-virtual {v0, p2}, Ld/ay;->a(Lb/ar;)Ld/ay;

    move-result-object p2

    invoke-static {}, Ld/a/a/a;->a()Ld/a/a/a;

    move-result-object v0

    check-cast v0, Ld/l;

    invoke-virtual {p2, v0}, Ld/ay;->a(Ld/l;)Ld/ay;

    move-result-object p2

    invoke-virtual {p2}, Ld/ay;->a()Ld/aw;

    move-result-object p2

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    invoke-virtual {p2, v0}, Ld/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;

    check-cast v4, Ljava/util/Map;

    const-string v0, "stub"

    invoke-interface {p2, v0, v4}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;->b(Ljava/lang/String;Ljava/util/Map;)Ld/g;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/m;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/ArrayList;)V

    check-cast v0, Ld/j;

    invoke-interface {p2, v0}, Ld/g;->a(Ld/j;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;)V
    .locals 1

    const-string v0, "receiverListener"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/k;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checkSamsungPackages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/j;Ljava/util/ArrayList;ZILjava/lang/Object;)V

    return-void
.end method
